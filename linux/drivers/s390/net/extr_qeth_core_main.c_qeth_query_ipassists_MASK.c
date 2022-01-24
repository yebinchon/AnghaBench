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
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IPA_CMD_QIPASSIST ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*,int) ; 
 struct qeth_cmd_buffer* FUNC1 (struct qeth_card*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_query_ipassists_cb ; 
 int FUNC2 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct qeth_card *card,
				enum qeth_prot_versions prot)
{
	int rc;
	struct qeth_cmd_buffer *iob;

	FUNC0(card, 2, "qipassi%i", prot);
	iob = FUNC1(card, IPA_CMD_QIPASSIST, prot, 0);
	if (!iob)
		return -ENOMEM;
	rc = FUNC2(card, iob, qeth_query_ipassists_cb, NULL);
	return rc;
}