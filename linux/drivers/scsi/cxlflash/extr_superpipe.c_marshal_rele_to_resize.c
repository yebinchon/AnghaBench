
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dk_cxlflash_resize {int rsrc_handle; int context_id; int hdr; } ;
struct dk_cxlflash_release {int rsrc_handle; int context_id; int hdr; } ;



__attribute__((used)) static void marshal_rele_to_resize(struct dk_cxlflash_release *release,
       struct dk_cxlflash_resize *resize)
{
 resize->hdr = release->hdr;
 resize->context_id = release->context_id;
 resize->rsrc_handle = release->rsrc_handle;
}
