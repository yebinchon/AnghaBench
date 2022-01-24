#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spk_synth {int dummy; } ;
struct TYPE_2__ {scalar_t__ port_tts; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_flush ; 
 int /*<<< orphan*/  DMA_sync ; 
 int /*<<< orphan*/  STAT_dma_ready ; 
 int STAT_dma_state ; 
 int STAT_flushing ; 
 int dma_state ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ in_escape ; 
 int is_flushing ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__ speakup_info ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct spk_synth *synth)
{
	int timeout = 10;

	if (is_flushing)
		return;
	is_flushing = 4;
	in_escape = 0;
	while (FUNC0(CTRL_flush)) {
		if (--timeout == 0)
			break;
		FUNC4(50);
	}
	for (timeout = 0; timeout < 10; timeout++) {
		if (FUNC2(STAT_dma_ready))
			break;
		FUNC4(50);
	}
	FUNC3(DMA_sync, speakup_info.port_tts + 4);
	FUNC3(0, speakup_info.port_tts + 4);
	FUNC4(100);
	for (timeout = 0; timeout < 10; timeout++) {
		if (!(FUNC1() & STAT_flushing))
			break;
		FUNC4(50);
	}
	dma_state = FUNC1() & STAT_dma_state;
	dma_state ^= STAT_dma_state;
	is_flushing = 0;
}