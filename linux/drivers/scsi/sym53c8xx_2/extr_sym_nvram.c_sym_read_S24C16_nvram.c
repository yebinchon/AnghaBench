
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_device {int dummy; } ;


 int CLR_BIT ;
 int CLR_CLK ;
 int INB (struct sym_device*,int ) ;
 int OUTB (struct sym_device*,int ,int) ;
 int S24C16_read_byte (struct sym_device*,int*,int,int*,int*) ;
 int S24C16_set_bit (struct sym_device*,int ,int*,int ) ;
 int S24C16_start (struct sym_device*,int*) ;
 int S24C16_stop (struct sym_device*,int*) ;
 int S24C16_write_byte (struct sym_device*,int*,int,int*,int*) ;
 int nc_gpcntl ;
 int nc_gpreg ;

__attribute__((used)) static int sym_read_S24C16_nvram(struct sym_device *np, int offset, u_char *data, int len)
{
 u_char gpcntl, gpreg;
 u_char old_gpcntl, old_gpreg;
 u_char ack_data;
 int retv = 1;
 int x;


 old_gpreg = INB(np, nc_gpreg);
 old_gpcntl = INB(np, nc_gpcntl);
 gpcntl = old_gpcntl & 0x1c;


 OUTB(np, nc_gpreg, old_gpreg);
 OUTB(np, nc_gpcntl, gpcntl);


 gpreg = old_gpreg;
 S24C16_set_bit(np, 0, &gpreg, CLR_CLK);
 S24C16_set_bit(np, 0, &gpreg, CLR_BIT);


 S24C16_stop(np, &gpreg);


 S24C16_start(np, &gpreg);


 S24C16_write_byte(np, &ack_data,
  0xa0 | ((offset >> 7) & 0x0e), &gpreg, &gpcntl);
 if (ack_data & 0x01)
  goto out;


 S24C16_write_byte(np, &ack_data,
  offset & 0xff, &gpreg, &gpcntl);
 if (ack_data & 0x01)
  goto out;


 S24C16_start(np, &gpreg);


 S24C16_write_byte(np, &ack_data,
  0xa1 | ((offset >> 7) & 0x0e), &gpreg, &gpcntl);
 if (ack_data & 0x01)
  goto out;


 gpcntl |= 0x01;
 OUTB(np, nc_gpcntl, gpcntl);


 for (x = 0; x < len; x++)
  S24C16_read_byte(np, &data[x], (x == (len-1)), &gpreg, &gpcntl);


 gpcntl &= 0xfe;
 OUTB(np, nc_gpcntl, gpcntl);
 S24C16_stop(np, &gpreg);
 retv = 0;
out:

 OUTB(np, nc_gpcntl, old_gpcntl);
 OUTB(np, nc_gpreg, old_gpreg);

 return retv;
}
