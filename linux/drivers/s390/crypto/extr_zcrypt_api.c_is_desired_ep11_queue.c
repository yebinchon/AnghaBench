
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep11_target_dev {int dom_id; int ap_id; } ;


 unsigned int AP_MKQID (int ,int ) ;

__attribute__((used)) static bool is_desired_ep11_queue(unsigned int dev_qid,
      unsigned short target_num,
      struct ep11_target_dev *targets)
{
 while (target_num-- > 0) {
  if (AP_MKQID(targets->ap_id, targets->dom_id) == dev_qid)
   return 1;
  targets++;
 }
 return 0;
}
