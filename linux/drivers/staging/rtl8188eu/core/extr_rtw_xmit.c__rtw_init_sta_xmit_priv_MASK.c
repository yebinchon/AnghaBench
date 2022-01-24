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
struct sta_xmit_priv {int /*<<< orphan*/  apsd; int /*<<< orphan*/  legacy_dz; int /*<<< orphan*/  vo_q; int /*<<< orphan*/  vi_q; int /*<<< orphan*/  bk_q; int /*<<< orphan*/  be_q; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sta_xmit_priv *psta_xmitpriv)
{
	FUNC2((unsigned char *)psta_xmitpriv, 0, sizeof(struct sta_xmit_priv));
	FUNC3(&psta_xmitpriv->lock);
	FUNC1(&psta_xmitpriv->be_q);
	FUNC1(&psta_xmitpriv->bk_q);
	FUNC1(&psta_xmitpriv->vi_q);
	FUNC1(&psta_xmitpriv->vo_q);
	FUNC0(&psta_xmitpriv->legacy_dz);
	FUNC0(&psta_xmitpriv->apsd);
}