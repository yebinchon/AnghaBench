
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; } ;
struct ap_queue {int qid; } ;
struct ap_qirq_ctrl {int ir; int isc; int member_0; } ;


 int AP_ISC ;
 int AP_QID_CARD (int ) ;
 int AP_QID_QUEUE (int ) ;
 int EBUSY ;
 int EOPNOTSUPP ;
 struct ap_queue_status ap_aqic (int ,struct ap_qirq_ctrl,void*) ;
 int pr_err (char*,int ,int ) ;

__attribute__((used)) static int ap_queue_enable_interruption(struct ap_queue *aq, void *ind)
{
 struct ap_queue_status status;
 struct ap_qirq_ctrl qirqctrl = { 0 };

 qirqctrl.ir = 1;
 qirqctrl.isc = AP_ISC;
 status = ap_aqic(aq->qid, qirqctrl, ind);
 switch (status.response_code) {
 case 131:
 case 130:
  return 0;
 case 129:
 case 133:
 case 134:
 case 132:
  pr_err("Registering adapter interrupts for AP device %02x.%04x failed\n",
         AP_QID_CARD(aq->qid),
         AP_QID_QUEUE(aq->qid));
  return -EOPNOTSUPP;
 case 128:
 case 135:
 default:
  return -EBUSY;
 }
}
