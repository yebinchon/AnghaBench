#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;
typedef  enum qeth_ipa_funcs { ____Placeholder_qeth_ipa_funcs } qeth_ipa_funcs ;
struct TYPE_5__ {int /*<<< orphan*/  flags_32bit; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ setassparms; } ;
struct TYPE_8__ {TYPE_3__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  flags_32bit ; 
 struct qeth_cmd_buffer* FUNC3 (struct qeth_card*,int,int /*<<< orphan*/ ,unsigned int,int) ; 
 int FUNC4 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_setassparms_cb ; 

int FUNC5(struct qeth_card *card,
				      enum qeth_ipa_funcs ipa_func,
				      u16 cmd_code, u32 *data,
				      enum qeth_prot_versions prot)
{
	unsigned int length = data ? FUNC1(flags_32bit) : 0;
	struct qeth_cmd_buffer *iob;

	FUNC0(card, 4, "simassp%i", prot);
	iob = FUNC3(card, ipa_func, cmd_code, length, prot);
	if (!iob)
		return -ENOMEM;

	if (data)
		FUNC2(iob)->data.setassparms.data.flags_32bit = *data;
	return FUNC4(card, iob, qeth_setassparms_cb, NULL);
}