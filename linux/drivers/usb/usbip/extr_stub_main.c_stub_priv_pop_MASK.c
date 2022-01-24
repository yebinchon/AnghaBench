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
struct stub_priv {int dummy; } ;
struct stub_device {int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  priv_free; int /*<<< orphan*/  priv_tx; int /*<<< orphan*/  priv_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct stub_priv* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct stub_priv *FUNC3(struct stub_device *sdev)
{
	unsigned long flags;
	struct stub_priv *priv;

	FUNC0(&sdev->priv_lock, flags);

	priv = FUNC2(&sdev->priv_init);
	if (priv)
		goto done;

	priv = FUNC2(&sdev->priv_tx);
	if (priv)
		goto done;

	priv = FUNC2(&sdev->priv_free);

done:
	FUNC1(&sdev->priv_lock, flags);

	return priv;
}