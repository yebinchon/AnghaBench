
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct nvmem_device {int dummy; } ;
struct lpc18xx_otp {int base; } ;
struct TYPE_3__ {struct lpc18xx_otp* priv; int * dev; int size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int LPC18XX_OTP_SIZE ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct nvmem_device*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct lpc18xx_otp* devm_kzalloc (int *,int,int ) ;
 struct nvmem_device* devm_nvmem_register (int *,TYPE_1__*) ;
 TYPE_1__ lpc18xx_otp_nvmem_config ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int lpc18xx_otp_probe(struct platform_device *pdev)
{
 struct nvmem_device *nvmem;
 struct lpc18xx_otp *otp;
 struct resource *res;

 otp = devm_kzalloc(&pdev->dev, sizeof(*otp), GFP_KERNEL);
 if (!otp)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 otp->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(otp->base))
  return PTR_ERR(otp->base);

 lpc18xx_otp_nvmem_config.size = LPC18XX_OTP_SIZE;
 lpc18xx_otp_nvmem_config.dev = &pdev->dev;
 lpc18xx_otp_nvmem_config.priv = otp;

 nvmem = devm_nvmem_register(&pdev->dev, &lpc18xx_otp_nvmem_config);

 return PTR_ERR_OR_ZERO(nvmem);
}
