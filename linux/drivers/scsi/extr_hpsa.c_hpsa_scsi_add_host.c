
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {int scsi_host; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int scsi_add_host (int ,int *) ;
 int scsi_scan_host (int ) ;

__attribute__((used)) static int hpsa_scsi_add_host(struct ctlr_info *h)
{
 int rv;

 rv = scsi_add_host(h->scsi_host, &h->pdev->dev);
 if (rv) {
  dev_err(&h->pdev->dev, "scsi_add_host failed\n");
  return rv;
 }
 scsi_scan_host(h->scsi_host);
 return 0;
}
