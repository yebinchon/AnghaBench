
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_chip {int dummy; } ;


 int GLOBAL_EVENTS ;
 int NVEC_SLEEP ;
 int nvec_write_async (struct nvec_chip*,unsigned char*,int) ;

__attribute__((used)) static void nvec_toggle_global_events(struct nvec_chip *nvec, bool state)
{
 unsigned char global_events[] = { NVEC_SLEEP, GLOBAL_EVENTS, state };

 nvec_write_async(nvec, global_events, 3);
}
