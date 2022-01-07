
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct iss_ipipe_device {int state; int stopping; int wait; } ;
struct iss_device {int dummy; } ;


 int ETIMEDOUT ;
 int IPIPE_GCK_MMR ;
 int IPIPE_GCK_MMR_REG ;
 int IPIPE_GCK_PIX ;
 int IPIPE_GCK_PIX_G0 ;
 int IPIPE_GCK_PIX_G1 ;
 int IPIPE_GCK_PIX_G2 ;
 int IPIPE_GCK_PIX_G3 ;


 int OMAP4_ISS_ISP_SUBCLK_IPIPE ;
 int OMAP4_ISS_MEM_ISP_IPIPE ;
 int atomic_set (int *,int ) ;
 int ipipe_configure (struct iss_ipipe_device*) ;
 int ipipe_enable (struct iss_ipipe_device*,int) ;
 int ipipe_print_status (struct iss_ipipe_device*) ;
 int iss_reg_write (struct iss_device*,int ,int ,int) ;
 int omap4iss_isp_subclk_disable (struct iss_device*,int ) ;
 int omap4iss_isp_subclk_enable (struct iss_device*,int ) ;
 int omap4iss_module_sync_idle (int *,int *,int *) ;
 struct iss_device* to_iss_device (struct iss_ipipe_device*) ;
 struct iss_ipipe_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ipipe_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct iss_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
 struct iss_device *iss = to_iss_device(ipipe);
 int ret = 0;

 if (ipipe->state == 128) {
  if (enable == 128)
   return 0;

  omap4iss_isp_subclk_enable(iss, OMAP4_ISS_ISP_SUBCLK_IPIPE);


  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_GCK_MMR,
         IPIPE_GCK_MMR_REG);


  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_GCK_PIX,
         IPIPE_GCK_PIX_G3 | IPIPE_GCK_PIX_G2 |
         IPIPE_GCK_PIX_G1 | IPIPE_GCK_PIX_G0);
 }

 switch (enable) {
 case 129:

  ipipe_configure(ipipe);
  ipipe_print_status(ipipe);

  atomic_set(&ipipe->stopping, 0);
  ipipe_enable(ipipe, 1);
  break;

 case 128:
  if (ipipe->state == 128)
   return 0;
  if (omap4iss_module_sync_idle(&sd->entity, &ipipe->wait,
           &ipipe->stopping))
   ret = -ETIMEDOUT;

  ipipe_enable(ipipe, 0);
  omap4iss_isp_subclk_disable(iss, OMAP4_ISS_ISP_SUBCLK_IPIPE);
  break;
 }

 ipipe->state = enable;
 return ret;
}
