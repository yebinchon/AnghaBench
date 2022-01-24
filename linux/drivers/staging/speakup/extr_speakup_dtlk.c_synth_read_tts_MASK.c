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
typedef  int u_char ;
struct TYPE_2__ {int /*<<< orphan*/  port_tts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ speakup_info ; 
 scalar_t__ FUNC2 () ; 
 int synth_status ; 

__attribute__((used)) static char FUNC3(void)
{
	u_char ch;

	while (!FUNC2())
		FUNC0();
	ch = synth_status & 0x7f;
	FUNC1(ch, speakup_info.port_tts);
	while (FUNC2())
		FUNC0();
	return (char)ch;
}