
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;


 int PCM3724_DIO_DIR_A0_OUT ;
 int PCM3724_DIO_DIR_A1_OUT ;
 int PCM3724_DIO_DIR_B0_OUT ;
 int PCM3724_DIO_DIR_B1_OUT ;
 int PCM3724_DIO_DIR_C0_OUT ;
 int PCM3724_DIO_DIR_C1_OUT ;

__attribute__((used)) static int compute_buffer(int config, int devno, struct comedi_subdevice *s)
{

 if (s->io_bits & 0x0000ff) {
  if (devno == 0)
   config |= PCM3724_DIO_DIR_A0_OUT;
  else
   config |= PCM3724_DIO_DIR_A1_OUT;
 }
 if (s->io_bits & 0x00ff00) {
  if (devno == 0)
   config |= PCM3724_DIO_DIR_B0_OUT;
  else
   config |= PCM3724_DIO_DIR_B1_OUT;
 }
 if (s->io_bits & 0xff0000) {
  if (devno == 0)
   config |= PCM3724_DIO_DIR_C0_OUT;
  else
   config |= PCM3724_DIO_DIR_C1_OUT;
 }
 return config;
}
