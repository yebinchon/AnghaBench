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
struct wcnss_msg_hdr {int len; int /*<<< orphan*/  type; } ;
struct wcnss_ctrl {int /*<<< orphan*/  dev; int /*<<< orphan*/  ack; int /*<<< orphan*/  channel; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  WCNSS_CBC_TIMEOUT ; 
 int /*<<< orphan*/  WCNSS_VERSION_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct wcnss_msg_hdr*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wcnss_ctrl *wcnss)
{
	struct wcnss_msg_hdr msg;
	int ret;

	msg.type = WCNSS_VERSION_REQ;
	msg.len = sizeof(msg);
	ret = FUNC1(wcnss->channel, &msg, sizeof(msg));
	if (ret < 0)
		return ret;

	ret = FUNC2(&wcnss->ack, WCNSS_CBC_TIMEOUT);
	if (!ret) {
		FUNC0(wcnss->dev, "timeout waiting for version response\n");
		return -ETIMEDOUT;
	}

	return 0;
}