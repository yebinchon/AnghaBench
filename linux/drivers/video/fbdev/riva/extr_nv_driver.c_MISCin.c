
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int PVIO; } ;
struct riva_par {TYPE_1__ riva; } ;


 unsigned char VGA_RD08 (int ,int) ;

__attribute__((used)) static inline unsigned char MISCin(struct riva_par *par)
{
 return (VGA_RD08(par->riva.PVIO, 0x3cc));
}
