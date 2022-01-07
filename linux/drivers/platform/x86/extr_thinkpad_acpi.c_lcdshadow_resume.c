
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcdshadow_on_off (scalar_t__) ;
 scalar_t__ lcdshadow_state ;

__attribute__((used)) static void lcdshadow_resume(void)
{
 if (lcdshadow_state >= 0)
  lcdshadow_on_off(lcdshadow_state);
}
