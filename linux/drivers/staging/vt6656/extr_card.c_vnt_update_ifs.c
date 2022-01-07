
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {scalar_t__ packet_type; int slot; int rf_type; scalar_t__ eifs; void* difs; void* sifs; int bb_type; scalar_t__ short_slot_time; } ;


 int BB_TYPE_11A ;
 int BB_TYPE_11B ;
 scalar_t__ C_EIFS ;
 void* C_SIFS_A ;
 void* C_SIFS_BG ;
 int C_SLOT_LONG ;
 int C_SLOT_SHORT ;
 int MAC_REG_CWMAXMIN0 ;
 int MAC_REG_SIFS ;
 int MESSAGE_REQUEST_MACREG ;
 int MESSAGE_TYPE_WRITE ;
 scalar_t__ PK_TYPE_11A ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int,int*) ;

void vnt_update_ifs(struct vnt_private *priv)
{
 u8 max_min = 0;
 u8 data[4];

 if (priv->packet_type == PK_TYPE_11A) {
  priv->slot = C_SLOT_SHORT;
  priv->sifs = C_SIFS_A;
  priv->difs = C_SIFS_A + 2 * C_SLOT_SHORT;
  max_min = 4;
 } else {
  priv->sifs = C_SIFS_BG;

  if (priv->short_slot_time) {
   priv->slot = C_SLOT_SHORT;
   max_min = 4;
  } else {
   priv->slot = C_SLOT_LONG;
   max_min = 5;
  }

  priv->difs = C_SIFS_BG + 2 * priv->slot;
 }

 priv->eifs = C_EIFS;

 switch (priv->rf_type) {
 case 129:
  if (priv->bb_type != BB_TYPE_11B) {
   priv->sifs -= 1;
   priv->difs -= 1;
   break;
  }

 case 135:
 case 134:
 case 133:
  if (priv->bb_type != BB_TYPE_11B)
   break;

 case 131:
 case 130:
 case 128:
  priv->sifs -= 3;
  priv->difs -= 3;
  break;
 case 132:
  if (priv->bb_type == BB_TYPE_11A) {
   priv->sifs -= 5;
   priv->difs -= 5;
  } else {
   priv->sifs -= 2;
   priv->difs -= 2;
  }

  break;
 }

 data[0] = (u8)priv->sifs;
 data[1] = (u8)priv->difs;
 data[2] = (u8)priv->eifs;
 data[3] = (u8)priv->slot;

 vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_SIFS,
   MESSAGE_REQUEST_MACREG, 4, &data[0]);

 max_min |= 0xa0;

 vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_CWMAXMIN0,
   MESSAGE_REQUEST_MACREG, 1, &max_min);
}
