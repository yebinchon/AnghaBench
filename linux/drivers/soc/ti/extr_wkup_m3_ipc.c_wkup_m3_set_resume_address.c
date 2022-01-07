
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {unsigned long resume_addr; } ;



__attribute__((used)) static void wkup_m3_set_resume_address(struct wkup_m3_ipc *m3_ipc, void *addr)
{
 m3_ipc->resume_addr = (unsigned long)addr;
}
