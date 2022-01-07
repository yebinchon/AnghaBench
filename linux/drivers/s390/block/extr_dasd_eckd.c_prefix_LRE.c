
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
struct dasd_eckd_private {TYPE_2__ uid; TYPE_1__* ned; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;
struct ccw1 {int count; void* cda; scalar_t__ flags; int cmd_code; } ;
struct TYPE_6__ {int define_extent; int verify_base; int hyper_pav; int time_stamp; } ;
struct LRE_eckd_data {int dummy; } ;
struct DE_eckd_data {int ga_extended; } ;
struct PFX_eckd_data {unsigned int format; TYPE_3__ validity; int base_lss; int base_address; struct LRE_eckd_data locate_record; struct DE_eckd_data define_extent; } ;
typedef void* __u32 ;
struct TYPE_4__ {int ID; int unit_addr; } ;


 int BUG () ;
 int DASD_ECKD_CCW_PFX ;
 int DASD_ECKD_CCW_WRITE_FULL_TRACK ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,unsigned int) ;
 int DBF_ERR ;
 int EINVAL ;
 scalar_t__ UA_BASE_PAV_ALIAS ;
 scalar_t__ UA_HYPER_PAV_ALIAS ;
 scalar_t__ __pa (struct PFX_eckd_data*) ;
 int define_extent (int *,struct DE_eckd_data*,unsigned int,unsigned int,int,struct dasd_device*,unsigned int) ;
 int locate_record_ext (int *,struct LRE_eckd_data*,unsigned int,unsigned int,int,int,struct dasd_device*,unsigned int,unsigned int) ;
 int memset (struct PFX_eckd_data*,int ,int) ;

__attribute__((used)) static int prefix_LRE(struct ccw1 *ccw, struct PFX_eckd_data *pfxdata,
        unsigned int trk, unsigned int totrk, int cmd,
        struct dasd_device *basedev, struct dasd_device *startdev,
        unsigned int format, unsigned int rec_on_trk, int count,
        unsigned int blksize, unsigned int tlf)
{
 struct dasd_eckd_private *basepriv, *startpriv;
 struct LRE_eckd_data *lredata;
 struct DE_eckd_data *dedata;
 int rc = 0;

 basepriv = basedev->private;
 startpriv = startdev->private;
 dedata = &pfxdata->define_extent;
 lredata = &pfxdata->locate_record;

 ccw->cmd_code = DASD_ECKD_CCW_PFX;
 ccw->flags = 0;
 if (cmd == DASD_ECKD_CCW_WRITE_FULL_TRACK) {
  ccw->count = sizeof(*pfxdata) + 2;
  ccw->cda = (__u32) __pa(pfxdata);
  memset(pfxdata, 0, sizeof(*pfxdata) + 2);
 } else {
  ccw->count = sizeof(*pfxdata);
  ccw->cda = (__u32) __pa(pfxdata);
  memset(pfxdata, 0, sizeof(*pfxdata));
 }


 if (format > 1) {
  DBF_DEV_EVENT(DBF_ERR, basedev,
         "PFX LRE unknown format 0x%x", format);
  BUG();
  return -EINVAL;
 }
 pfxdata->format = format;
 pfxdata->base_address = basepriv->ned->unit_addr;
 pfxdata->base_lss = basepriv->ned->ID;
 pfxdata->validity.define_extent = 1;


 if (startpriv->uid.type == UA_BASE_PAV_ALIAS)
  pfxdata->validity.verify_base = 1;

 if (startpriv->uid.type == UA_HYPER_PAV_ALIAS) {
  pfxdata->validity.verify_base = 1;
  pfxdata->validity.hyper_pav = 1;
 }

 rc = define_extent(((void*)0), dedata, trk, totrk, cmd, basedev, blksize);






 if (dedata->ga_extended & 0x08 && dedata->ga_extended & 0x02)
  pfxdata->validity.time_stamp = 1;

 if (format == 1) {
  locate_record_ext(((void*)0), lredata, trk, rec_on_trk, count, cmd,
      basedev, blksize, tlf);
 }

 return rc;
}
