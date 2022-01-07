
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_usb_pipe {scalar_t__ pid_toggle; } ;



__attribute__((used)) static inline int cvmx_usb_get_data_pid(struct cvmx_usb_pipe *pipe)
{
 if (pipe->pid_toggle)
  return 2;
 return 0;
}
