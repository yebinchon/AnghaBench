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
struct stub_priv {int num_urbs; int /*<<< orphan*/ * urbs; } ;
struct stub_device {TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stub_priv*) ; 
 struct stub_priv* FUNC2 (struct stub_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct stub_device *sdev)
{
	struct stub_priv *priv;
	int i;

	FUNC0(&sdev->udev->dev, "Stub device cleaning up urbs\n");

	while ((priv = FUNC2(sdev))) {
		for (i = 0; i < priv->num_urbs; i++)
			FUNC3(priv->urbs[i]);

		FUNC1(priv);
	}
}