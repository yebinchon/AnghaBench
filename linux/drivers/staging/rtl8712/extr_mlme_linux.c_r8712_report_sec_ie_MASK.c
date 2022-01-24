#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wrqu ;
struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef  scalar_t__ uint ;
typedef  scalar_t__ u8 ;
struct _adapter {int /*<<< orphan*/  pnetdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IWEVCUSTOM ; 
 scalar_t__ IW_CUSTOM_MAX ; 
 scalar_t__ _WPA_IE_ID_ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union iwreq_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,scalar_t__*) ; 

void FUNC5(struct _adapter *adapter, u8 authmode, u8 *sec_ie)
{
	uint len;
	u8 *buff, *p, i;
	union iwreq_data wrqu;

	buff = NULL;
	if (authmode == _WPA_IE_ID_) {
		buff = FUNC1(IW_CUSTOM_MAX, GFP_ATOMIC);
		if (!buff)
			return;
		p = buff;
		p += FUNC3(p, "ASSOCINFO(ReqIEs=");
		len = sec_ie[1] + 2;
		len =  (len < IW_CUSTOM_MAX) ? len : IW_CUSTOM_MAX;
		for (i = 0; i < len; i++)
			p += FUNC3(p, "%02x", sec_ie[i]);
		p += FUNC3(p, ")");
		FUNC2(&wrqu, 0, sizeof(wrqu));
		wrqu.data.length = p - buff;
		wrqu.data.length = (wrqu.data.length < IW_CUSTOM_MAX) ?
				   wrqu.data.length : IW_CUSTOM_MAX;
		FUNC4(adapter->pnetdev, IWEVCUSTOM, &wrqu, buff);
		FUNC0(buff);
	}
}