
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ap_qact_ap_info {unsigned int mode; int cat; int member_0; } ;
struct ap_queue_status {scalar_t__ response_code; } ;
typedef int ap_qid_t ;


 int AP_DBF (int ,char*,int ,int ,int,...) ;
 int AP_DEVICE_TYPE_CEX2A ;
 int AP_DEVICE_TYPE_CEX7 ;
 int AP_QID_CARD (int ) ;
 int AP_QID_QUEUE (int ) ;
 scalar_t__ AP_RESPONSE_NORMAL ;
 int DBF_INFO ;
 int DBF_WARN ;
 struct ap_queue_status ap_qact (int ,int ,union ap_qact_ap_info*) ;
 scalar_t__ ap_qact_available () ;

__attribute__((used)) static int ap_get_compatible_type(ap_qid_t qid, int rawtype, unsigned int func)
{
 int comp_type = 0;


 if (rawtype < AP_DEVICE_TYPE_CEX2A)
  return 0;

 if (rawtype <= AP_DEVICE_TYPE_CEX7)
  return rawtype;





 if (ap_qact_available()) {
  struct ap_queue_status status;
  union ap_qact_ap_info apinfo = {0};

  apinfo.mode = (func >> 26) & 0x07;
  apinfo.cat = AP_DEVICE_TYPE_CEX7;
  status = ap_qact(qid, 0, &apinfo);
  if (status.response_code == AP_RESPONSE_NORMAL
      && apinfo.cat >= AP_DEVICE_TYPE_CEX2A
      && apinfo.cat <= AP_DEVICE_TYPE_CEX7)
   comp_type = apinfo.cat;
 }
 if (!comp_type)
  AP_DBF(DBF_WARN, "queue=%02x.%04x unable to map type %d\n",
         AP_QID_CARD(qid), AP_QID_QUEUE(qid), rawtype);
 else if (comp_type != rawtype)
  AP_DBF(DBF_INFO, "queue=%02x.%04x map type %d to %d\n",
         AP_QID_CARD(qid), AP_QID_QUEUE(qid), rawtype, comp_type);
 return comp_type;
}
