
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acm_wb {int dmah; int buf; } ;
struct acm {int writesize; int dev; struct acm_wb* wb; } ;


 int ACM_NW ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void acm_write_buffers_free(struct acm *acm)
{
 int i;
 struct acm_wb *wb;

 for (wb = &acm->wb[0], i = 0; i < ACM_NW; i++, wb++)
  usb_free_coherent(acm->dev, acm->writesize, wb->buf, wb->dmah);
}
