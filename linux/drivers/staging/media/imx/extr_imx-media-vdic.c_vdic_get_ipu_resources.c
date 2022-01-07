
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdic_priv {int sd; struct ipuv3_channel* vdi_in_ch_n; int ipu; struct ipuv3_channel* vdi_in_ch; struct ipuv3_channel* vdi_in_ch_p; int csi_direct; struct ipuv3_channel* vdi; } ;
struct ipuv3_channel {int dummy; } ;
typedef struct ipuv3_channel ipu_vdi ;


 int IPUV3_CHANNEL_MEM_VDI_CUR ;
 int IPUV3_CHANNEL_MEM_VDI_NEXT ;
 int IPUV3_CHANNEL_MEM_VDI_PREV ;
 scalar_t__ IS_ERR (struct ipuv3_channel*) ;
 int PTR_ERR (struct ipuv3_channel*) ;
 struct ipuv3_channel* ipu_idmac_get (int ,int) ;
 struct ipuv3_channel* ipu_vdi_get (int ) ;
 int v4l2_err (int *,char*,...) ;
 int vdic_put_ipu_resources (struct vdic_priv*) ;

__attribute__((used)) static int vdic_get_ipu_resources(struct vdic_priv *priv)
{
 int ret, err_chan;
 struct ipuv3_channel *ch;
 struct ipu_vdi *vdi;

 vdi = ipu_vdi_get(priv->ipu);
 if (IS_ERR(vdi)) {
  v4l2_err(&priv->sd, "failed to get VDIC\n");
  ret = PTR_ERR(vdi);
  goto out;
 }
 priv->vdi = vdi;

 if (!priv->csi_direct) {
  ch = ipu_idmac_get(priv->ipu, IPUV3_CHANNEL_MEM_VDI_PREV);
  if (IS_ERR(ch)) {
   err_chan = IPUV3_CHANNEL_MEM_VDI_PREV;
   ret = PTR_ERR(ch);
   goto out_err_chan;
  }
  priv->vdi_in_ch_p = ch;

  ch = ipu_idmac_get(priv->ipu, IPUV3_CHANNEL_MEM_VDI_CUR);
  if (IS_ERR(ch)) {
   err_chan = IPUV3_CHANNEL_MEM_VDI_CUR;
   ret = PTR_ERR(ch);
   goto out_err_chan;
  }
  priv->vdi_in_ch = ch;

  ch = ipu_idmac_get(priv->ipu, IPUV3_CHANNEL_MEM_VDI_NEXT);
  if (IS_ERR(ch)) {
   err_chan = IPUV3_CHANNEL_MEM_VDI_NEXT;
   ret = PTR_ERR(ch);
   goto out_err_chan;
  }
  priv->vdi_in_ch_n = ch;
 }

 return 0;

out_err_chan:
 v4l2_err(&priv->sd, "could not get IDMAC channel %u\n", err_chan);
out:
 vdic_put_ipu_resources(priv);
 return ret;
}
