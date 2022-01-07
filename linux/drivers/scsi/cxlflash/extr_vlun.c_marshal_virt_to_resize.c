
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dk_cxlflash_uvirtual {int last_lba; int lun_size; int rsrc_handle; int context_id; int hdr; } ;
struct dk_cxlflash_resize {int last_lba; int req_size; int rsrc_handle; int context_id; int hdr; } ;



__attribute__((used)) static void marshal_virt_to_resize(struct dk_cxlflash_uvirtual *virt,
       struct dk_cxlflash_resize *resize)
{
 resize->hdr = virt->hdr;
 resize->context_id = virt->context_id;
 resize->rsrc_handle = virt->rsrc_handle;
 resize->req_size = virt->lun_size;
 resize->last_lba = virt->last_lba;
}
