
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_qspi {int dummy; } ;
struct device {int dummy; } ;


 struct fsl_qspi* dev_get_drvdata (struct device*) ;
 int fsl_qspi_default_setup (struct fsl_qspi*) ;

__attribute__((used)) static int fsl_qspi_resume(struct device *dev)
{
 struct fsl_qspi *q = dev_get_drvdata(dev);

 fsl_qspi_default_setup(q);

 return 0;
}
