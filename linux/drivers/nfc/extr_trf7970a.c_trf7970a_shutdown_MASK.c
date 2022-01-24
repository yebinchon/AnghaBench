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
struct trf7970a {int state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECANCELED ; 
#define  TRF7970A_ST_IDLE 134 
#define  TRF7970A_ST_IDLE_RX_BLOCKED 133 
#define  TRF7970A_ST_LISTENING 132 
#define  TRF7970A_ST_WAIT_FOR_RX_DATA 131 
#define  TRF7970A_ST_WAIT_FOR_RX_DATA_CONT 130 
#define  TRF7970A_ST_WAIT_FOR_TX_FIFO 129 
#define  TRF7970A_ST_WAIT_TO_ISSUE_EOF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trf7970a*) ; 
 int /*<<< orphan*/  FUNC3 (struct trf7970a*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct trf7970a*) ; 

__attribute__((used)) static void FUNC5(struct trf7970a *trf)
{
	switch (trf->state) {
	case TRF7970A_ST_WAIT_FOR_TX_FIFO:
	case TRF7970A_ST_WAIT_FOR_RX_DATA:
	case TRF7970A_ST_WAIT_FOR_RX_DATA_CONT:
	case TRF7970A_ST_WAIT_TO_ISSUE_EOF:
	case TRF7970A_ST_LISTENING:
		FUNC3(trf, -ECANCELED);
		/* FALLTHROUGH */
	case TRF7970A_ST_IDLE:
	case TRF7970A_ST_IDLE_RX_BLOCKED:
		FUNC4(trf);
		break;
	default:
		break;
	}

	FUNC0(trf->dev);
	FUNC1(trf->dev);

	FUNC2(trf);
}