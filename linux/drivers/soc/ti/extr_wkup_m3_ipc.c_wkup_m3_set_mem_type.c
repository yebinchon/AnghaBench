
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {int mem_type; } ;



__attribute__((used)) static void wkup_m3_set_mem_type(struct wkup_m3_ipc *m3_ipc, int mem_type)
{
 m3_ipc->mem_type = mem_type;
}
