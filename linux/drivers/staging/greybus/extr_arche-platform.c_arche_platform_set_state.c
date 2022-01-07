
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arche_platform_drvdata {int state; } ;
typedef enum arche_platform_state { ____Placeholder_arche_platform_state } arche_platform_state ;



__attribute__((used)) static void arche_platform_set_state(struct arche_platform_drvdata *arche_pdata,
         enum arche_platform_state state)
{
 arche_pdata->state = state;
}
