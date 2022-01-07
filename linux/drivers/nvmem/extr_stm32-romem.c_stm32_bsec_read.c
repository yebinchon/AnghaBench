
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int size; struct device* dev; } ;
struct stm32_romem_priv {scalar_t__ base; TYPE_1__ cfg; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ STM32MP15_BSEC_DATA0 ;
 int STM32MP15_BSEC_NUM_LOWER ;
 int STM32_SMC_READ_SHADOW ;
 int dev_err (struct device*,char*,int,int) ;
 int memcpy (int *,int *,int) ;
 int min (size_t,size_t) ;
 int readl_relaxed (scalar_t__) ;
 int rounddown (unsigned int,int) ;
 int roundup (size_t,int) ;
 int stm32_bsec_smc (int ,int,int ,int*) ;

__attribute__((used)) static int stm32_bsec_read(void *context, unsigned int offset, void *buf,
      size_t bytes)
{
 struct stm32_romem_priv *priv = context;
 struct device *dev = priv->cfg.dev;
 u32 roffset, rbytes, val;
 u8 *buf8 = buf, *val8 = (u8 *)&val;
 int i, j = 0, ret, skip_bytes, size;


 roffset = rounddown(offset, 4);
 skip_bytes = offset & 0x3;
 rbytes = roundup(bytes + skip_bytes, 4);

 if (roffset + rbytes > priv->cfg.size)
  return -EINVAL;

 for (i = roffset; (i < roffset + rbytes); i += 4) {
  u32 otp = i >> 2;

  if (otp < STM32MP15_BSEC_NUM_LOWER) {

   val = readl_relaxed(
    priv->base + STM32MP15_BSEC_DATA0 + i);
  } else {
   ret = stm32_bsec_smc(STM32_SMC_READ_SHADOW, otp, 0,
          &val);
   if (ret) {
    dev_err(dev, "Can't read data%d (%d)\n", otp,
     ret);
    return ret;
   }
  }

  if (skip_bytes)
   size = min(bytes, (size_t)(4 - skip_bytes));
  else
   size = min(bytes, (size_t)4);
  memcpy(&buf8[j], &val8[skip_bytes], size);
  bytes -= size;
  j += size;
  skip_bytes = 0;
 }

 return 0;
}
