
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_device {int dummy; } ;


 int OUTB (struct sym_device*,int ,int) ;
 int S24C16_do_bit (struct sym_device*,int*,int,int*) ;
 int nc_gpcntl ;

__attribute__((used)) static void S24C16_read_ack(struct sym_device *np, u_char *read_bit, u_char *gpreg,
      u_char *gpcntl)
{
 OUTB(np, nc_gpcntl, *gpcntl | 0x01);
 S24C16_do_bit(np, read_bit, 1, gpreg);
 OUTB(np, nc_gpcntl, *gpcntl);
}
