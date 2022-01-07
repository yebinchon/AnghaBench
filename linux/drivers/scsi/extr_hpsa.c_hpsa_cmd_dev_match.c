
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct io_accel2_cmd {int dummy; } ;
struct hpsa_tmf_struct {int it_nexus; } ;
struct hpsa_scsi_dev_t {int nphysical_disks; int ioaccel_handle; struct hpsa_scsi_dev_t** phys_disk; } ;
struct ctlr_info {TYPE_3__* pdev; struct io_accel2_cmd* ioaccel2_cmd_pool; } ;
struct TYPE_4__ {int LunAddrBytes; } ;
struct TYPE_5__ {TYPE_1__ LUN; } ;
struct CommandList {size_t cmdindex; int cmd_type; struct hpsa_scsi_dev_t* phys_disk; TYPE_2__ Header; } ;
struct TYPE_6__ {int dev; } ;


 int BUG () ;





 int dev_err (int *,char*,int) ;
 scalar_t__ hpsa_is_cmd_idle (struct CommandList*) ;
 int le32_to_cpu (int ) ;
 int memcmp (unsigned char*,int *,int) ;

__attribute__((used)) static bool hpsa_cmd_dev_match(struct ctlr_info *h, struct CommandList *c,
          struct hpsa_scsi_dev_t *dev,
          unsigned char *scsi3addr)
{
 int i;
 bool match = 0;
 struct io_accel2_cmd *c2 = &h->ioaccel2_cmd_pool[c->cmdindex];
 struct hpsa_tmf_struct *ac = (struct hpsa_tmf_struct *) c2;

 if (hpsa_is_cmd_idle(c))
  return 0;

 switch (c->cmd_type) {
 case 129:
 case 130:
  match = !memcmp(scsi3addr, &c->Header.LUN.LunAddrBytes,
    sizeof(c->Header.LUN.LunAddrBytes));
  break;

 case 132:
 case 131:
  if (c->phys_disk == dev) {

   match = 1;
  } else {




   for (i = 0; i < dev->nphysical_disks && !match; i++) {




    match = dev->phys_disk[i] == c->phys_disk;
   }
  }
  break;

 case 128:
  for (i = 0; i < dev->nphysical_disks && !match; i++) {
   match = dev->phys_disk[i]->ioaccel_handle ==
     le32_to_cpu(ac->it_nexus);
  }
  break;

 case 0:
  match = 0;
  break;

 default:
  dev_err(&h->pdev->dev, "unexpected cmd_type: %d\n",
   c->cmd_type);
  BUG();
 }

 return match;
}
