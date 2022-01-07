
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvmet_async_event {int event_type; int event_info; int log_page; } ;



__attribute__((used)) static u32 nvmet_async_event_result(struct nvmet_async_event *aen)
{
 return aen->event_type | (aen->event_info << 8) | (aen->log_page << 16);
}
