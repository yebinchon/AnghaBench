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
struct nvec_msg {short* data; short size; int /*<<< orphan*/  node; } ;
struct nvec_chip {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NVEC_MSG_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (short*,unsigned char const*,short) ; 
 struct nvec_msg* FUNC2 (struct nvec_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct nvec_chip *nvec, const unsigned char *data,
		     short size)
{
	struct nvec_msg *msg;
	unsigned long flags;

	msg = FUNC2(nvec, NVEC_MSG_TX);

	if (!msg)
		return -ENOMEM;

	msg->data[0] = size;
	FUNC1(msg->data + 1, data, size);
	msg->size = size + 1;

	FUNC4(&nvec->tx_lock, flags);
	FUNC0(&msg->node, &nvec->tx_data);
	FUNC5(&nvec->tx_lock, flags);

	FUNC3(&nvec->tx_work);

	return 0;
}