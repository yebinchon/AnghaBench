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
struct qcom_glink {int dummy; } ;
struct glink_core_rx_intent {int size; int id; } ;
struct glink_channel {int /*<<< orphan*/  lcid; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  void* __le32 ;
typedef  void* __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  RPM_CMD_INTENT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_glink*,struct command*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct qcom_glink *glink,
				       struct glink_channel *channel,
				       struct glink_core_rx_intent *intent)
{
	struct command {
		__le16 id;
		__le16 lcid;
		__le32 count;
		__le32 size;
		__le32 liid;
	} __packed;
	struct command cmd;

	cmd.id = FUNC0(RPM_CMD_INTENT);
	cmd.lcid = FUNC0(channel->lcid);
	cmd.count = FUNC1(1);
	cmd.size = FUNC1(intent->size);
	cmd.liid = FUNC1(intent->id);

	FUNC2(glink, &cmd, sizeof(cmd), NULL, 0, true);

	return 0;
}