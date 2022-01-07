
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {int * key; } ;
struct xenvif {int domid; TYPE_1__ hash; } ;
struct TYPE_9__ {int gmfn; } ;
struct TYPE_10__ {int offset; int domid; TYPE_4__ u; } ;
struct TYPE_7__ {scalar_t__ ref; } ;
struct TYPE_8__ {int domid; TYPE_2__ u; } ;
struct gnttab_copy {scalar_t__ len; scalar_t__ status; int flags; TYPE_5__ dest; TYPE_3__ source; } ;


 int DOMID_SELF ;
 int GNTCOPY_source_gref ;
 scalar_t__ GNTST_okay ;
 scalar_t__ XEN_NETBK_MAX_HASH_KEY_SIZE ;
 scalar_t__ XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER ;
 scalar_t__ XEN_NETIF_CTRL_STATUS_SUCCESS ;
 int gnttab_batch_copy (struct gnttab_copy*,int) ;
 int memset (int *,int ,scalar_t__) ;
 int virt_to_gfn (int *) ;
 int xen_offset_in_page (int *) ;
 int xenvif_flush_hash (struct xenvif*) ;

u32 xenvif_set_hash_key(struct xenvif *vif, u32 gref, u32 len)
{
 u8 *key = vif->hash.key;
 struct gnttab_copy copy_op = {
  .source.u.ref = gref,
  .source.domid = vif->domid,
  .dest.u.gmfn = virt_to_gfn(key),
  .dest.domid = DOMID_SELF,
  .dest.offset = xen_offset_in_page(key),
  .len = len,
  .flags = GNTCOPY_source_gref
 };

 if (len > XEN_NETBK_MAX_HASH_KEY_SIZE)
  return XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER;

 if (copy_op.len != 0) {
  gnttab_batch_copy(&copy_op, 1);

  if (copy_op.status != GNTST_okay)
   return XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER;
 }


 if (len < XEN_NETBK_MAX_HASH_KEY_SIZE)
  memset(key + len, 0, XEN_NETBK_MAX_HASH_KEY_SIZE - len);

 xenvif_flush_hash(vif);

 return XEN_NETIF_CTRL_STATUS_SUCCESS;
}
