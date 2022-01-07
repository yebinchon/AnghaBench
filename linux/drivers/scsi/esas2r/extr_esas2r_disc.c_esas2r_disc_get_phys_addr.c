
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct esas2r_sg_context {scalar_t__ length; struct esas2r_adapter* adapter; } ;
struct esas2r_adapter {int * uncached; scalar_t__ disc_buffer; scalar_t__ uncached_phys; } ;


 scalar_t__ ESAS2R_DISC_BUF_LEN ;
 int esas2r_bugon () ;

__attribute__((used)) static u32 esas2r_disc_get_phys_addr(struct esas2r_sg_context *sgc, u64 *addr)
{
 struct esas2r_adapter *a = sgc->adapter;

 if (sgc->length > ESAS2R_DISC_BUF_LEN)
  esas2r_bugon();

 *addr = a->uncached_phys
  + (u64)((u8 *)a->disc_buffer - a->uncached);

 return sgc->length;
}
