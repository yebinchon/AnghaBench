
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_msit_isr_ctx {int occurrences; } ;



__attribute__((used)) static int ntb_msit_dbgfs_occurrences_get(void *data, u64 *occurrences)
{
 struct ntb_msit_isr_ctx *isr_ctx = data;

 *occurrences = isr_ctx->occurrences;

 return 0;
}
