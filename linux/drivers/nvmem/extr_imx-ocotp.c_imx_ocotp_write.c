
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ocotp_priv {int clk; int dev; scalar_t__ base; TYPE_2__* params; TYPE_1__* config; } ;
struct TYPE_4__ {unsigned int bank_address_words; int (* set_timing ) (struct ocotp_priv*) ;} ;
struct TYPE_3__ {size_t word_size; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ IMX_OCOTP_ADDR_CTRL ;
 scalar_t__ IMX_OCOTP_ADDR_CTRL_SET ;
 scalar_t__ IMX_OCOTP_ADDR_DATA0 ;
 scalar_t__ IMX_OCOTP_ADDR_DATA1 ;
 scalar_t__ IMX_OCOTP_ADDR_DATA2 ;
 scalar_t__ IMX_OCOTP_ADDR_DATA3 ;
 int IMX_OCOTP_BM_CTRL_ADDR ;
 int IMX_OCOTP_BM_CTRL_REL_SHADOWS ;
 int IMX_OCOTP_WR_UNLOCK ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int imx_ocotp_clr_err_if_set (scalar_t__) ;
 int imx_ocotp_wait_for_busy (scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocotp_mutex ;
 int readl (scalar_t__) ;
 int stub1 (struct ocotp_priv*) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int imx_ocotp_write(void *context, unsigned int offset, void *val,
      size_t bytes)
{
 struct ocotp_priv *priv = context;
 u32 *buf = val;
 int ret;

 u32 ctrl;
 u8 waddr;
 u8 word = 0;


 if ((bytes != priv->config->word_size) ||
     (offset % priv->config->word_size))
  return -EINVAL;

 mutex_lock(&ocotp_mutex);

 ret = clk_prepare_enable(priv->clk);
 if (ret < 0) {
  mutex_unlock(&ocotp_mutex);
  dev_err(priv->dev, "failed to prepare/enable ocotp clk\n");
  return ret;
 }


 priv->params->set_timing(priv);







 ret = imx_ocotp_wait_for_busy(priv->base, 0);
 if (ret < 0) {
  dev_err(priv->dev, "timeout during timing setup\n");
  goto write_end;
 }
 if (priv->params->bank_address_words != 0) {





  offset = offset / priv->config->word_size;
  waddr = offset / priv->params->bank_address_words;
  word = offset & (priv->params->bank_address_words - 1);
 } else {





  waddr = offset / 4;
 }

 ctrl = readl(priv->base + IMX_OCOTP_ADDR_CTRL);
 ctrl &= ~IMX_OCOTP_BM_CTRL_ADDR;
 ctrl |= waddr & IMX_OCOTP_BM_CTRL_ADDR;
 ctrl |= IMX_OCOTP_WR_UNLOCK;

 writel(ctrl, priv->base + IMX_OCOTP_ADDR_CTRL);
 if (priv->params->bank_address_words != 0) {

  switch (word) {
  case 0:
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA1);
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA2);
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA3);
   writel(*buf, priv->base + IMX_OCOTP_ADDR_DATA0);
   break;
  case 1:
   writel(*buf, priv->base + IMX_OCOTP_ADDR_DATA1);
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA2);
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA3);
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA0);
   break;
  case 2:
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA1);
   writel(*buf, priv->base + IMX_OCOTP_ADDR_DATA2);
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA3);
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA0);
   break;
  case 3:
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA1);
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA2);
   writel(*buf, priv->base + IMX_OCOTP_ADDR_DATA3);
   writel(0, priv->base + IMX_OCOTP_ADDR_DATA0);
   break;
  }
 } else {

  writel(*buf, priv->base + IMX_OCOTP_ADDR_DATA0);
 }
 ret = imx_ocotp_wait_for_busy(priv->base, 0);
 if (ret < 0) {
  if (ret == -EPERM) {
   dev_err(priv->dev, "failed write to locked region");
   imx_ocotp_clr_err_if_set(priv->base);
  } else {
   dev_err(priv->dev, "timeout during data write\n");
  }
  goto write_end;
 }







 udelay(2);


 writel(IMX_OCOTP_BM_CTRL_REL_SHADOWS,
        priv->base + IMX_OCOTP_ADDR_CTRL_SET);
 ret = imx_ocotp_wait_for_busy(priv->base,
          IMX_OCOTP_BM_CTRL_REL_SHADOWS);
 if (ret < 0) {
  dev_err(priv->dev, "timeout during shadow register reload\n");
  goto write_end;
 }

write_end:
 clk_disable_unprepare(priv->clk);
 mutex_unlock(&ocotp_mutex);
 if (ret < 0)
  return ret;
 return bytes;
}
