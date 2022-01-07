
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbtft_platform_data {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct fbtft_platform_data* ERR_PTR (int ) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static struct fbtft_platform_data *fbtft_probe_dt(struct device *dev)
{
 dev_err(dev, "Missing platform data\n");
 return ERR_PTR(-EINVAL);
}
