
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq4802 {scalar_t__ regs; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static u8 bq4802_read_mem(struct bq4802 *p, int off)
{
 return readb(p->regs + off);
}
