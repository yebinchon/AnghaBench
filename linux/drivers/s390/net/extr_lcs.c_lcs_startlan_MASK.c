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
struct lcs_card {int portno; scalar_t__ lan_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ LCS_FRAME_TYPE_AUTO ; 
 int /*<<< orphan*/  LCS_INITIATOR_TCPIP ; 
 int LCS_INVALID_PORT_NO ; 
 int FUNC1 (struct lcs_card*) ; 
 int FUNC2 (struct lcs_card*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lcs_card*) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static int
FUNC4(struct lcs_card *card)
{
	int rc, i;

	FUNC0(2, trace, "startlan");
	rc = 0;
	if (card->portno != LCS_INVALID_PORT_NO) {
		if (card->lan_type == LCS_FRAME_TYPE_AUTO)
			rc = FUNC3(card);
		else
			rc = FUNC2(card, LCS_INITIATOR_TCPIP);
	} else {
                for (i = 0; i <= 16; i++) {
                        card->portno = i;
                        if (card->lan_type != LCS_FRAME_TYPE_AUTO)
                                rc = FUNC2(card,
                                                       LCS_INITIATOR_TCPIP);
                        else
                                /* autodetecting lan type */
                                rc = FUNC3(card);
                        if (rc == 0)
                                break;
                }
        }
	if (rc == 0)
		return FUNC1(card);
	return rc;
}