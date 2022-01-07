
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dk_cxlflash_release {int context_id; int hdr; } ;
struct dk_cxlflash_detach {int context_id; int hdr; } ;



__attribute__((used)) static void marshal_det_to_rele(struct dk_cxlflash_detach *detach,
    struct dk_cxlflash_release *release)
{
 release->hdr = detach->hdr;
 release->context_id = detach->context_id;
}
