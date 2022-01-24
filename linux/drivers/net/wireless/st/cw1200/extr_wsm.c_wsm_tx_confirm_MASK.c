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
struct wsm_tx_confirm {void* tx_queue_delay; void* media_delay; int /*<<< orphan*/  flags; void* ack_failures; void* tx_rate; void* status; void* packet_id; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*) ; 
 void* FUNC2 (struct wsm_buf*) ; 
 void* FUNC3 (struct wsm_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*,int,struct wsm_tx_confirm*) ; 

__attribute__((used)) static int FUNC5(struct cw1200_common *priv,
			  struct wsm_buf *buf,
			  int link_id)
{
	struct wsm_tx_confirm tx_confirm;

	tx_confirm.packet_id = FUNC2(buf);
	tx_confirm.status = FUNC2(buf);
	tx_confirm.tx_rate = FUNC3(buf);
	tx_confirm.ack_failures = FUNC3(buf);
	tx_confirm.flags = FUNC1(buf);
	tx_confirm.media_delay = FUNC2(buf);
	tx_confirm.tx_queue_delay = FUNC2(buf);

	FUNC4(priv, link_id, &tx_confirm);
	return 0;

underflow:
	FUNC0(1);
	return -EINVAL;
}