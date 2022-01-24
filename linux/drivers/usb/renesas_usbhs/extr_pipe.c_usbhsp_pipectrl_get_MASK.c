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
 scalar_t__ FUNC0 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC1 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,scalar_t__) ; 
 int FUNC3 (struct usbhs_pipe*) ; 

__attribute__((used)) static u16 FUNC4(struct usbhs_pipe *pipe)
{
	struct usbhs_priv *priv = FUNC1(pipe);
	int offset = FUNC3(pipe);

	if (FUNC0(pipe))
		return FUNC2(priv, DCPCTR);
	else
		return FUNC2(priv, PIPEnCTR + offset);
}