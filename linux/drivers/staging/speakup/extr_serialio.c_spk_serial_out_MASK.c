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
struct spk_synth {scalar_t__ alive; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_tts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const,int /*<<< orphan*/ ) ; 
 TYPE_1__ speakup_info ; 
 scalar_t__ FUNC1 (struct spk_synth*) ; 

__attribute__((used)) static int FUNC2(struct spk_synth *in_synth, const char ch)
{
	if (in_synth->alive && FUNC1(in_synth)) {
		FUNC0(ch, speakup_info.port_tts);
		return 1;
	}
	return 0;
}