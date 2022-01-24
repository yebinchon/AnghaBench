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
typedef  unsigned int u32 ;
struct tegra_tcu {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_tcu*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct tegra_tcu *tcu, const char *s,
			    unsigned int count)
{
	unsigned int written = 0, i = 0;
	bool insert_nl = false;
	u32 value = 0;

	while (i < count) {
		if (insert_nl) {
			value |= FUNC0(written++, '\n');
			insert_nl = false;
			i++;
		} else if (s[i] == '\n') {
			value |= FUNC0(written++, '\r');
			insert_nl = true;
		} else {
			value |= FUNC0(written++, s[i++]);
		}

		if (written == 3) {
			FUNC1(tcu, value, 3);
			value = written = 0;
		}
	}

	if (written)
		FUNC1(tcu, value, written);
}