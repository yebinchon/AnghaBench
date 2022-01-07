
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct c2_inquiry {scalar_t__ max_lun_supported; } ;
struct TYPE_3__ {struct c2_inquiry c2; } ;
struct rdac_dh_data {TYPE_2__* ctlr; TYPE_1__ inq; } ;
struct TYPE_4__ {int use_ms10; } ;


 scalar_t__ MODE6_MAX_LUN ;
 int SCSI_DH_IO ;
 int SCSI_DH_OK ;
 int scsi_get_vpd_page (struct scsi_device*,int,unsigned char*,int) ;

__attribute__((used)) static int set_mode_select(struct scsi_device *sdev, struct rdac_dh_data *h)
{
 int err = SCSI_DH_IO;
 struct c2_inquiry *inqp = &h->inq.c2;

 if (!scsi_get_vpd_page(sdev, 0xC2, (unsigned char *)inqp,
          sizeof(struct c2_inquiry))) {




  if (inqp->max_lun_supported >= MODE6_MAX_LUN)
   h->ctlr->use_ms10 = 1;
  else
   h->ctlr->use_ms10 = 0;
  err = SCSI_DH_OK;
 }
 return err;
}
