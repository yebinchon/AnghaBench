
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int CONTROL (struct parport*) ;
 int PARPORT_MODE_PCSPP ;
 int clear_epp_timeout (struct parport*) ;
 unsigned char parport_gsc_read_data (struct parport*) ;
 int parport_gsc_write_data (struct parport*,unsigned char) ;
 unsigned char parport_readb (int ) ;
 int parport_writeb (int,int ) ;

__attribute__((used)) static int parport_SPP_supported(struct parport *pb)
{
 unsigned char r, w;







 clear_epp_timeout(pb);


 w = 0xc;
 parport_writeb (w, CONTROL (pb));






 r = parport_readb (CONTROL (pb));
 if ((r & 0xf) == w) {
  w = 0xe;
  parport_writeb (w, CONTROL (pb));
  r = parport_readb (CONTROL (pb));
  parport_writeb (0xc, CONTROL (pb));
  if ((r & 0xf) == w)
   return PARPORT_MODE_PCSPP;
 }



 w = 0xaa;
 parport_gsc_write_data (pb, w);
 r = parport_gsc_read_data (pb);
 if (r == w) {
  w = 0x55;
  parport_gsc_write_data (pb, w);
  r = parport_gsc_read_data (pb);
  if (r == w)
   return PARPORT_MODE_PCSPP;
 }

 return 0;
}
