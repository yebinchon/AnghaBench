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
typedef  char u_char ;
struct spk_synth {int dummy; } ;

/* Variables and functions */
 char PROCSPEECH ; 
 char const* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  synth_port ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static const char *FUNC5(struct spk_synth *synth, const char *buf)
{
	u_char ch;
	int timeout;

	while ((ch = *buf)) {
		if (ch == '\n')
			ch = PROCSPEECH;
		if (FUNC2())
			return buf;
		timeout = 1000;
		while (FUNC3())
			if (--timeout <= 0)
				return FUNC0();
		FUNC1(ch, synth_port);
		FUNC4(70);
		buf++;
	}
	return NULL;
}