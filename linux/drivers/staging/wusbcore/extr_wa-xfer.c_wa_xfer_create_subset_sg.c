
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; scalar_t__ offset; } ;


 unsigned int DIV_ROUND_UP (scalar_t__,int ) ;
 int GFP_ATOMIC ;
 int PAGE_SIZE ;
 struct scatterlist* kmalloc (int,int ) ;
 unsigned int min (unsigned int,unsigned int const) ;
 int sg_init_table (struct scatterlist*,unsigned int) ;
 int sg_mark_end (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,unsigned int,scalar_t__) ;

__attribute__((used)) static struct scatterlist *wa_xfer_create_subset_sg(struct scatterlist *in_sg,
 const unsigned int bytes_transferred,
 const unsigned int bytes_to_transfer, int *out_num_sgs)
{
 struct scatterlist *out_sg;
 unsigned int bytes_processed = 0, offset_into_current_page_data = 0,
  nents;
 struct scatterlist *current_xfer_sg = in_sg;
 struct scatterlist *current_seg_sg, *last_seg_sg;


 while ((current_xfer_sg) &&
   (bytes_processed < bytes_transferred)) {
  bytes_processed += current_xfer_sg->length;



  if (bytes_processed <= bytes_transferred)
   current_xfer_sg = sg_next(current_xfer_sg);
 }



 if (bytes_processed > bytes_transferred) {
  offset_into_current_page_data = current_xfer_sg->length -
   (bytes_processed - bytes_transferred);
 }


 nents = DIV_ROUND_UP((bytes_to_transfer +
  offset_into_current_page_data +
  current_xfer_sg->offset),
  PAGE_SIZE);

 out_sg = kmalloc((sizeof(struct scatterlist) * nents), GFP_ATOMIC);
 if (out_sg) {
  sg_init_table(out_sg, nents);



  last_seg_sg = current_seg_sg = out_sg;
  bytes_processed = 0;



  nents = 0;
  while ((bytes_processed < bytes_to_transfer) &&
    current_seg_sg && current_xfer_sg) {
   unsigned int page_len = min((current_xfer_sg->length -
    offset_into_current_page_data),
    (bytes_to_transfer - bytes_processed));

   sg_set_page(current_seg_sg, sg_page(current_xfer_sg),
    page_len,
    current_xfer_sg->offset +
    offset_into_current_page_data);

   bytes_processed += page_len;

   last_seg_sg = current_seg_sg;
   current_seg_sg = sg_next(current_seg_sg);
   current_xfer_sg = sg_next(current_xfer_sg);


   offset_into_current_page_data = 0;
   nents++;
  }



  sg_mark_end(last_seg_sg);
  *out_num_sgs = nents;
 }

 return out_sg;
}
