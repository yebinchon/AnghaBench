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
typedef  int u8 ;
struct esp {int sreg; int ireg; int flags; scalar_t__ rev; scalar_t__ select_state; scalar_t__ event; int sreg2; scalar_t__ active_cmd; int /*<<< orphan*/  host; void* seqreg; int /*<<< orphan*/ * eh_reset; } ;

/* Variables and functions */
 int ESP_DIP ; 
 int ESP_DOP ; 
 scalar_t__ ESP_EVENT_DATA_DONE ; 
 scalar_t__ ESP_EVENT_STATUS ; 
 int ESP_FLAG_RESETTING ; 
 int /*<<< orphan*/  ESP_INTRPT ; 
 int ESP_INTR_IC ; 
 int ESP_INTR_RSEL ; 
 int ESP_INTR_S ; 
 int ESP_INTR_SATN ; 
 int ESP_INTR_SR ; 
 scalar_t__ ESP_SELECT_NONE ; 
 int /*<<< orphan*/  ESP_SSTEP ; 
 int ESP_STAT2_F1BYTE ; 
 int ESP_STAT2_FEMPTY ; 
 int /*<<< orphan*/  ESP_STATUS ; 
 int /*<<< orphan*/  ESP_STATUS2 ; 
 int ESP_STAT_PMASK ; 
 scalar_t__ FASHME ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct esp*) ; 
 int FUNC2 (struct esp*) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*) ; 
 int FUNC4 (struct esp*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,void*,int,int) ; 
 int FUNC6 (struct esp*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct esp*) ; 
 int /*<<< orphan*/  FUNC9 (struct esp*) ; 
 int /*<<< orphan*/  FUNC10 (struct esp*) ; 
 int /*<<< orphan*/  FUNC11 (struct esp*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC13(struct esp *esp)
{
	int finish_reset, intr_done;
	u8 phase;

       /*
	* Once INTRPT is read STATUS and SSTEP are cleared.
	*/
	esp->sreg = FUNC7(ESP_STATUS);
	esp->seqreg = FUNC7(ESP_SSTEP);
	esp->ireg = FUNC7(ESP_INTRPT);

	if (esp->flags & ESP_FLAG_RESETTING) {
		finish_reset = 1;
	} else {
		if (FUNC1(esp))
			return;

		finish_reset = FUNC2(esp);
		if (finish_reset < 0)
			return;
	}

	if (esp->ireg & ESP_INTR_SR)
		finish_reset = 1;

	if (finish_reset) {
		FUNC9(esp);
		if (esp->eh_reset) {
			FUNC0(esp->eh_reset);
			esp->eh_reset = NULL;
		}
		return;
	}

	phase = (esp->sreg & ESP_STAT_PMASK);
	if (esp->rev == FASHME) {
		if (((phase != ESP_DIP && phase != ESP_DOP) &&
		     esp->select_state == ESP_SELECT_NONE &&
		     esp->event != ESP_EVENT_STATUS &&
		     esp->event != ESP_EVENT_DATA_DONE) ||
		    (esp->ireg & ESP_INTR_RSEL)) {
			esp->sreg2 = FUNC7(ESP_STATUS2);
			if (!(esp->sreg2 & ESP_STAT2_FEMPTY) ||
			    (esp->sreg2 & ESP_STAT2_F1BYTE))
				FUNC11(esp);
		}
	}

	FUNC5("intr sreg[%02x] seqreg[%02x] "
		     "sreg2[%02x] ireg[%02x]\n",
		     esp->sreg, esp->seqreg, esp->sreg2, esp->ireg);

	intr_done = 0;

	if (esp->ireg & (ESP_INTR_S | ESP_INTR_SATN | ESP_INTR_IC)) {
		FUNC12(KERN_INFO, esp->host,
			     "unexpected IREG %02x\n", esp->ireg);
		if (esp->ireg & ESP_INTR_IC)
			FUNC3(esp);

		FUNC10(esp);
	} else {
		if (esp->ireg & ESP_INTR_RSEL) {
			if (esp->active_cmd)
				(void) FUNC4(esp);
			intr_done = FUNC8(esp);
		} else {
			/* Some combination of FDONE, BSERV, DC. */
			if (esp->select_state != ESP_SELECT_NONE)
				intr_done = FUNC4(esp);
		}
	}
	while (!intr_done)
		intr_done = FUNC6(esp);
}