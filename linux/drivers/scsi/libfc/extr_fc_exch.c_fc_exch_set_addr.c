
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct fc_exch {int esb_stat; void* did; void* sid; void* oid; } ;


 int ESB_ST_RESP ;

__attribute__((used)) static void fc_exch_set_addr(struct fc_exch *ep,
        u32 orig_id, u32 resp_id)
{
 ep->oid = orig_id;
 if (ep->esb_stat & ESB_ST_RESP) {
  ep->sid = resp_id;
  ep->did = orig_id;
 } else {
  ep->sid = orig_id;
  ep->did = resp_id;
 }
}
