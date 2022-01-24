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
typedef  int /*<<< orphan*/  u16 ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;

/* Variables and functions */
 scalar_t__ DCPCTR ; 
 scalar_t__ PIPEnCTR ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_priv*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC2 (struct usbhs_pipe*) ; 
 int FUNC3 (struct usbhs_pipe*) ; 

__attribute__((used)) static void FUNC4(struct usbhs_pipe *pipe, u16 mask, u16 val)
{
	struct usbhs_priv *priv = FUNC2(pipe);
	int offset = FUNC3(pipe);

	if (FUNC1(pipe))
		FUNC0(priv, DCPCTR, mask, val);
	else
		FUNC0(priv, PIPEnCTR + offset, mask, val);
}