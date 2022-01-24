#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct mbo {int /*<<< orphan*/  (* complete ) (struct mbo*) ;int /*<<< orphan*/  status; int /*<<< orphan*/  processed_length; int /*<<< orphan*/  virt_address; int /*<<< orphan*/  buffer_length; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct hdm_i2c {TYPE_1__ rx; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int MAX_BUF_SIZE_CONTROL ; 
 int /*<<< orphan*/  MBO_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mbo* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbo*) ; 

__attribute__((used)) static void FUNC7(struct hdm_i2c *dev)
{
	struct mbo *mbo;
	unsigned char msg[MAX_BUF_SIZE_CONTROL];
	int ret;
	u16 pml, data_size;

	/* Read PML (2 bytes) */
	ret = FUNC0(dev->client, msg, 2);
	if (ret <= 0) {
		FUNC5("Failed to receive PML\n");
		return;
	}

	pml = (msg[0] << 8) | msg[1];
	if (!pml)
		return;

	data_size = pml + 2;

	/* Read the whole message, including PML */
	ret = FUNC0(dev->client, msg, data_size);
	if (ret <= 0) {
		FUNC5("Failed to receive a Port Message\n");
		return;
	}

	mbo = FUNC2(&dev->rx.list);
	FUNC1(&mbo->list);

	mbo->processed_length = FUNC4(data_size, mbo->buffer_length);
	FUNC3(mbo->virt_address, msg, mbo->processed_length);
	mbo->status = MBO_SUCCESS;
	mbo->complete(mbo);
}