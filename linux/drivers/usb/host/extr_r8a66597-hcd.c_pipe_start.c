
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ pipenum; } ;
struct r8a66597_pipe {int pipectr; TYPE_1__ info; } ;
struct r8a66597 {int dummy; } ;


 int PID ;
 int PID_BUF ;
 int PID_NAK ;
 int PID_STALL ;
 int r8a66597_mdfy (struct r8a66597*,int ,int,int ) ;
 int r8a66597_read (struct r8a66597*,int ) ;

__attribute__((used)) static void pipe_start(struct r8a66597 *r8a66597, struct r8a66597_pipe *pipe)
{
 u16 tmp;

 tmp = r8a66597_read(r8a66597, pipe->pipectr) & PID;
 if ((pipe->info.pipenum != 0) & ((tmp & PID_STALL) != 0))
  r8a66597_mdfy(r8a66597, PID_NAK, PID, pipe->pipectr);
 r8a66597_mdfy(r8a66597, PID_BUF, PID, pipe->pipectr);
}
