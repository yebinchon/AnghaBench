
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;


 int CFIFOSEL ;
 int CSSTS ;
 int EBUSY ;
 int PID_MASK ;
 int udelay (int) ;
 scalar_t__ usbhs_mod_is_host (struct usbhs_priv*) ;
 int usbhs_pipe_disable (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 int usbhs_write (struct usbhs_priv*,int ,int ) ;
 int usbhsp_pipectrl_get (struct usbhs_pipe*) ;

__attribute__((used)) static int usbhsp_pipe_barrier(struct usbhs_pipe *pipe)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 int timeout = 1024;
 u16 mask = usbhs_mod_is_host(priv) ? (CSSTS | PID_MASK) : PID_MASK;
 usbhs_write(priv, CFIFOSEL, 0);
 usbhs_pipe_disable(pipe);

 do {
  if (!(usbhsp_pipectrl_get(pipe) & mask))
   return 0;

  udelay(10);

 } while (timeout--);

 return -EBUSY;
}
