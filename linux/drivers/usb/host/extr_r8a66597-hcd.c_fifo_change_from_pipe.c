
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short pipenum; } ;
struct r8a66597_pipe {TYPE_1__ info; int fifosel; } ;
struct r8a66597 {int dummy; } ;


 unsigned short CURPIPE ;
 int D0FIFOSEL ;
 int D1FIFOSEL ;
 int cfifo_change (struct r8a66597*,int ) ;
 unsigned short mbw_value (struct r8a66597*) ;
 int r8a66597_mdfy (struct r8a66597*,unsigned short,unsigned short,int ) ;
 int r8a66597_reg_wait (struct r8a66597*,int ,unsigned short,unsigned short) ;

__attribute__((used)) static inline void fifo_change_from_pipe(struct r8a66597 *r8a66597,
      struct r8a66597_pipe *pipe)
{
 unsigned short mbw = mbw_value(r8a66597);

 cfifo_change(r8a66597, 0);
 r8a66597_mdfy(r8a66597, mbw | 0, mbw | CURPIPE, D0FIFOSEL);
 r8a66597_mdfy(r8a66597, mbw | 0, mbw | CURPIPE, D1FIFOSEL);

 r8a66597_mdfy(r8a66597, mbw | pipe->info.pipenum, mbw | CURPIPE,
        pipe->fifosel);
 r8a66597_reg_wait(r8a66597, pipe->fifosel, CURPIPE, pipe->info.pipenum);
}
