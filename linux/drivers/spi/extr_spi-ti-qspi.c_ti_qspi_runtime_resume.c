
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_qspi {int dummy; } ;
struct device {int dummy; } ;


 struct ti_qspi* dev_get_drvdata (struct device*) ;
 int ti_qspi_restore_ctx (struct ti_qspi*) ;

__attribute__((used)) static int ti_qspi_runtime_resume(struct device *dev)
{
 struct ti_qspi *qspi;

 qspi = dev_get_drvdata(dev);
 ti_qspi_restore_ctx(qspi);

 return 0;
}
