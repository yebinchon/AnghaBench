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
struct seq_file {int dummy; } ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,struct seq_file*) ; 
 struct btc_coexist* FUNC1 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

void FUNC3(struct rtl_priv *rtlpriv, struct seq_file *m)
{
	struct btc_coexist *btcoexist = FUNC1(rtlpriv);

	if (!btcoexist) {
		FUNC2(m, "btc_coexist context is NULL!\n");
		return;
	}

	FUNC0(btcoexist, m);
}