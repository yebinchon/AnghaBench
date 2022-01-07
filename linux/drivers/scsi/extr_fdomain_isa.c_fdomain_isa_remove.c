
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct Scsi_Host {int io_port; } ;


 int FDOMAIN_REGION_SIZE ;
 struct Scsi_Host* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int fdomain_destroy (struct Scsi_Host*) ;
 int release_region (int,int ) ;

__attribute__((used)) static int fdomain_isa_remove(struct device *dev, unsigned int ndev)
{
 struct Scsi_Host *sh = dev_get_drvdata(dev);
 int base = sh->io_port;

 fdomain_destroy(sh);
 release_region(base, FDOMAIN_REGION_SIZE);
 dev_set_drvdata(dev, ((void*)0));
 return 0;
}
