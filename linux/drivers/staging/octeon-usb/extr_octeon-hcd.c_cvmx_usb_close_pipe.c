
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_hcd {int dummy; } ;
struct cvmx_usb_pipe {int node; int transactions; } ;


 int EBUSY ;
 int kfree (struct cvmx_usb_pipe*) ;
 int list_del (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static int cvmx_usb_close_pipe(struct octeon_hcd *usb,
          struct cvmx_usb_pipe *pipe)
{

 if (!list_empty(&pipe->transactions))
  return -EBUSY;

 list_del(&pipe->node);
 kfree(pipe);

 return 0;
}
