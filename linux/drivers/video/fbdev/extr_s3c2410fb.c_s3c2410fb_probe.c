
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int DRV_S3C2410 ;
 int s3c24xxfb_probe (struct platform_device*,int ) ;

__attribute__((used)) static int s3c2410fb_probe(struct platform_device *pdev)
{
 return s3c24xxfb_probe(pdev, DRV_S3C2410);
}
