
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short u16 ;
struct r8a66597 {int dummy; } ;


 int CFIFOSEL ;
 unsigned short CURPIPE ;
 unsigned short mbw_value (struct r8a66597*) ;
 int r8a66597_mdfy (struct r8a66597*,unsigned short,unsigned short,int ) ;
 int r8a66597_reg_wait (struct r8a66597*,int ,unsigned short,unsigned short) ;

__attribute__((used)) static inline void cfifo_change(struct r8a66597 *r8a66597, u16 pipenum)
{
 unsigned short mbw = mbw_value(r8a66597);

 r8a66597_mdfy(r8a66597, mbw | pipenum, mbw | CURPIPE, CFIFOSEL);
 r8a66597_reg_wait(r8a66597, CFIFOSEL, CURPIPE, pipenum);
}
