
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_device {int dummy; } ;


 int S24C16_do_bit (struct sym_device*,int *,int,int*) ;
 int S24C16_read_ack (struct sym_device*,int*,int*,int*) ;

__attribute__((used)) static void S24C16_write_byte(struct sym_device *np, u_char *ack_data, u_char write_data,
        u_char *gpreg, u_char *gpcntl)
{
 int x;

 for (x = 0; x < 8; x++)
  S24C16_do_bit(np, ((void*)0), (write_data >> (7 - x)) & 0x01, gpreg);

 S24C16_read_ack(np, ack_data, gpreg, gpcntl);
}
