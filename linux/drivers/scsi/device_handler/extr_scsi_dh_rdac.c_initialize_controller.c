
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct scsi_device {int dummy; } ;
struct c4_inquiry {int* slot_id; } ;
struct TYPE_3__ {struct c4_inquiry c4; } ;
struct rdac_dh_data {struct scsi_device* sdev; TYPE_2__* ctlr; int node; TYPE_1__ inq; } ;
struct TYPE_4__ {int dh_list; } ;


 int SCSI_DH_IO ;
 int SCSI_DH_OK ;
 int SCSI_DH_RES_TEMP_UNAVAIL ;
 TYPE_2__* get_controller (int,char*,int *,struct scsi_device*) ;
 int list_add_rcu (int *,int *) ;
 int list_lock ;
 int scsi_get_vpd_page (struct scsi_device*,int,unsigned char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int initialize_controller(struct scsi_device *sdev,
  struct rdac_dh_data *h, char *array_name, u8 *array_id)
{
 int err = SCSI_DH_IO, index;
 struct c4_inquiry *inqp = &h->inq.c4;

 if (!scsi_get_vpd_page(sdev, 0xC4, (unsigned char *)inqp,
          sizeof(struct c4_inquiry))) {

  if (inqp->slot_id[1] == 0x31)
   index = 0;
  else
   index = 1;

  spin_lock(&list_lock);
  h->ctlr = get_controller(index, array_name, array_id, sdev);
  if (!h->ctlr)
   err = SCSI_DH_RES_TEMP_UNAVAIL;
  else {
   list_add_rcu(&h->node, &h->ctlr->dh_list);
   h->sdev = sdev;
  }
  spin_unlock(&list_lock);
  err = SCSI_DH_OK;
 }
 return err;
}
