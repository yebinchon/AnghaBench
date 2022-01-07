
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; int offset; } ;
struct bio_vec {int bv_len; int bv_offset; int bv_page; } ;


 int sg_page (struct scatterlist*) ;

__attribute__((used)) static void nvmet_file_init_bvec(struct bio_vec *bv, struct scatterlist *sg)
{
 bv->bv_page = sg_page(sg);
 bv->bv_offset = sg->offset;
 bv->bv_len = sg->length;
}
