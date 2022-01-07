
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct otpc_priv {scalar_t__ base; TYPE_2__* map; int dev; TYPE_1__* config; } ;
struct TYPE_4__ {int otpc_row_size; scalar_t__* data_r_offset; } ;
struct TYPE_3__ {unsigned int word_size; } ;


 int EIO ;
 int OTPC_CMD_READ ;
 int OTPC_STAT_CMD_DONE ;
 int dev_err (int ,char*,int) ;
 int poll_cpu_status (scalar_t__,int ) ;
 int readl (scalar_t__) ;
 int reset_start_bit (scalar_t__) ;
 int set_command (scalar_t__,int ) ;
 int set_cpu_address (scalar_t__,int ) ;
 int set_start_bit (scalar_t__) ;

__attribute__((used)) static int bcm_otpc_read(void *context, unsigned int offset, void *val,
 size_t bytes)
{
 struct otpc_priv *priv = context;
 u32 *buf = val;
 u32 bytes_read;
 u32 address = offset / priv->config->word_size;
 int i, ret;

 for (bytes_read = 0; bytes_read < bytes;) {
  set_command(priv->base, OTPC_CMD_READ);
  set_cpu_address(priv->base, address++);
  set_start_bit(priv->base);
  ret = poll_cpu_status(priv->base, OTPC_STAT_CMD_DONE);
  if (ret) {
   dev_err(priv->dev, "otp read error: 0x%x", ret);
   return -EIO;
  }

  for (i = 0; i < priv->map->otpc_row_size; i++) {
   *buf++ = readl(priv->base +
     priv->map->data_r_offset[i]);
   bytes_read += sizeof(*buf);
  }

  reset_start_bit(priv->base);
 }

 return 0;
}
