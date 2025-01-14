
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {int * wwn; } ;
struct TYPE_12__ {TYPE_5__ u; } ;
struct TYPE_10__ {int bbRcvSizeMsb; int bbRcvSizeLsb; } ;
struct TYPE_9__ {int rcvDataSizeMsb; int rcvDataSizeLsb; scalar_t__ classValid; } ;
struct TYPE_8__ {int rcvDataSizeMsb; int rcvDataSizeLsb; scalar_t__ classValid; } ;
struct TYPE_7__ {int rcvDataSizeMsb; int rcvDataSizeLsb; scalar_t__ classValid; } ;
struct serv_parm {TYPE_6__ nodeName; TYPE_6__ portName; TYPE_4__ cmn; TYPE_3__ cls3; TYPE_2__ cls2; TYPE_1__ cls1; } ;
struct lpfc_vport {struct serv_parm fc_sparam; } ;
struct lpfc_nodelist {int nlp_DID; int nlp_portname; int nlp_nodename; } ;
struct lpfc_name {int dummy; } ;


 scalar_t__ CLASS1 ;
 scalar_t__ CLASS2 ;
 scalar_t__ CLASS3 ;
 int KERN_ERR ;
 int LOG_DISCOVERY ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int memcpy (int *,TYPE_6__*,int) ;

int
lpfc_check_sparm(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
   struct serv_parm *sp, uint32_t class, int flogi)
{
 volatile struct serv_parm *hsp = &vport->fc_sparam;
 uint16_t hsp_value, ssp_value = 0;
 if (sp->cls1.classValid) {
  if (!flogi) {
   hsp_value = ((hsp->cls1.rcvDataSizeMsb << 8) |
         hsp->cls1.rcvDataSizeLsb);
   ssp_value = ((sp->cls1.rcvDataSizeMsb << 8) |
         sp->cls1.rcvDataSizeLsb);
   if (!ssp_value)
    goto bad_service_param;
   if (ssp_value > hsp_value) {
    sp->cls1.rcvDataSizeLsb =
     hsp->cls1.rcvDataSizeLsb;
    sp->cls1.rcvDataSizeMsb =
     hsp->cls1.rcvDataSizeMsb;
   }
  }
 } else if (class == CLASS1)
  goto bad_service_param;
 if (sp->cls2.classValid) {
  if (!flogi) {
   hsp_value = ((hsp->cls2.rcvDataSizeMsb << 8) |
         hsp->cls2.rcvDataSizeLsb);
   ssp_value = ((sp->cls2.rcvDataSizeMsb << 8) |
         sp->cls2.rcvDataSizeLsb);
   if (!ssp_value)
    goto bad_service_param;
   if (ssp_value > hsp_value) {
    sp->cls2.rcvDataSizeLsb =
     hsp->cls2.rcvDataSizeLsb;
    sp->cls2.rcvDataSizeMsb =
     hsp->cls2.rcvDataSizeMsb;
   }
  }
 } else if (class == CLASS2)
  goto bad_service_param;
 if (sp->cls3.classValid) {
  if (!flogi) {
   hsp_value = ((hsp->cls3.rcvDataSizeMsb << 8) |
         hsp->cls3.rcvDataSizeLsb);
   ssp_value = ((sp->cls3.rcvDataSizeMsb << 8) |
         sp->cls3.rcvDataSizeLsb);
   if (!ssp_value)
    goto bad_service_param;
   if (ssp_value > hsp_value) {
    sp->cls3.rcvDataSizeLsb =
     hsp->cls3.rcvDataSizeLsb;
    sp->cls3.rcvDataSizeMsb =
     hsp->cls3.rcvDataSizeMsb;
   }
  }
 } else if (class == CLASS3)
  goto bad_service_param;






 hsp_value = (hsp->cmn.bbRcvSizeMsb << 8) | hsp->cmn.bbRcvSizeLsb;
 ssp_value = (sp->cmn.bbRcvSizeMsb << 8) | sp->cmn.bbRcvSizeLsb;
 if (ssp_value > hsp_value) {
  sp->cmn.bbRcvSizeLsb = hsp->cmn.bbRcvSizeLsb;
  sp->cmn.bbRcvSizeMsb = (sp->cmn.bbRcvSizeMsb & 0xF0) |
           (hsp->cmn.bbRcvSizeMsb & 0x0F);
 }

 memcpy(&ndlp->nlp_nodename, &sp->nodeName, sizeof (struct lpfc_name));
 memcpy(&ndlp->nlp_portname, &sp->portName, sizeof (struct lpfc_name));
 return 1;
bad_service_param:
 lpfc_printf_vlog(vport, KERN_ERR, LOG_DISCOVERY,
    "0207 Device %x "
    "(%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x) sent "
    "invalid service parameters.  Ignoring device.\n",
    ndlp->nlp_DID,
    sp->nodeName.u.wwn[0], sp->nodeName.u.wwn[1],
    sp->nodeName.u.wwn[2], sp->nodeName.u.wwn[3],
    sp->nodeName.u.wwn[4], sp->nodeName.u.wwn[5],
    sp->nodeName.u.wwn[6], sp->nodeName.u.wwn[7]);
 return 0;
}
