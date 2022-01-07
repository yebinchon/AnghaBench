
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_comm {int item; } ;


 int config_item_put (int *) ;

__attribute__((used)) static void put_comm(struct dlm_comm *cm)
{
 config_item_put(&cm->item);
}
