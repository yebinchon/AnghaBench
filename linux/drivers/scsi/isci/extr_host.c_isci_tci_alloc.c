
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct isci_host {int tci_head; size_t* tci_pool; } ;


 int SCI_MAX_IO_REQUESTS ;

__attribute__((used)) static u16 isci_tci_alloc(struct isci_host *ihost)
{
 u16 head = ihost->tci_head & (SCI_MAX_IO_REQUESTS-1);
 u16 tci = ihost->tci_pool[head];

 ihost->tci_head = head + 1;
 return tci;
}
