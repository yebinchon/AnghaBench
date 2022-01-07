
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchtec_ntb {void* link_width; void* link_speed; int peer_partition; int self_partition; int link_is_up; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;


 void* NTB_SPEED_NONE ;
 void* NTB_WIDTH_NONE ;
 void* min (int,int) ;
 int switchtec_ntb_part_link_speed (struct switchtec_ntb*,int ,int*,int*) ;

__attribute__((used)) static void switchtec_ntb_set_link_speed(struct switchtec_ntb *sndev)
{
 enum ntb_speed self_speed, peer_speed;
 enum ntb_width self_width, peer_width;

 if (!sndev->link_is_up) {
  sndev->link_speed = NTB_SPEED_NONE;
  sndev->link_width = NTB_WIDTH_NONE;
  return;
 }

 switchtec_ntb_part_link_speed(sndev, sndev->self_partition,
          &self_speed, &self_width);
 switchtec_ntb_part_link_speed(sndev, sndev->peer_partition,
          &peer_speed, &peer_width);

 sndev->link_speed = min(self_speed, peer_speed);
 sndev->link_width = min(self_width, peer_width);
}
