
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PHYEV_SIG_FIS ;

__attribute__((used)) static u32 mvs_is_sig_fis_received(u32 irq_status)
{
 return irq_status & PHYEV_SIG_FIS;
}
