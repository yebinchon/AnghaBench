
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int collie_bat_main ;
 int collie_bat_update (int *) ;

__attribute__((used)) static void collie_bat_work(struct work_struct *work)
{
 collie_bat_update(&collie_bat_main);
}
