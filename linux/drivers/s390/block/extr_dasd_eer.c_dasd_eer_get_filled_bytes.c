
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eerbuffer {scalar_t__ head; scalar_t__ tail; int buffersize; } ;



__attribute__((used)) static int dasd_eer_get_filled_bytes(struct eerbuffer *eerb)
{

 if (eerb->head >= eerb->tail)
  return eerb->head - eerb->tail;
 return eerb->buffersize - eerb->tail + eerb->head;
}
