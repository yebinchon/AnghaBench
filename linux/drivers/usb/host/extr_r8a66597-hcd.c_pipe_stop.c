
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8a66597_pipe {int pipectr; } ;
struct r8a66597 {int dummy; } ;


 int PBUSY ;
 int PID ;
 int PID_NAK ;
 int PID_STALL ;
 int PID_STALL11 ;
 int r8a66597_mdfy (struct r8a66597*,int ,int,int ) ;
 int r8a66597_read (struct r8a66597*,int ) ;
 int r8a66597_reg_wait (struct r8a66597*,int ,int ,int ) ;

__attribute__((used)) static void pipe_stop(struct r8a66597 *r8a66597, struct r8a66597_pipe *pipe)
{
 u16 tmp;

 tmp = r8a66597_read(r8a66597, pipe->pipectr) & PID;
 if ((tmp & PID_STALL11) != PID_STALL11)
  r8a66597_mdfy(r8a66597, PID_STALL, PID, pipe->pipectr);
 r8a66597_mdfy(r8a66597, PID_NAK, PID, pipe->pipectr);
 r8a66597_reg_wait(r8a66597, pipe->pipectr, PBUSY, 0);
}
