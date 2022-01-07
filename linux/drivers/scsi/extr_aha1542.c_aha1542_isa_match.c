
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 struct Scsi_Host* aha1542_hw_init (int *,struct device*,unsigned int) ;
 int dev_set_drvdata (struct device*,struct Scsi_Host*) ;
 int driver_template ;

__attribute__((used)) static int aha1542_isa_match(struct device *pdev, unsigned int ndev)
{
 struct Scsi_Host *sh = aha1542_hw_init(&driver_template, pdev, ndev);

 if (!sh)
  return 0;

 dev_set_drvdata(pdev, sh);
 return 1;
}
