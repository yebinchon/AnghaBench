
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tailcount ;
struct eerbuffer {int buffersize; int residual; int tail; } ;
typedef int count ;


 int ENOMEM ;
 int dasd_eer_get_free_bytes (struct eerbuffer*) ;
 int dasd_eer_read_buffer (struct eerbuffer*,char*,int) ;
 int dasd_eer_write_buffer (struct eerbuffer*,char*,int) ;

__attribute__((used)) static int dasd_eer_start_record(struct eerbuffer *eerb, int count)
{
 int tailcount;

 if (count + sizeof(count) > eerb->buffersize)
  return -ENOMEM;
 while (dasd_eer_get_free_bytes(eerb) < count + sizeof(count)) {
  if (eerb->residual > 0) {
   eerb->tail += eerb->residual;
   if (eerb->tail >= eerb->buffersize)
    eerb->tail -= eerb->buffersize;
   eerb->residual = -1;
  }
  dasd_eer_read_buffer(eerb, (char *) &tailcount,
         sizeof(tailcount));
  eerb->tail += tailcount;
  if (eerb->tail >= eerb->buffersize)
   eerb->tail -= eerb->buffersize;
 }
 dasd_eer_write_buffer(eerb, (char*) &count, sizeof(count));

 return 0;
}
