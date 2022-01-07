
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;
struct scatterlist {int dummy; } ;


 int usb_stor_bulk_transfer_buf (struct us_data*,unsigned int,void*,unsigned int,unsigned int*) ;
 int usb_stor_bulk_transfer_sglist (struct us_data*,unsigned int,struct scatterlist*,int,unsigned int,unsigned int*) ;

int usb_stor_bulk_transfer_sg(struct us_data* us, unsigned int pipe,
  void *buf, unsigned int length_left, int use_sg, int *residual)
{
 int result;
 unsigned int partial;


 if (use_sg) {

  result = usb_stor_bulk_transfer_sglist(us, pipe,
    (struct scatterlist *) buf, use_sg,
    length_left, &partial);
  length_left -= partial;
 } else {

  result = usb_stor_bulk_transfer_buf(us, pipe, buf,
    length_left, &partial);
  length_left -= partial;
 }


 if (residual)
  *residual = length_left;
 return result;
}
