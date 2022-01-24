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
struct trf7970a {int state; int aborting; int ignore_timeout; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  timeout_work; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECANCELED ; 
#define  TRF7970A_ST_LISTENING 132 
#define  TRF7970A_ST_WAIT_FOR_RX_DATA 131 
#define  TRF7970A_ST_WAIT_FOR_RX_DATA_CONT 130 
#define  TRF7970A_ST_WAIT_FOR_TX_FIFO 129 
#define  TRF7970A_ST_WAIT_TO_ISSUE_EOF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct trf7970a* FUNC4 (struct nfc_digital_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct trf7970a*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nfc_digital_dev *ddev)
{
	struct trf7970a *trf = FUNC4(ddev);

	FUNC1(trf->dev, "Abort process initiated\n");

	FUNC2(&trf->lock);

	switch (trf->state) {
	case TRF7970A_ST_WAIT_FOR_TX_FIFO:
	case TRF7970A_ST_WAIT_FOR_RX_DATA:
	case TRF7970A_ST_WAIT_FOR_RX_DATA_CONT:
	case TRF7970A_ST_WAIT_TO_ISSUE_EOF:
		trf->aborting = true;
		break;
	case TRF7970A_ST_LISTENING:
		trf->ignore_timeout = !FUNC0(&trf->timeout_work);
		FUNC5(trf, -ECANCELED);
		FUNC1(trf->dev, "Abort process complete\n");
		break;
	default:
		break;
	}

	FUNC3(&trf->lock);
}