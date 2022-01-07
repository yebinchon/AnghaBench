
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ usb_pipebulk (int) ;
 scalar_t__ usb_pipecontrol (int) ;
 scalar_t__ usb_pipeint (int) ;
 scalar_t__ usb_pipeisoc (int) ;

__attribute__((used)) static inline char *usb_pipetype_str(int pipe)
{
 if (usb_pipeisoc(pipe))
  return "Isoc";
 if (usb_pipeint(pipe))
  return "Int";
 if (usb_pipecontrol(pipe))
  return "Ctrl";
 if (usb_pipebulk(pipe))
  return "Bulk";
 return "?";
}
