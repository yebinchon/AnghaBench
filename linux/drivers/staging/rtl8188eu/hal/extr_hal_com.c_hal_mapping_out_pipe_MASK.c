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
typedef  int u8 ;
struct registry_priv {scalar_t__ wifi_spec; } ;
struct adapter {struct registry_priv registrypriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int) ; 

bool FUNC3(struct adapter *adapter, u8 numoutpipe)
{
	struct registry_priv *pregistrypriv = &adapter->registrypriv;
	bool wifi_cfg = (pregistrypriv->wifi_spec) ? true : false;
	bool result = true;

	switch (numoutpipe) {
	case 1:
		FUNC0(adapter);
		break;
	case 2:
		FUNC2(adapter, wifi_cfg);
		break;
	case 3:
		FUNC1(adapter, wifi_cfg);
		break;
	default:
		result = false;
	}
	return result;
}