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
struct uio_info {struct sercos3_priv* priv; } ;
struct sercos3_priv {int /*<<< orphan*/  ier0_cache_lock; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uio_info*,struct sercos3_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct uio_info*,struct sercos3_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct uio_info *info, s32 irq_on)
{
	struct sercos3_priv *priv = info->priv;

	FUNC2(&priv->ier0_cache_lock);
	if (irq_on)
		FUNC1(info, priv);
	else
		FUNC0(info, priv);
	FUNC3(&priv->ier0_cache_lock);

	return 0;
}