
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acm_wb {int dmah; int buf; } ;
struct acm {int writesize; int dev; struct acm_wb* wb; } ;


 int ACM_NW ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int usb_alloc_coherent (int ,int ,int ,int *) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static int acm_write_buffers_alloc(struct acm *acm)
{
 int i;
 struct acm_wb *wb;

 for (wb = &acm->wb[0], i = 0; i < ACM_NW; i++, wb++) {
  wb->buf = usb_alloc_coherent(acm->dev, acm->writesize, GFP_KERNEL,
      &wb->dmah);
  if (!wb->buf) {
   while (i != 0) {
    --i;
    --wb;
    usb_free_coherent(acm->dev, acm->writesize,
        wb->buf, wb->dmah);
   }
   return -ENOMEM;
  }
 }
 return 0;
}
