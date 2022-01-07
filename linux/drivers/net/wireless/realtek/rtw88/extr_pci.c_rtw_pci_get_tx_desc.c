
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int desc_size; void* head; } ;
struct rtw_pci_tx_ring {TYPE_1__ r; } ;



__attribute__((used)) static inline void *rtw_pci_get_tx_desc(struct rtw_pci_tx_ring *tx_ring, u8 idx)
{
 int offset = tx_ring->r.desc_size * idx;

 return tx_ring->r.head + offset;
}
