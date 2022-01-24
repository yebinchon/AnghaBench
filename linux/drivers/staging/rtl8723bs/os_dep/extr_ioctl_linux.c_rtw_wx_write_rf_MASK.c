#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union iwreq_data {int dummy; } iwreq_data ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
                            struct iw_request_info *info,
                            union iwreq_data *wrqu, char *extra)
{
	struct adapter *padapter = (struct adapter *)FUNC1(dev);
	u32 path, addr, data32;


	path = *(u32 *)extra;
	addr = *((u32 *)extra + 1);
	data32 = *((u32 *)extra + 2);
/* 	DBG_871X("%s: path =%d addr = 0x%02x data = 0x%05x\n", __func__, path, addr, data32); */
	FUNC0(padapter, path, addr, 0xFFFFF, data32);

	return 0;
}