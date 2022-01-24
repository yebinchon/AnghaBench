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
typedef  int u16 ;
struct usbhs_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pipe_size ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,int,int) ; 

void FUNC3(struct usbhs_priv *priv, u16 sts_reg, u16 bit)
{
	u16 pipe_mask = (u16)FUNC0(FUNC1(priv, pipe_size), 0);

	FUNC2(priv, sts_reg, ~(1 << bit) & pipe_mask);
}