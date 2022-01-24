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
struct zd1201 {TYPE_1__* dev; int /*<<< orphan*/  ap; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {char* dev_addr; int addr_len; } ;

/* Variables and functions */
 int IW_ESSID_MAX_SIZE ; 
 int ZD1201_CNFAUTHENTICATION_OPENSYSTEM ; 
 int ZD1201_CNFAUTHENTICATION_SHAREDKEY ; 
 int /*<<< orphan*/  ZD1201_RID_CNFAUTHENTICATION ; 
 int /*<<< orphan*/  ZD1201_RID_CNFDESIREDSSID ; 
 int /*<<< orphan*/  ZD1201_RID_CNFOWNMACADDR ; 
 int /*<<< orphan*/  ZD1201_RID_CNFOWNSSID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct zd1201*) ; 
 int FUNC4 (struct zd1201*) ; 
 int FUNC5 (struct zd1201*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC6 (struct zd1201*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct zd1201 *zd, char *essid, int essidlen)
{
	int err, val;
	char buf[IW_ESSID_MAX_SIZE+2];

	err = FUNC3(zd);
	if (err)
		return err;

	val = ZD1201_CNFAUTHENTICATION_OPENSYSTEM;
	val |= ZD1201_CNFAUTHENTICATION_SHAREDKEY;
	err = FUNC6(zd, ZD1201_RID_CNFAUTHENTICATION, val);
	if (err)
		return err;

	*(__le16 *)buf = FUNC0(essidlen);
	FUNC1(buf+2, essid, essidlen);
	if (!zd->ap) {	/* Normal station */
		err = FUNC5(zd, ZD1201_RID_CNFDESIREDSSID, buf,
		    IW_ESSID_MAX_SIZE+2, 1);
		if (err)
			return err;
	} else {	/* AP */
		err = FUNC5(zd, ZD1201_RID_CNFOWNSSID, buf,
		    IW_ESSID_MAX_SIZE+2, 1);
		if (err)
			return err;
	}

	err = FUNC5(zd, ZD1201_RID_CNFOWNMACADDR, 
	    zd->dev->dev_addr, zd->dev->addr_len, 1);
	if (err)
		return err;

	err = FUNC4(zd);
	if (err)
		return err;

	FUNC2(100);
	return 0;
}