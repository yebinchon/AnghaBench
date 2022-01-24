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
struct vnt_private {TYPE_1__* usb; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct vnt_private*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct vnt_private *priv)
{
	FUNC0(&priv->usb->dev, "---->Branch to Sram\n");

	return FUNC1(priv, 1, 0x1200, 0x0000, 0, NULL);
}