
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int of_reset_n_cells; int list; int reset_control_head; scalar_t__ of_xlate; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ of_reset_simple_xlate ;
 int reset_controller_list ;
 int reset_list_mutex ;

int reset_controller_register(struct reset_controller_dev *rcdev)
{
 if (!rcdev->of_xlate) {
  rcdev->of_reset_n_cells = 1;
  rcdev->of_xlate = of_reset_simple_xlate;
 }

 INIT_LIST_HEAD(&rcdev->reset_control_head);

 mutex_lock(&reset_list_mutex);
 list_add(&rcdev->list, &reset_controller_list);
 mutex_unlock(&reset_list_mutex);

 return 0;
}
