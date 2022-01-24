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

bool FUNC3(struct adapter *padapter, u8 NumOutPipe)
{
	struct registry_priv *pregistrypriv = &padapter->registrypriv;

	bool bWIFICfg = (pregistrypriv->wifi_spec) ? true : false;

	bool result = true;

	switch (NumOutPipe) {
	case 2:
		FUNC2(padapter, bWIFICfg);
		break;
	case 3:
	case 4:
		FUNC1(padapter, bWIFICfg);
		break;
	case 1:
		FUNC0(padapter);
		break;
	default:
		result = false;
		break;
	}

	return result;

}