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
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe_info {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct usbhs_pipe_info* FUNC1 (struct usbhs_priv*) ; 

void FUNC2(struct usbhs_priv *priv)
{
	struct usbhs_pipe_info *info = FUNC1(priv);

	FUNC0(info->pipe);
}