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
struct lcs_card {int /*<<< orphan*/  ipm_list; int /*<<< orphan*/  read; int /*<<< orphan*/  write; int /*<<< orphan*/  lancmd_timeout; scalar_t__ pkt_seq; int /*<<< orphan*/  lan_type; } ;

/* Variables and functions */
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct lcs_card**,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LCS_FRAME_TYPE_AUTO ; 
 int /*<<< orphan*/  LCS_LANCMD_TIMEOUT_DEFAULT ; 
 struct lcs_card* FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lcs_card*) ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static struct lcs_card *
FUNC7(void)
{
	struct lcs_card *card;
	int rc;

	FUNC2(2, setup, "alloclcs");

	card = FUNC3(sizeof(struct lcs_card), GFP_KERNEL | GFP_DMA);
	if (card == NULL)
		return NULL;
	card->lan_type = LCS_FRAME_TYPE_AUTO;
	card->pkt_seq = 0;
	card->lancmd_timeout = LCS_LANCMD_TIMEOUT_DEFAULT;
	/* Allocate io buffers for the read channel. */
	rc = FUNC4(&card->read);
	if (rc){
		FUNC2(2, setup, "iccwerr");
		FUNC6(card);
		return NULL;
	}
	/* Allocate io buffers for the write channel. */
	rc = FUNC4(&card->write);
	if (rc) {
		FUNC2(2, setup, "iccwerr");
		FUNC5(&card->read);
		FUNC6(card);
		return NULL;
	}

#ifdef CONFIG_IP_MULTICAST
	INIT_LIST_HEAD(&card->ipm_list);
#endif
	FUNC1(2, setup, &card, sizeof(void*));
	return card;
}