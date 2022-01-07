
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvscsi_adapter {struct PVSCSIRingCmpDesc* cmp_ring; struct PVSCSIRingsState* rings_state; } ;
struct PVSCSIRingsState {int cmpConsIdx; int cmpProdIdx; int cmpNumEntriesLog2; } ;
struct PVSCSIRingCmpDesc {int dummy; } ;


 int MASK (int ) ;
 int barrier () ;
 int pvscsi_complete_request (struct pvscsi_adapter*,struct PVSCSIRingCmpDesc*) ;

__attribute__((used)) static void pvscsi_process_completion_ring(struct pvscsi_adapter *adapter)
{
 struct PVSCSIRingsState *s = adapter->rings_state;
 struct PVSCSIRingCmpDesc *ring = adapter->cmp_ring;
 u32 cmp_entries = s->cmpNumEntriesLog2;

 while (s->cmpConsIdx != s->cmpProdIdx) {
  struct PVSCSIRingCmpDesc *e = ring + (s->cmpConsIdx &
            MASK(cmp_entries));






  barrier();
  pvscsi_complete_request(adapter, e);






  barrier();
  s->cmpConsIdx++;
 }
}
