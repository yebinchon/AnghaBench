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
struct st95hf_context {int /*<<< orphan*/  enable_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIGH ; 
 int /*<<< orphan*/  LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct st95hf_context *st95con)
{
	/* First make irq_in pin high */
	FUNC0(st95con->enable_gpio, HIGH);

	/* wait for 1 milisecond */
	FUNC1(1000, 2000);

	/* Make irq_in pin low */
	FUNC0(st95con->enable_gpio, LOW);

	/* wait for minimum interrupt pulse to make st95 active */
	FUNC1(1000, 2000);

	/* At end make it high */
	FUNC0(st95con->enable_gpio, HIGH);
}