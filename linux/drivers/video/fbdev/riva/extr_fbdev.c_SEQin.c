
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int PVIO; } ;
struct riva_par {TYPE_1__ riva; } ;


 unsigned char VGA_RD08 (int ,int) ;
 int VGA_WR08 (int ,int,unsigned char) ;

__attribute__((used)) static inline unsigned char SEQin(struct riva_par *par,
      unsigned char index)
{
 VGA_WR08(par->riva.PVIO, 0x3c4, index);
 return (VGA_RD08(par->riva.PVIO, 0x3c5));
}
