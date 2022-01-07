
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dk_cxlflash_udirect {int rsrc_handle; int context_id; int hdr; } ;
struct dk_cxlflash_release {int rsrc_handle; int context_id; int hdr; } ;



__attribute__((used)) static void marshal_udir_to_rele(struct dk_cxlflash_udirect *udirect,
     struct dk_cxlflash_release *release)
{
 release->hdr = udirect->hdr;
 release->context_id = udirect->context_id;
 release->rsrc_handle = udirect->rsrc_handle;
}
