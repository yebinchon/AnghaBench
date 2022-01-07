
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_device {int dummy; } ;


 int CLR_BIT ;
 int CLR_CLK ;
 int INB (struct sym_device*,int ) ;
 int S24C16_set_bit (struct sym_device*,int ,int *,int ) ;
 int SET_BIT ;
 int SET_CLK ;
 int nc_gpreg ;

__attribute__((used)) static void S24C16_do_bit(struct sym_device *np, u_char *read_bit, u_char write_bit,
    u_char *gpreg)
{
 S24C16_set_bit(np, write_bit, gpreg, SET_BIT);
 S24C16_set_bit(np, 0, gpreg, SET_CLK);
 if (read_bit)
  *read_bit = INB(np, nc_gpreg);
 S24C16_set_bit(np, 0, gpreg, CLR_CLK);
 S24C16_set_bit(np, 0, gpreg, CLR_BIT);
}
