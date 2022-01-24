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
typedef  int /*<<< orphan*/  u32 ;
struct pwrctrl_priv {scalar_t__ ips_deny_time; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 struct pwrctrl_priv* FUNC0 (struct adapter*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

inline void FUNC2(struct adapter *padapter, u32 ms)
{
	struct pwrctrl_priv *pwrpriv = FUNC0(padapter);
	pwrpriv->ips_deny_time = jiffies + FUNC1(ms);
}