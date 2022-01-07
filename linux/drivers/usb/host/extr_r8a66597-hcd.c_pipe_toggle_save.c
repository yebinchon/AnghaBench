
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct r8a66597_pipe {int pipectr; } ;
struct r8a66597 {int dummy; } ;


 int SQMON ;
 int pipe_toggle_set (struct r8a66597*,struct r8a66597_pipe*,struct urb*,int) ;
 int r8a66597_read (struct r8a66597*,int ) ;

__attribute__((used)) static void pipe_toggle_save(struct r8a66597 *r8a66597,
        struct r8a66597_pipe *pipe,
        struct urb *urb)
{
 if (r8a66597_read(r8a66597, pipe->pipectr) & SQMON)
  pipe_toggle_set(r8a66597, pipe, urb, 1);
 else
  pipe_toggle_set(r8a66597, pipe, urb, 0);
}
