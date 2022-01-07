
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NR_CONSOLES ;
 int newport_set_def_font (int,int *) ;

__attribute__((used)) static void newport_exit(void)
{
 int i;


 for (i = 0; i < MAX_NR_CONSOLES; i++)
  newport_set_def_font(i, ((void*)0));
}
