
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int wp; int * head; } ;
struct rtw_pci_tx_ring {TYPE_1__ r; } ;
struct rtw_pci_tx_buffer_desc {int dummy; } ;



__attribute__((used)) static inline
struct rtw_pci_tx_buffer_desc *get_tx_buffer_desc(struct rtw_pci_tx_ring *ring,
        u32 size)
{
 u8 *buf_desc;

 buf_desc = ring->r.head + ring->r.wp * size;
 return (struct rtw_pci_tx_buffer_desc *)buf_desc;
}
