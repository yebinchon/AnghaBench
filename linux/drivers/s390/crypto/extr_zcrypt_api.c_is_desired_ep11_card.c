
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep11_target_dev {unsigned int ap_id; } ;



__attribute__((used)) static bool is_desired_ep11_card(unsigned int dev_id,
     unsigned short target_num,
     struct ep11_target_dev *targets)
{
 while (target_num-- > 0) {
  if (dev_id == targets->ap_id)
   return 1;
  targets++;
 }
 return 0;
}
