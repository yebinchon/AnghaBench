#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct vnt_private {TYPE_3__* usb; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  key_ctl; } ;
struct TYPE_5__ {int /*<<< orphan*/ * swap; TYPE_1__ write; } ;
struct vnt_mac_set_key {int /*<<< orphan*/  key; TYPE_2__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_TYPE_SETKEY ; 
 int MISCFIFO_KEYENTRYSIZE ; 
 int MISCFIFO_KEYETRY0 ; 
 int /*<<< orphan*/  WLAN_KEY_LEN_CCMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnt_private*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 

void FUNC6(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
			  u32 key_idx, u8 *addr, u8 *key)
{
	struct vnt_mac_set_key set_key;
	u16 offset;

	offset = MISCFIFO_KEYETRY0;
	offset += entry_idx * MISCFIFO_KEYENTRYSIZE;

	set_key.u.write.key_ctl = FUNC0(key_ctl);
	FUNC2(set_key.u.write.addr, addr);

	/* swap over swap[0] and swap[1] to get correct write order */
	FUNC4(set_key.u.swap[0], set_key.u.swap[1]);

	FUNC3(set_key.key, key, WLAN_KEY_LEN_CCMP);

	FUNC1(&priv->usb->dev, "offset %d key ctl %d set key %24ph\n",
		offset, key_ctl, (u8 *)&set_key);

	FUNC5(priv, MESSAGE_TYPE_SETKEY, offset,
			(u16)key_idx, sizeof(struct vnt_mac_set_key),
			(u8 *)&set_key);
}