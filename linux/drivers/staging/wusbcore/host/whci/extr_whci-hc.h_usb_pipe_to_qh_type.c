
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t usb_pipetype (unsigned int) ;

__attribute__((used)) static inline unsigned usb_pipe_to_qh_type(unsigned pipe)
{
 static const unsigned type[] = {
  [132] = 128,
  [133] = 129,
  [134] = 130,
  [135] = 131,
 };
 return type[usb_pipetype(pipe)];
}
