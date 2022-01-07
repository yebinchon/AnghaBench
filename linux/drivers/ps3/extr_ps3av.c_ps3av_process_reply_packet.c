
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ps3av_send_hdr {int dummy; } ;
struct ps3av_reply_hdr {scalar_t__ version; int size; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int core; } ;


 int EFAULT ;
 int PS3AV_HDR_SIZE ;
 scalar_t__ PS3AV_VERSION ;
 int dev_dbg (int *,char*,scalar_t__) ;
 int memcpy (struct ps3av_send_hdr*,struct ps3av_reply_hdr const*,int) ;
 TYPE_2__* ps3av ;

__attribute__((used)) static int ps3av_process_reply_packet(struct ps3av_send_hdr *cmd_buf,
          const struct ps3av_reply_hdr *recv_buf,
          int user_buf_size)
{
 int return_len;

 if (recv_buf->version != PS3AV_VERSION) {
  dev_dbg(&ps3av->dev->core, "reply_packet invalid version:%x\n",
   recv_buf->version);
  return -EFAULT;
 }
 return_len = recv_buf->size + PS3AV_HDR_SIZE;
 if (return_len > user_buf_size)
  return_len = user_buf_size;
 memcpy(cmd_buf, recv_buf, return_len);
 return 0;
}
