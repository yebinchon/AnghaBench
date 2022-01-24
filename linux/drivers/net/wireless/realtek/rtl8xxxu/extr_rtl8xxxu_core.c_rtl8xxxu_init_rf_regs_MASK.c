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
typedef  int u8 ;
typedef  int u32 ;
struct rtl8xxxu_rfregval {int reg; int val; } ;
struct rtl8xxxu_priv {TYPE_1__* udev; } ;
typedef  enum rtl8xxxu_rfpath { ____Placeholder_rtl8xxxu_rfpath } rtl8xxxu_rfpath ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct rtl8xxxu_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct rtl8xxxu_priv *priv,
				 struct rtl8xxxu_rfregval *array,
				 enum rtl8xxxu_rfpath path)
{
	int i, ret;
	u8 reg;
	u32 val;

	for (i = 0; ; i++) {
		reg = array[i].reg;
		val = array[i].val;

		if (reg == 0xff && val == 0xffffffff)
			break;

		switch (reg) {
		case 0xfe:
			FUNC2(50);
			continue;
		case 0xfd:
			FUNC1(5);
			continue;
		case 0xfc:
			FUNC1(1);
			continue;
		case 0xfb:
			FUNC4(50);
			continue;
		case 0xfa:
			FUNC4(5);
			continue;
		case 0xf9:
			FUNC4(1);
			continue;
		}

		ret = FUNC3(priv, path, reg, val);
		if (ret) {
			FUNC0(&priv->udev->dev,
				 "Failed to initialize RF\n");
			return -EAGAIN;
		}
		FUNC4(1);
	}

	return 0;
}