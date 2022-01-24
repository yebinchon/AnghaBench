#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct qeth_reply {scalar_t__ param; } ;
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {scalar_t__ link_type; } ;
struct TYPE_3__ {scalar_t__ ulp_filter_r; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__ token; } ;
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*,scalar_t__) ; 
 scalar_t__ QETH_MPC_DIFINFO_LEN_INDICATES_LINK_TYPE ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct qeth_card *card, struct qeth_reply *reply,
		unsigned long data)
{
	__u16 mtu, framesize;
	__u16 len;
	__u8 link_type;
	struct qeth_cmd_buffer *iob;

	FUNC1(card, 2, "ulpenacb");

	iob = (struct qeth_cmd_buffer *) data;
	FUNC7(&card->token.ulp_filter_r,
	       FUNC4(iob->data),
	       QETH_MPC_TOKEN_LENGTH);
	if (FUNC0(card)) {
		FUNC7(&framesize, FUNC6(iob->data), 2);
		mtu = FUNC8(framesize);
	} else {
		mtu = *(__u16 *)FUNC6(iob->data);
	}
	*(u16 *)reply->param = mtu;

	FUNC7(&len, FUNC3(iob->data), 2);
	if (len >= QETH_MPC_DIFINFO_LEN_INDICATES_LINK_TYPE) {
		FUNC7(&link_type,
		       FUNC5(iob->data), 1);
		card->info.link_type = link_type;
	} else
		card->info.link_type = 0;
	FUNC2(card, 2, "link%d", card->info.link_type);
	return 0;
}