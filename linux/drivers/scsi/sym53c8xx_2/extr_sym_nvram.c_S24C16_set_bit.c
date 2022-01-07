
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_device {int dummy; } ;




 int INB (struct sym_device*,int ) ;
 int OUTB (struct sym_device*,int ,int) ;


 int nc_gpreg ;
 int nc_mbox1 ;
 int udelay (int) ;

__attribute__((used)) static void S24C16_set_bit(struct sym_device *np, u_char write_bit, u_char *gpreg,
     int bit_mode)
{
 udelay(5);
 switch (bit_mode) {
 case 129:
  *gpreg |= write_bit;
  break;
 case 131:
  *gpreg &= 0xfe;
  break;
 case 128:
  *gpreg |= 0x02;
  break;
 case 130:
  *gpreg &= 0xfd;
  break;

 }
 OUTB(np, nc_gpreg, *gpreg);
 INB(np, nc_mbox1);
 udelay(5);
}
