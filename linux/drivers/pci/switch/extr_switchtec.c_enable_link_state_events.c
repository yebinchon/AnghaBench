
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_dev {int pff_csr_count; TYPE_1__* mmio_pff_csr; } ;
struct TYPE_2__ {int link_state_hdr; } ;


 int SWITCHTEC_EVENT_CLEAR ;
 int SWITCHTEC_EVENT_EN_IRQ ;
 int iowrite32 (int,int *) ;

__attribute__((used)) static void enable_link_state_events(struct switchtec_dev *stdev)
{
 int idx;

 for (idx = 0; idx < stdev->pff_csr_count; idx++) {
  iowrite32(SWITCHTEC_EVENT_CLEAR |
     SWITCHTEC_EVENT_EN_IRQ,
     &stdev->mmio_pff_csr[idx].link_state_hdr);
 }
}
