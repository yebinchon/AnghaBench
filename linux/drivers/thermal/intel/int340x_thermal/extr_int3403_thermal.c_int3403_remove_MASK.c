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
struct platform_device {int dummy; } ;
struct int3403_priv {int type; } ;

/* Variables and functions */
#define  INT3403_TYPE_BATTERY 130 
#define  INT3403_TYPE_CHARGER 129 
#define  INT3403_TYPE_SENSOR 128 
 int /*<<< orphan*/  FUNC0 (struct int3403_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct int3403_priv*) ; 
 struct int3403_priv* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct int3403_priv *priv = FUNC2(pdev);

	switch (priv->type) {
	case INT3403_TYPE_SENSOR:
		FUNC1(priv);
		break;
	case INT3403_TYPE_CHARGER:
	case INT3403_TYPE_BATTERY:
		FUNC0(priv);
		break;
	default:
		break;
	}

	return 0;
}