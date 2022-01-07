
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_state_t {int ** str_var; } ;


 int STR_NUM ;
 int kfree (int *) ;

__attribute__((used)) static void clear_at_state(struct at_state_t *at_state)
{
 int i;

 for (i = 0; i < STR_NUM; ++i) {
  kfree(at_state->str_var[i]);
  at_state->str_var[i] = ((void*)0);
 }
}
