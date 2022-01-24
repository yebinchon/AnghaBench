#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct mbox_out {int dummy; } ;
typedef  int /*<<< orphan*/  raw_mbox ;
struct TYPE_10__ {int /*<<< orphan*/  m_out; } ;
typedef  TYPE_3__ mbox_t ;
struct TYPE_11__ {TYPE_2__* dev; int /*<<< orphan*/  pend_cmds; TYPE_1__* host; } ;
typedef  TYPE_4__ adapter_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_ADAPTER ; 
 int /*<<< orphan*/  FLUSH_SYSTEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(adapter_t *adapter)
{
	u_char	raw_mbox[sizeof(struct mbox_out)];
	mbox_t	*mbox = (mbox_t *)raw_mbox;
	int	i;

	/* Flush adapter cache */
	FUNC5(&mbox->m_out, 0, sizeof(raw_mbox));
	raw_mbox[0] = FLUSH_ADAPTER;

	FUNC2(adapter->host->irq, adapter);

	/* Issue a blocking (interrupts disabled) command to the card */
	FUNC3(adapter, raw_mbox);

	/* Flush disks cache */
	FUNC5(&mbox->m_out, 0, sizeof(raw_mbox));
	raw_mbox[0] = FLUSH_SYSTEM;

	/* Issue a blocking (interrupts disabled) command to the card */
	FUNC3(adapter, raw_mbox);
	
	if (FUNC0(&adapter->pend_cmds) > 0)
		FUNC1(&adapter->dev->dev, "pending commands!!\n");

	/*
	 * Have a delibrate delay to make sure all the caches are
	 * actually flushed.
	 */
	for (i = 0; i <= 10; i++)
		FUNC4(1000);
}