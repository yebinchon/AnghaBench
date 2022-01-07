
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_pipe {int dummy; } ;


 int DIR_OUT ;
 int EINVAL ;
 int IS_DIR_HOST ;
 int IS_DIR_IN ;
 int SHTNAK ;






 scalar_t__ usbhs_pipe_is_dcp (struct usbhs_pipe*) ;
 size_t usbhs_pipe_type (struct usbhs_pipe*) ;
 scalar_t__ usbhs_pipe_type_is (struct usbhs_pipe*,int const) ;
 int usbhsp_flags_set (struct usbhs_pipe*,int ) ;

__attribute__((used)) static int usbhsp_setup_pipecfg(struct usbhs_pipe *pipe, int is_host,
    int dir_in, u16 *pipecfg)
{
 u16 type = 0;
 u16 bfre = 0;
 u16 dblb = 0;
 u16 cntmd = 0;
 u16 dir = 0;
 u16 epnum = 0;
 u16 shtnak = 0;
 static const u16 type_array[] = {
  [130] = 133,
  [129] = 132,
  [128] = 131,
 };

 if (usbhs_pipe_is_dcp(pipe))
  return -EINVAL;
 type = type_array[usbhs_pipe_type(pipe)];


 if (usbhs_pipe_type_is(pipe, 128) ||
     usbhs_pipe_type_is(pipe, 130))
  bfre = 0;




 if (usbhs_pipe_type_is(pipe, 130))
  cntmd = 0;


 if (dir_in)
  usbhsp_flags_set(pipe, IS_DIR_HOST);

 if (!!is_host ^ !!dir_in)
  dir |= DIR_OUT;

 if (!dir)
  usbhsp_flags_set(pipe, IS_DIR_IN);


 if (usbhs_pipe_type_is(pipe, 130) &&
     !dir)
  shtnak = SHTNAK;


 epnum = 0;
 *pipecfg = type |
     bfre |
     dblb |
     cntmd |
     dir |
     shtnak |
     epnum;
 return 0;
}
