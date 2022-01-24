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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  IEEE_MLME_STA_DEAUTH 129 
#define  IEEE_MLME_STA_DISASSOC 128 
 struct _adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, u32 command, u32 reason)
{
	struct _adapter *padapter = FUNC0(dev);

	switch (command) {
	case IEEE_MLME_STA_DEAUTH:
		if (!FUNC1(padapter))
			return -1;
		break;
	case IEEE_MLME_STA_DISASSOC:
		if (!FUNC1(padapter))
			return -1;
		break;
	default:
		return -EOPNOTSUPP;
	}
	return 0;
}