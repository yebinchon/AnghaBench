
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_lpspi_data {struct device* dev; } ;
struct device {int dummy; } ;


 int FSL_LPSPI_RPM_TIMEOUT ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;

__attribute__((used)) static int fsl_lpspi_init_rpm(struct fsl_lpspi_data *fsl_lpspi)
{
 struct device *dev = fsl_lpspi->dev;

 pm_runtime_enable(dev);
 pm_runtime_set_autosuspend_delay(dev, FSL_LPSPI_RPM_TIMEOUT);
 pm_runtime_use_autosuspend(dev);

 return 0;
}
