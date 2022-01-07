
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8a66597_pipe {int pipectr; } ;
struct r8a66597 {int dummy; } ;


 int SQCLR ;
 int SQSET ;
 int r8a66597_bset (struct r8a66597*,int ,int ) ;

__attribute__((used)) static void r8a66597_pipe_toggle(struct r8a66597 *r8a66597,
     struct r8a66597_pipe *pipe, int toggle)
{
 if (toggle)
  r8a66597_bset(r8a66597, SQSET, pipe->pipectr);
 else
  r8a66597_bset(r8a66597, SQCLR, pipe->pipectr);
}
