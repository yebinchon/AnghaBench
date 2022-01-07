
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct imx_sc_rpc_msg {int size; int func; int svc; int ver; } ;
struct imx_sc_msg_resp_pad_get {unsigned long val; } ;
struct imx_sc_msg_req_pad_get {unsigned int pad; struct imx_sc_rpc_msg hdr; } ;


 int IMX_SC_PAD_FUNC_GET ;
 int IMX_SC_RPC_SVC_PAD ;
 int IMX_SC_RPC_VERSION ;
 int imx_scu_call_rpc (int ,struct imx_sc_msg_req_pad_get*,int) ;
 int pinctrl_ipc_handle ;

int imx_pinconf_get_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
   unsigned long *config)
{
 struct imx_sc_msg_req_pad_get msg;
 struct imx_sc_msg_resp_pad_get *resp;
 struct imx_sc_rpc_msg *hdr = &msg.hdr;
 int ret;

 hdr->ver = IMX_SC_RPC_VERSION;
 hdr->svc = IMX_SC_RPC_SVC_PAD;
 hdr->func = IMX_SC_PAD_FUNC_GET;
 hdr->size = 2;

 msg.pad = pin_id;

 ret = imx_scu_call_rpc(pinctrl_ipc_handle, &msg, 1);
 if (ret)
  return ret;

 resp = (struct imx_sc_msg_resp_pad_get *)&msg;
 *config = resp->val;

 return 0;
}
