
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_device {int dummy; } ;


 int INB (struct sym_device*,int ) ;
 int T93C46_Clk (struct sym_device*,int *) ;
 int nc_gpreg ;
 int udelay (int) ;

__attribute__((used)) static void T93C46_Read_Bit(struct sym_device *np, u_char *read_bit, u_char *gpreg)
{
 udelay(2);
 T93C46_Clk(np, gpreg);
 *read_bit = INB(np, nc_gpreg);
}
