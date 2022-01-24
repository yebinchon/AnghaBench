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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HYM8563_CTL1 ; 
 int /*<<< orphan*/  HYM8563_CTL2 ; 
 int HYM8563_CTL2_AF ; 
 int HYM8563_CTL2_AIE ; 
 int HYM8563_CTL2_TF ; 
 int HYM8563_CTL2_TIE ; 
 int HYM8563_CTL2_TI_TP ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	int ret;

	/* Clear stop flag if present */
	ret = FUNC1(client, HYM8563_CTL1, 0);
	if (ret < 0)
		return ret;

	ret = FUNC0(client, HYM8563_CTL2);
	if (ret < 0)
		return ret;

	/* Disable alarm and timer interrupts */
	ret &= ~HYM8563_CTL2_AIE;
	ret &= ~HYM8563_CTL2_TIE;

	/* Clear any pending alarm and timer flags */
	if (ret & HYM8563_CTL2_AF)
		ret &= ~HYM8563_CTL2_AF;

	if (ret & HYM8563_CTL2_TF)
		ret &= ~HYM8563_CTL2_TF;

	ret &= ~HYM8563_CTL2_TI_TP;

	return FUNC1(client, HYM8563_CTL2, ret);
}