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
struct TYPE_2__ {int /*<<< orphan*/  port_tts; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYNTH_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ speakup_info ; 

__attribute__((used)) static void FUNC1(struct spk_synth *synth)
{
	FUNC0(SYNTH_CLEAR, speakup_info.port_tts);
}