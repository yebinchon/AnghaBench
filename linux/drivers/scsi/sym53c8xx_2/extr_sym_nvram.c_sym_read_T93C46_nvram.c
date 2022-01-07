
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct sym_device {int dummy; } ;
typedef int Tekram_nvram ;


 int INB (struct sym_device*,int ) ;
 int OUTB (struct sym_device*,int ,int) ;
 int T93C46_Read_Data (struct sym_device*,int *,int,int*) ;
 int nc_gpcntl ;
 int nc_gpreg ;

__attribute__((used)) static int sym_read_T93C46_nvram(struct sym_device *np, Tekram_nvram *nvram)
{
 u_char gpcntl, gpreg;
 u_char old_gpcntl, old_gpreg;
 int retv;


 old_gpreg = INB(np, nc_gpreg);
 old_gpcntl = INB(np, nc_gpcntl);



 gpreg = old_gpreg & 0xe9;
 OUTB(np, nc_gpreg, gpreg);
 gpcntl = (old_gpcntl & 0xe9) | 0x09;
 OUTB(np, nc_gpcntl, gpcntl);


 retv = T93C46_Read_Data(np, (u_short *) nvram,
    sizeof(*nvram) / sizeof(short), &gpreg);


 OUTB(np, nc_gpcntl, old_gpcntl);
 OUTB(np, nc_gpreg, old_gpreg);

 return retv;
}
