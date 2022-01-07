
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int xen_sync_pcpus () ;

__attribute__((used)) static void xen_pcpu_work_fn(struct work_struct *work)
{
 xen_sync_pcpus();
}
