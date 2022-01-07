
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct asc_board {struct Scsi_Host* shost; struct device* dev; int irq; } ;
struct Scsi_Host {int dummy; } ;
typedef int PortAddr ;


 scalar_t__ ASC_CHIP_MAX_VER_VL ;
 int ASC_DBG (int,char*,int ) ;
 int ASC_IOADR_GAP ;
 int ASC_IS_VL ;
 int AscFindSignature (int ) ;
 scalar_t__ AscGetChipVersion (int ,int ) ;
 int DRV_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int * _asc_def_iop_base ;
 int advansys_board_found (struct Scsi_Host*,int ,int ) ;
 int advansys_template ;
 int advansys_vlb_irq_no (int ) ;
 int dev_set_drvdata (struct device*,struct Scsi_Host*) ;
 int release_region (int ,int ) ;
 int request_region (int ,int ,int ) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 struct asc_board* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int advansys_vlb_probe(struct device *dev, unsigned int id)
{
 int err = -ENODEV;
 PortAddr iop_base = _asc_def_iop_base[id];
 struct Scsi_Host *shost;
 struct asc_board *board;

 if (!request_region(iop_base, ASC_IOADR_GAP, DRV_NAME)) {
  ASC_DBG(1, "I/O port 0x%x busy\n", iop_base);
  return -ENODEV;
 }
 ASC_DBG(1, "probing I/O port 0x%x\n", iop_base);
 if (!AscFindSignature(iop_base))
  goto release_region;





 if (AscGetChipVersion(iop_base, ASC_IS_VL) > ASC_CHIP_MAX_VER_VL)
  goto release_region;

 err = -ENOMEM;
 shost = scsi_host_alloc(&advansys_template, sizeof(*board));
 if (!shost)
  goto release_region;

 board = shost_priv(shost);
 board->irq = advansys_vlb_irq_no(iop_base);
 board->dev = dev;
 board->shost = shost;

 err = advansys_board_found(shost, iop_base, ASC_IS_VL);
 if (err)
  goto free_host;

 dev_set_drvdata(dev, shost);
 return 0;

 free_host:
 scsi_host_put(shost);
 release_region:
 release_region(iop_base, ASC_IOADR_GAP);
 return -ENODEV;
}
