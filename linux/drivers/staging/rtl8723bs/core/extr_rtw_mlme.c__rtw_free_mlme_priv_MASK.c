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
struct mlme_priv {scalar_t__ free_bss_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlme_priv*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(struct mlme_priv *pmlmepriv)
{
	if (pmlmepriv) {
		FUNC0(pmlmepriv);
		if (pmlmepriv->free_bss_buf) {
			FUNC1(pmlmepriv->free_bss_buf);
		}
	}
}