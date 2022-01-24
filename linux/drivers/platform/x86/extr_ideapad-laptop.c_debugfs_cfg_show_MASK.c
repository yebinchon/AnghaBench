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
struct seq_file {struct ideapad_private* private; } ;
struct ideapad_private {int cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_3G_BIT ; 
 int /*<<< orphan*/  CFG_BT_BIT ; 
 int /*<<< orphan*/  CFG_CAMERA_BIT ; 
 int /*<<< orphan*/  CFG_WIFI_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *data)
{
	struct ideapad_private *priv = s->private;

	if (!priv) {
		FUNC0(s, "cfg: N/A\n");
	} else {
		FUNC0(s, "cfg: 0x%.8lX\n\nCapability: ",
			   priv->cfg);
		if (FUNC1(CFG_BT_BIT, &priv->cfg))
			FUNC0(s, "Bluetooth ");
		if (FUNC1(CFG_3G_BIT, &priv->cfg))
			FUNC0(s, "3G ");
		if (FUNC1(CFG_WIFI_BIT, &priv->cfg))
			FUNC0(s, "Wireless ");
		if (FUNC1(CFG_CAMERA_BIT, &priv->cfg))
			FUNC0(s, "Camera ");
		FUNC0(s, "\nGraphic: ");
		switch ((priv->cfg)&0x700) {
		case 0x100:
			FUNC0(s, "Intel");
			break;
		case 0x200:
			FUNC0(s, "ATI");
			break;
		case 0x300:
			FUNC0(s, "Nvidia");
			break;
		case 0x400:
			FUNC0(s, "Intel and ATI");
			break;
		case 0x500:
			FUNC0(s, "Intel and Nvidia");
			break;
		}
		FUNC0(s, "\n");
	}
	return 0;
}