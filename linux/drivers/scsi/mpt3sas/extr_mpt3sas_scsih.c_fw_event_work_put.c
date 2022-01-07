
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {int refcount; } ;


 int fw_event_work_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void fw_event_work_put(struct fw_event_work *fw_work)
{
 kref_put(&fw_work->refcount, fw_event_work_free);
}
