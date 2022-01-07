
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_vhub {int wake_work; } ;


 int schedule_work (int *) ;

void ast_vhub_hub_wake_all(struct ast_vhub *vhub)
{





 schedule_work(&vhub->wake_work);
}
