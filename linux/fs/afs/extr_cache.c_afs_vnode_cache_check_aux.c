
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct afs_vnode_cache_aux {int data_version; } ;
struct TYPE_4__ {int data_version; } ;
struct TYPE_3__ {int unique; int vnode; } ;
struct afs_vnode {TYPE_2__ status; TYPE_1__ fid; } ;
typedef int loff_t ;
typedef enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;
typedef int aux ;


 int FSCACHE_CHECKAUX_OBSOLETE ;
 int FSCACHE_CHECKAUX_OKAY ;
 int _enter (char*,int ,int ,int ,void const*,int) ;
 int _leave (char*,...) ;
 int memcpy (struct afs_vnode_cache_aux*,void const*,int) ;

__attribute__((used)) static enum fscache_checkaux afs_vnode_cache_check_aux(void *cookie_netfs_data,
             const void *buffer,
             uint16_t buflen,
             loff_t object_size)
{
 struct afs_vnode *vnode = cookie_netfs_data;
 struct afs_vnode_cache_aux aux;

 _enter("{%llx,%x,%llx},%p,%u",
        vnode->fid.vnode, vnode->fid.unique, vnode->status.data_version,
        buffer, buflen);

 memcpy(&aux, buffer, sizeof(aux));


 if (buflen != sizeof(aux)) {
  _leave(" = OBSOLETE [len %hx != %zx]", buflen, sizeof(aux));
  return FSCACHE_CHECKAUX_OBSOLETE;
 }

 if (vnode->status.data_version != aux.data_version) {
  _leave(" = OBSOLETE [vers %llx != %llx]",
         aux.data_version, vnode->status.data_version);
  return FSCACHE_CHECKAUX_OBSOLETE;
 }

 _leave(" = SUCCESS");
 return FSCACHE_CHECKAUX_OKAY;
}
