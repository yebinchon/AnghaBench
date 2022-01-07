
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPK_SYNTH_TIMEOUT ;
 unsigned char ttyio_in (int ) ;

__attribute__((used)) static unsigned char spk_ttyio_in(void)
{
 return ttyio_in(SPK_SYNTH_TIMEOUT);
}
