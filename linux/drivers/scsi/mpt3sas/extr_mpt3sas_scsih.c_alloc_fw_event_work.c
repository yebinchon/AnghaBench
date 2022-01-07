
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {int refcount; } ;


 int GFP_ATOMIC ;
 int kref_init (int *) ;
 struct fw_event_work* kzalloc (int,int ) ;

__attribute__((used)) static struct fw_event_work *alloc_fw_event_work(int len)
{
 struct fw_event_work *fw_event;

 fw_event = kzalloc(sizeof(*fw_event) + len, GFP_ATOMIC);
 if (!fw_event)
  return ((void*)0);

 kref_init(&fw_event->refcount);
 return fw_event;
}
