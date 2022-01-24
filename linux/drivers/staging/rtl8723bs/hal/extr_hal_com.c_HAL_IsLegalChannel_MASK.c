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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  wireless_mode; } ;
struct adapter {TYPE_1__ registrypriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(struct adapter *Adapter, u32 Channel)
{
	bool bLegalChannel = true;

	if ((Channel <= 14) && (Channel >= 1)) {
		if (FUNC1(Adapter->registrypriv.wireless_mode) == false) {
			bLegalChannel = false;
			FUNC0("(Channel <= 14) && (Channel >= 1) but wireless_mode do not support 2.4G\n");
		}
	} else {
		bLegalChannel = false;
		FUNC0("Channel is Invalid !!!\n");
	}

	return bLegalChannel;
}