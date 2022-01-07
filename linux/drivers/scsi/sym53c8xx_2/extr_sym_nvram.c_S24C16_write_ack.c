
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_device {int dummy; } ;


 int OUTB (struct sym_device*,int ,int) ;
 int S24C16_do_bit (struct sym_device*,int *,int,int*) ;
 int nc_gpcntl ;

__attribute__((used)) static void S24C16_write_ack(struct sym_device *np, u_char write_bit, u_char *gpreg,
       u_char *gpcntl)
{
 OUTB(np, nc_gpcntl, *gpcntl & 0xfe);
 S24C16_do_bit(np, ((void*)0), write_bit, gpreg);
 OUTB(np, nc_gpcntl, *gpcntl);
}
