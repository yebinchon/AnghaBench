
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_vhub {int wake_work; int speed; } ;


 int INIT_WORK (int *,int ) ;
 int USB_SPEED_UNKNOWN ;
 int ast_vhub_wake_work ;

void ast_vhub_init_hub(struct ast_vhub *vhub)
{
 vhub->speed = USB_SPEED_UNKNOWN;
 INIT_WORK(&vhub->wake_work, ast_vhub_wake_work);
}
