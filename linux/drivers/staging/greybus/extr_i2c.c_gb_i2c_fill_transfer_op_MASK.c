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
struct i2c_msg {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; int /*<<< orphan*/  flags; } ;
struct gb_i2c_transfer_op {void* size; void* flags; void* addr; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct gb_i2c_transfer_op *op, struct i2c_msg *msg)
{
	u16 flags = FUNC1(msg->flags);

	op->addr = FUNC0(msg->addr);
	op->flags = FUNC0(flags);
	op->size = FUNC0(msg->len);
}