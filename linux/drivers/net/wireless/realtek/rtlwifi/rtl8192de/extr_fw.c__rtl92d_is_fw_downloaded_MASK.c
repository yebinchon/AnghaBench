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
struct rtl_priv {int dummy; } ;

/* Variables and functions */
 int MCUFWDL_RDY ; 
 int /*<<< orphan*/  REG_MCUFWDL ; 
 int FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct rtl_priv *rtlpriv)
{
	return (FUNC0(rtlpriv, REG_MCUFWDL) & MCUFWDL_RDY) ?
		true : false;
}