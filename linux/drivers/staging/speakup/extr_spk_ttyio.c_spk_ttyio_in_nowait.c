
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ttyio_in (int ) ;

__attribute__((used)) static unsigned char spk_ttyio_in_nowait(void)
{
 u8 rv = ttyio_in(0);

 return (rv == 0xff) ? 0 : rv;
}
