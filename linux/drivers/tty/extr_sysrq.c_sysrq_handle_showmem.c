
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int show_mem (int ,int *) ;

__attribute__((used)) static void sysrq_handle_showmem(int key)
{
 show_mem(0, ((void*)0));
}
