
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchtec_ntb {int link_force_down; int check_link_status_work; } ;
typedef enum switchtec_msg { ____Placeholder_switchtec_msg } switchtec_msg ;


 int MSG_LINK_FORCE_DOWN ;
 int schedule_work (int *) ;

__attribute__((used)) static void switchtec_ntb_check_link(struct switchtec_ntb *sndev,
          enum switchtec_msg msg)
{
 if (msg == MSG_LINK_FORCE_DOWN)
  sndev->link_force_down = 1;

 schedule_work(&sndev->check_link_status_work);
}
