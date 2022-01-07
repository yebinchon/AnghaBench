
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dk_cxlflash_release {int context_id; int hdr; } ;
struct dk_cxlflash_clone {int context_id_dst; int hdr; } ;



__attribute__((used)) static void marshal_clone_to_rele(struct dk_cxlflash_clone *clone,
      struct dk_cxlflash_release *release)
{
 release->hdr = clone->hdr;
 release->context_id = clone->context_id_dst;
}
