
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct imx_sc_rpc_msg {int size; int func; int svc; int ver; } ;
struct imx_sc_msg_req_pad_set {unsigned int pad; unsigned int val; struct imx_sc_rpc_msg hdr; } ;
struct imx_pinctrl {int dev; } ;


 unsigned int BM_PAD_CTL_GP_ENABLE ;
 unsigned int BM_PAD_CTL_IFMUX_ENABLE ;
 unsigned int BP_PAD_CTL_IFMUX ;
 int IMX_SC_PAD_FUNC_SET ;
 int IMX_SC_RPC_SVC_PAD ;
 int IMX_SC_RPC_VERSION ;
 int WARN_ON (int) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,unsigned int) ;
 int imx_scu_call_rpc (int ,struct imx_sc_msg_req_pad_set*,int) ;
 struct imx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pinctrl_ipc_handle ;

int imx_pinconf_set_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
   unsigned long *configs, unsigned num_configs)
{
 struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 struct imx_sc_msg_req_pad_set msg;
 struct imx_sc_rpc_msg *hdr = &msg.hdr;
 unsigned int mux = configs[0];
 unsigned int conf = configs[1];
 unsigned int val;
 int ret;




 WARN_ON(num_configs != 2);

 val = conf | BM_PAD_CTL_IFMUX_ENABLE | BM_PAD_CTL_GP_ENABLE;
 val |= mux << BP_PAD_CTL_IFMUX;

 hdr->ver = IMX_SC_RPC_VERSION;
 hdr->svc = IMX_SC_RPC_SVC_PAD;
 hdr->func = IMX_SC_PAD_FUNC_SET;
 hdr->size = 3;

 msg.pad = pin_id;
 msg.val = val;

 ret = imx_scu_call_rpc(pinctrl_ipc_handle, &msg, 1);

 dev_dbg(ipctl->dev, "write: pin_id %u config 0x%x val 0x%x\n",
  pin_id, conf, val);

 return ret;
}
