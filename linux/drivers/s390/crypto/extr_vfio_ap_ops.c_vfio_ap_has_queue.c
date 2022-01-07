
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_ap_queue_reserved {unsigned long* apid; unsigned long* apqi; int reserved; } ;
struct device {int dummy; } ;
struct ap_queue {scalar_t__ qid; } ;
typedef scalar_t__ ap_qid_t ;


 scalar_t__ AP_MKQID (unsigned long,unsigned long) ;
 unsigned long AP_QID_CARD (scalar_t__) ;
 unsigned long AP_QID_QUEUE (scalar_t__) ;
 int EINVAL ;
 struct ap_queue* to_ap_queue (struct device*) ;

__attribute__((used)) static int vfio_ap_has_queue(struct device *dev, void *data)
{
 struct vfio_ap_queue_reserved *qres = data;
 struct ap_queue *ap_queue = to_ap_queue(dev);
 ap_qid_t qid;
 unsigned long id;

 if (qres->apid && qres->apqi) {
  qid = AP_MKQID(*qres->apid, *qres->apqi);
  if (qid == ap_queue->qid)
   qres->reserved = 1;
 } else if (qres->apid && !qres->apqi) {
  id = AP_QID_CARD(ap_queue->qid);
  if (id == *qres->apid)
   qres->reserved = 1;
 } else if (!qres->apid && qres->apqi) {
  id = AP_QID_QUEUE(ap_queue->qid);
  if (id == *qres->apqi)
   qres->reserved = 1;
 } else {
  return -EINVAL;
 }

 return 0;
}
