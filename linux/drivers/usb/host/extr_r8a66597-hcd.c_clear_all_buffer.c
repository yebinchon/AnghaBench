
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ pipenum; } ;
struct r8a66597_pipe {int pipectr; TYPE_1__ info; } ;
struct r8a66597 {int dummy; } ;


 int ACLRM ;
 int pipe_stop (struct r8a66597*,struct r8a66597_pipe*) ;
 int r8a66597_bclr (struct r8a66597*,int ,int ) ;
 int r8a66597_bset (struct r8a66597*,int ,int ) ;
 int r8a66597_read (struct r8a66597*,int ) ;

__attribute__((used)) static void clear_all_buffer(struct r8a66597 *r8a66597,
        struct r8a66597_pipe *pipe)
{
 u16 tmp;

 if (!pipe || pipe->info.pipenum == 0)
  return;

 pipe_stop(r8a66597, pipe);
 r8a66597_bset(r8a66597, ACLRM, pipe->pipectr);
 tmp = r8a66597_read(r8a66597, pipe->pipectr);
 tmp = r8a66597_read(r8a66597, pipe->pipectr);
 tmp = r8a66597_read(r8a66597, pipe->pipectr);
 r8a66597_bclr(r8a66597, ACLRM, pipe->pipectr);
}
