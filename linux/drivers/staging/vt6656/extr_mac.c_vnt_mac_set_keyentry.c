
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct vnt_private {TYPE_3__* usb; } ;
struct TYPE_4__ {int addr; int key_ctl; } ;
struct TYPE_5__ {int * swap; TYPE_1__ write; } ;
struct vnt_mac_set_key {int key; TYPE_2__ u; } ;
struct TYPE_6__ {int dev; } ;


 int MESSAGE_TYPE_SETKEY ;
 int MISCFIFO_KEYENTRYSIZE ;
 int MISCFIFO_KEYETRY0 ;
 int WLAN_KEY_LEN_CCMP ;
 int cpu_to_le16 (int) ;
 int dev_dbg (int *,char*,int,int,int *) ;
 int ether_addr_copy (int ,int *) ;
 int memcpy (int ,int *,int ) ;
 int swap (int ,int ) ;
 int vnt_control_out (struct vnt_private*,int ,int,int,int,int *) ;

void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
     u32 key_idx, u8 *addr, u8 *key)
{
 struct vnt_mac_set_key set_key;
 u16 offset;

 offset = MISCFIFO_KEYETRY0;
 offset += entry_idx * MISCFIFO_KEYENTRYSIZE;

 set_key.u.write.key_ctl = cpu_to_le16(key_ctl);
 ether_addr_copy(set_key.u.write.addr, addr);


 swap(set_key.u.swap[0], set_key.u.swap[1]);

 memcpy(set_key.key, key, WLAN_KEY_LEN_CCMP);

 dev_dbg(&priv->usb->dev, "offset %d key ctl %d set key %24ph\n",
  offset, key_ctl, (u8 *)&set_key);

 vnt_control_out(priv, MESSAGE_TYPE_SETKEY, offset,
   (u16)key_idx, sizeof(struct vnt_mac_set_key),
   (u8 *)&set_key);
}
