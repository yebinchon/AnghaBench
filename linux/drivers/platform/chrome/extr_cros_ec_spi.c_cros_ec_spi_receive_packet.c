
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ec_host_response {int data_len; } ;
struct cros_ec_device {int din_size; scalar_t__* din; int dev; } ;


 int BUG_ON (int) ;
 int EBADMSG ;
 int EC_MSG_DEADLINE_MS ;
 int EC_MSG_PREAMBLE_COUNT ;
 scalar_t__ EC_SPI_FRAME_START ;
 int EMSGSIZE ;
 int ETIMEDOUT ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_warn (int ,char*) ;
 unsigned long jiffies ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 int min (int,int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int receive_n_bytes (struct cros_ec_device*,scalar_t__*,int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int cros_ec_spi_receive_packet(struct cros_ec_device *ec_dev,
          int need_len)
{
 struct ec_host_response *response;
 u8 *ptr, *end;
 int ret;
 unsigned long deadline;
 int todo;

 BUG_ON(ec_dev->din_size < EC_MSG_PREAMBLE_COUNT);


 deadline = jiffies + msecs_to_jiffies(EC_MSG_DEADLINE_MS);
 while (1) {
  unsigned long start_jiffies = jiffies;

  ret = receive_n_bytes(ec_dev,
          ec_dev->din,
          EC_MSG_PREAMBLE_COUNT);
  if (ret < 0)
   return ret;

  ptr = ec_dev->din;
  for (end = ptr + EC_MSG_PREAMBLE_COUNT; ptr != end; ptr++) {
   if (*ptr == EC_SPI_FRAME_START) {
    dev_dbg(ec_dev->dev, "msg found at %zd\n",
     ptr - ec_dev->din);
    break;
   }
  }
  if (ptr != end)
   break;






  if (time_after(start_jiffies, deadline)) {
   dev_warn(ec_dev->dev, "EC failed to respond in time\n");
   return -ETIMEDOUT;
  }
 }





 todo = end - ++ptr;
 BUG_ON(todo < 0 || todo > ec_dev->din_size);
 todo = min(todo, need_len);
 memmove(ec_dev->din, ptr, todo);
 ptr = ec_dev->din + todo;
 dev_dbg(ec_dev->dev, "need %d, got %d bytes from preamble\n",
  need_len, todo);
 need_len -= todo;


 if (todo < sizeof(*response)) {
  ret = receive_n_bytes(ec_dev, ptr, sizeof(*response) - todo);
  if (ret < 0)
   return -EBADMSG;
  ptr += (sizeof(*response) - todo);
  todo = sizeof(*response);
 }

 response = (struct ec_host_response *)ec_dev->din;


 if (response->data_len > ec_dev->din_size)
  return -EMSGSIZE;


 while (need_len > 0) {






  todo = min(need_len, 256);
  dev_dbg(ec_dev->dev, "loop, todo=%d, need_len=%d, ptr=%zd\n",
   todo, need_len, ptr - ec_dev->din);

  ret = receive_n_bytes(ec_dev, ptr, todo);
  if (ret < 0)
   return ret;

  ptr += todo;
  need_len -= todo;
 }

 dev_dbg(ec_dev->dev, "loop done, ptr=%zd\n", ptr - ec_dev->din);

 return 0;
}
