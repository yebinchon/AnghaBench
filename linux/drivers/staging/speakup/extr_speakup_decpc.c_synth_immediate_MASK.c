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
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static const char *FUNC1(struct spk_synth *synth, const char *buf)
{
	u_char ch;

	while ((ch = *buf)) {
		if (ch == '\n')
			ch = PROCSPEECH;
		if (FUNC0(ch))
			return buf;
		buf++;
	}
	return NULL;
}