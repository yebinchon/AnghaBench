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
struct tsens_priv {TYPE_1__* ops; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct tsens_priv*) ;} ;

/* Variables and functions */
 struct tsens_priv* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct tsens_priv*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct tsens_priv *priv = FUNC0(pdev);

	if (priv->ops->disable)
		priv->ops->disable(priv);

	return 0;
}