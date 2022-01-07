
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ocotp_priv {int nvmem_ipc; TYPE_1__* data; } ;
struct TYPE_2__ {int nregs; scalar_t__ devtype; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IMX8QXP ;
 int imx_sc_misc_otp_fuse_read (int ,int,int*) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int memcpy (void*,int *,size_t) ;
 int round_up (unsigned int,int) ;

__attribute__((used)) static int imx_scu_ocotp_read(void *context, unsigned int offset,
         void *val, size_t bytes)
{
 struct ocotp_priv *priv = context;
 u32 count, index, num_bytes;
 u32 *buf;
 void *p;
 int i, ret;

 index = offset >> 2;
 num_bytes = round_up((offset % 4) + bytes, 4);
 count = num_bytes >> 2;

 if (count > (priv->data->nregs - index))
  count = priv->data->nregs - index;

 p = kzalloc(num_bytes, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 buf = p;

 for (i = index; i < (index + count); i++) {
  if (priv->data->devtype == IMX8QXP) {
   if ((i > 271) && (i < 544)) {
    *buf++ = 0;
    continue;
   }
  }

  ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
  if (ret) {
   kfree(p);
   return ret;
  }
  buf++;
 }

 memcpy(val, (u8 *)p + offset % 4, bytes);

 kfree(p);

 return 0;
}
