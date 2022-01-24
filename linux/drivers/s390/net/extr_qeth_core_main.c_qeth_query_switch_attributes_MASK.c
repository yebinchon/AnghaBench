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
struct qeth_switch_info {int dummy; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEDIUM ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_SETADP_QUERY_SWITCH_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 struct qeth_cmd_buffer* FUNC3 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_query_switch_attributes_cb ; 
 int FUNC4 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,struct qeth_switch_info*) ; 

int FUNC5(struct qeth_card *card,
				 struct qeth_switch_info *sw_info)
{
	struct qeth_cmd_buffer *iob;

	FUNC0(card, 2, "qswiattr");
	if (!FUNC2(card, IPA_SETADP_QUERY_SWITCH_ATTRIBUTES))
		return -EOPNOTSUPP;
	if (!FUNC1(card->dev))
		return -ENOMEDIUM;
	iob = FUNC3(card, IPA_SETADP_QUERY_SWITCH_ATTRIBUTES, 0);
	if (!iob)
		return -ENOMEM;
	return FUNC4(card, iob,
				qeth_query_switch_attributes_cb, sw_info);
}