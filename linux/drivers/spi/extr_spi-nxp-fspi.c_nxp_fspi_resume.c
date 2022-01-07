
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxp_fspi {int dummy; } ;
struct device {int dummy; } ;


 struct nxp_fspi* dev_get_drvdata (struct device*) ;
 int nxp_fspi_default_setup (struct nxp_fspi*) ;

__attribute__((used)) static int nxp_fspi_resume(struct device *dev)
{
 struct nxp_fspi *f = dev_get_drvdata(dev);

 nxp_fspi_default_setup(f);

 return 0;
}
