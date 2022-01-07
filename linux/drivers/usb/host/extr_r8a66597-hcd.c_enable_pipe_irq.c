
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8a66597 {int dummy; } ;


 int BEMPE ;
 int BRDYE ;
 int INTENB0 ;
 int NRDYE ;
 int r8a66597_bclr (struct r8a66597*,int,int ) ;
 int r8a66597_bset (struct r8a66597*,int,unsigned long) ;
 int r8a66597_read (struct r8a66597*,int ) ;
 int r8a66597_write (struct r8a66597*,int,int ) ;

__attribute__((used)) static void enable_pipe_irq(struct r8a66597 *r8a66597, u16 pipenum,
       unsigned long reg)
{
 u16 tmp;

 tmp = r8a66597_read(r8a66597, INTENB0);
 r8a66597_bclr(r8a66597, BEMPE | NRDYE | BRDYE, INTENB0);
 r8a66597_bset(r8a66597, 1 << pipenum, reg);
 r8a66597_write(r8a66597, tmp, INTENB0);
}
