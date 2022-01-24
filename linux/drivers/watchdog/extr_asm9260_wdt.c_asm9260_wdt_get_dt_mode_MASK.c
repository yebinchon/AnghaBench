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
struct asm9260_wdt_priv {TYPE_1__* dev; void* mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 void* DEBUG ; 
 void* HW_RESET ; 
 void* SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static void FUNC3(struct asm9260_wdt_priv *priv)
{
	const char *tmp;
	int ret;

	/* default mode */
	priv->mode = HW_RESET;

	ret = FUNC1(priv->dev->of_node,
				      "alphascale,mode", &tmp);
	if (ret < 0)
		return;

	if (!FUNC2(tmp, "hw"))
		priv->mode = HW_RESET;
	else if (!FUNC2(tmp, "sw"))
		priv->mode = SW_RESET;
	else if (!FUNC2(tmp, "debug"))
		priv->mode = DEBUG;
	else
		FUNC0(priv->dev, "unknown reset-type: %s. Using default \"hw\" mode.",
			 tmp);
}