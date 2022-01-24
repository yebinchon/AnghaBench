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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct port100_sync_cmd_response {struct sk_buff* resp; int /*<<< orphan*/  done; } ;
struct port100 {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct port100*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,struct port100_sync_cmd_response*) ; 
 int /*<<< orphan*/  port100_send_sync_complete ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct port100 *dev, u8 cmd_code,
					     struct sk_buff *req)
{
	int rc;
	struct port100_sync_cmd_response arg;

	FUNC2(&arg.done);

	rc = FUNC3(dev, cmd_code, req,
				    port100_send_sync_complete, &arg);
	if (rc) {
		FUNC1(req);
		return FUNC0(rc);
	}

	FUNC4(&arg.done);

	return arg.resp;
}