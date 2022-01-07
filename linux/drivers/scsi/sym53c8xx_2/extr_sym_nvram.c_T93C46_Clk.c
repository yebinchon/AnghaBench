
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

__attribute__((used)) static void T93C46_Clk(struct sym_device *np, u_char *gpreg)
{
 OUTB(np, nc_gpreg, *gpreg | 0x04);
 INB(np, nc_mbox1);
 udelay(2);
 OUTB(np, nc_gpreg, *gpreg);
}
