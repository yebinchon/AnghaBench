
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static void fw_event_work_get(struct fw_event_work *fw_work)
{
 kref_get(&fw_work->refcount);
}
