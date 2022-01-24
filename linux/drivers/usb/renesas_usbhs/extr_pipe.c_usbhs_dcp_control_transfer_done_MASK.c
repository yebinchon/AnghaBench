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
struct usbhs_pipe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCPL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC4 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct usbhs_pipe *pipe)
{
	struct usbhs_priv *priv = FUNC4(pipe);

	FUNC0(!FUNC3(pipe));

	FUNC2(pipe);

	if (!FUNC1(priv)) /* funconly */
		FUNC5(pipe, CCPL, CCPL);
}