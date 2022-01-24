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
struct usbhs_fifo {int /*<<< orphan*/  ctr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BVAL ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbhs_priv* FUNC1 (struct usbhs_pipe*) ; 

__attribute__((used)) static void FUNC2(struct usbhs_pipe *pipe,
				   struct usbhs_fifo *fifo)
{
	struct usbhs_priv *priv = FUNC1(pipe);

	FUNC0(priv, fifo->ctr, BVAL, BVAL);
}