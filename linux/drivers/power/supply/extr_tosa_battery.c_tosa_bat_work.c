
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int tosa_bat_jacket ;
 int tosa_bat_main ;
 int tosa_bat_update (int *) ;

__attribute__((used)) static void tosa_bat_work(struct work_struct *work)
{
 tosa_bat_update(&tosa_bat_main);
 tosa_bat_update(&tosa_bat_jacket);
}
