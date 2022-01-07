
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; } ;
typedef int ap_qid_t ;






 int AP_QID_CARD (int ) ;
 int BUG () ;
 int EBUSY ;
 int ENODEV ;
 int ap_apft_available () ;
 int ap_max_domain_id ;
 int ap_test_config_card_id (int ) ;
 struct ap_queue_status ap_test_queue (int ,int ,unsigned long*) ;

__attribute__((used)) static int ap_query_queue(ap_qid_t qid, int *queue_depth, int *device_type,
     unsigned int *facilities)
{
 struct ap_queue_status status;
 unsigned long info;
 int nd;

 if (!ap_test_config_card_id(AP_QID_CARD(qid)))
  return -ENODEV;

 status = ap_test_queue(qid, ap_apft_available(), &info);
 switch (status.response_code) {
 case 131:
  *queue_depth = (int)(info & 0xff);
  *device_type = (int)((info >> 24) & 0xff);
  *facilities = (unsigned int)(info >> 32);

  nd = (info >> 16) & 0xff;

  if ((info & (1UL << 57)) && nd > 0)
   ap_max_domain_id = nd;
  else
   ap_max_domain_id = 15;
  switch (*device_type) {





  case 139:
  case 137:
   *facilities |= 0x08000000;
   break;
  case 138:
  case 136:
   *facilities |= 0x10000000;
   break;
  default:
   break;
  }
  return 0;
 case 129:
 case 133:
 case 134:
 case 132:
  return -ENODEV;
 case 128:
 case 130:
 case 135:
  return -EBUSY;
 default:
  BUG();
 }
}
