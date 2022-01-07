
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {int rf_type; } ;
void vnt_rf_rssi_to_dbm(struct vnt_private *priv, u8 rssi, long *dbm)
{
 u8 idx = ((rssi & 0xc0) >> 6) & 0x03;
 long b = rssi & 0x3f;
 long a = 0;
 u8 airoharf[4] = {0, 18, 0, 40};

 switch (priv->rf_type) {
 case 132:
 case 131:
 case 133:
 case 130:
 case 129:
 case 128:
  a = airoharf[idx];
  break;
 default:
  break;
 }

 *dbm = -1 * (a + b * 2);
}
