
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sisl_rht_entry_f1 {int valid; int dw; int port_sel; void* fp; int lun_id; int member_0; } ;
struct sisl_rht_entry {int dummy; } ;


 void* SISL_RHT_FP (unsigned int,int ) ;
 int dma_wmb () ;
 int memset (struct sisl_rht_entry_f1*,int ,int) ;

__attribute__((used)) static void rht_format1(struct sisl_rht_entry *rhte, u64 lun_id, u32 perm,
   u32 port_sel)
{





 struct sisl_rht_entry_f1 dummy = { 0 };
 struct sisl_rht_entry_f1 *rhte_f1 = (struct sisl_rht_entry_f1 *)rhte;

 memset(rhte_f1, 0, sizeof(*rhte_f1));
 rhte_f1->fp = SISL_RHT_FP(1U, 0);
 dma_wmb();

 rhte_f1->lun_id = lun_id;
 dma_wmb();






 dummy.valid = 0x80;
 dummy.fp = SISL_RHT_FP(1U, perm);
 dummy.port_sel = port_sel;
 rhte_f1->dw = dummy.dw;

 dma_wmb();
}
