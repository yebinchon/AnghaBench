
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prp_priv {struct ipuv3_channel* rot_out_ch; struct ipuv3_channel* rot_in_ch; struct ipuv3_channel* out_ch; struct ipuv3_channel* ic; struct imx_ic_priv* ic_priv; } ;
struct ipuv3_channel {int dummy; } ;
typedef struct ipuv3_channel ipu_ic ;
struct imx_ic_priv {int task_id; int sd; int ipu; } ;
struct TYPE_2__ {int rot_out_ch; int rot_in_ch; int out_ch; } ;


 scalar_t__ IS_ERR (struct ipuv3_channel*) ;
 int PTR_ERR (struct ipuv3_channel*) ;
 struct ipuv3_channel* ipu_ic_get (int ,int) ;
 struct ipuv3_channel* ipu_idmac_get (int ,int ) ;
 TYPE_1__* prp_channel ;
 int prp_put_ipu_resources (struct prp_priv*) ;
 int v4l2_err (int *,char*,...) ;

__attribute__((used)) static int prp_get_ipu_resources(struct prp_priv *priv)
{
 struct imx_ic_priv *ic_priv = priv->ic_priv;
 struct ipu_ic *ic;
 struct ipuv3_channel *out_ch, *rot_in_ch, *rot_out_ch;
 int ret, task = ic_priv->task_id;

 ic = ipu_ic_get(ic_priv->ipu, task);
 if (IS_ERR(ic)) {
  v4l2_err(&ic_priv->sd, "failed to get IC\n");
  ret = PTR_ERR(ic);
  goto out;
 }
 priv->ic = ic;

 out_ch = ipu_idmac_get(ic_priv->ipu, prp_channel[task].out_ch);
 if (IS_ERR(out_ch)) {
  v4l2_err(&ic_priv->sd, "could not get IDMAC channel %u\n",
    prp_channel[task].out_ch);
  ret = PTR_ERR(out_ch);
  goto out;
 }
 priv->out_ch = out_ch;

 rot_in_ch = ipu_idmac_get(ic_priv->ipu, prp_channel[task].rot_in_ch);
 if (IS_ERR(rot_in_ch)) {
  v4l2_err(&ic_priv->sd, "could not get IDMAC channel %u\n",
    prp_channel[task].rot_in_ch);
  ret = PTR_ERR(rot_in_ch);
  goto out;
 }
 priv->rot_in_ch = rot_in_ch;

 rot_out_ch = ipu_idmac_get(ic_priv->ipu, prp_channel[task].rot_out_ch);
 if (IS_ERR(rot_out_ch)) {
  v4l2_err(&ic_priv->sd, "could not get IDMAC channel %u\n",
    prp_channel[task].rot_out_ch);
  ret = PTR_ERR(rot_out_ch);
  goto out;
 }
 priv->rot_out_ch = rot_out_ch;

 return 0;
out:
 prp_put_ipu_resources(priv);
 return ret;
}
