
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int dummy; } ;
typedef int ap_qid_t ;


 struct ap_queue_status ap_nqap (int,unsigned long long,void*,size_t) ;

__attribute__((used)) static inline struct ap_queue_status
__ap_send(ap_qid_t qid, unsigned long long psmid, void *msg, size_t length,
   unsigned int special)
{
 if (special == 1)
  qid |= 0x400000UL;
 return ap_nqap(qid, psmid, msg, length);
}
