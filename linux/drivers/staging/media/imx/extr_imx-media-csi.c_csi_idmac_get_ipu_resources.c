
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {int dummy; } ;
typedef struct ipuv3_channel ipu_smfc ;
struct csi_priv {int smfc_id; struct ipuv3_channel* idmac_ch; int sd; int ipu; struct ipuv3_channel* smfc; } ;


 int IPUV3_CHANNEL_CSI0 ;
 scalar_t__ IS_ERR (struct ipuv3_channel*) ;
 int PTR_ERR (struct ipuv3_channel*) ;
 int csi_idmac_put_ipu_resources (struct csi_priv*) ;
 struct ipuv3_channel* ipu_idmac_get (int ,int) ;
 struct ipuv3_channel* ipu_smfc_get (int ,int) ;
 int v4l2_err (int *,char*,...) ;

__attribute__((used)) static int csi_idmac_get_ipu_resources(struct csi_priv *priv)
{
 int ch_num, ret;
 struct ipu_smfc *smfc;
 struct ipuv3_channel *idmac_ch;

 ch_num = IPUV3_CHANNEL_CSI0 + priv->smfc_id;

 smfc = ipu_smfc_get(priv->ipu, ch_num);
 if (IS_ERR(smfc)) {
  v4l2_err(&priv->sd, "failed to get SMFC\n");
  ret = PTR_ERR(smfc);
  goto out;
 }
 priv->smfc = smfc;

 idmac_ch = ipu_idmac_get(priv->ipu, ch_num);
 if (IS_ERR(idmac_ch)) {
  v4l2_err(&priv->sd, "could not get IDMAC channel %u\n",
    ch_num);
  ret = PTR_ERR(idmac_ch);
  goto out;
 }
 priv->idmac_ch = idmac_ch;

 return 0;
out:
 csi_idmac_put_ipu_resources(priv);
 return ret;
}
