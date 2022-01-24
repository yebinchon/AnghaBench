#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct vc_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ value; } ;
struct TYPE_4__ {TYPE_1__ n; } ;
struct var_t {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_CAP ; 
 int /*<<< orphan*/  DIRECT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_CTRL ; 
 scalar_t__ SPELL_PHONETIC ; 
 int* buf ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*) ; 
 scalar_t__ FUNC2 (int) ; 
 char** phonetic ; 
 char** spk_characters ; 
 struct var_t* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spk_pitch_shift ; 
 size_t spk_spell_delay ; 
 char* spk_str_caps_start ; 
 char* spk_str_caps_stop ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ this_speakup_key ; 

__attribute__((used)) static void FUNC7(struct vc_data *vc)
{
	static char const *delay_str[] = { "", ",", ".", ". .", ". . ." };
	u16 *cp = buf;
	char *cp1;
	char *str_cap = spk_str_caps_stop;
	char *last_cap = spk_str_caps_stop;
	struct var_t *direct = FUNC3(DIRECT);
	u16 ch;

	if (!FUNC1(vc))
		return;
	while ((ch = *cp)) {
		if (cp != buf)
			FUNC5(" %s ", delay_str[spk_spell_delay]);
		/* FIXME: Non-latin1 considered as lower case */
		if (ch < 0x100 && FUNC0(ch, B_CAP)) {
			str_cap = spk_str_caps_start;
			if (*spk_str_caps_stop)
				spk_pitch_shift++;
			else	/* synth has no pitch */
				last_cap = spk_str_caps_stop;
		} else {
			str_cap = spk_str_caps_stop;
		}
		if (str_cap != last_cap) {
			FUNC5("%s", str_cap);
			last_cap = str_cap;
		}
		if (ch >= 0x100 || (direct && direct->u.n.value)) {
			FUNC6(ch);
		} else if (this_speakup_key == SPELL_PHONETIC &&
		    ch <= 0x7f && FUNC2(ch)) {
			ch &= 0x1f;
			cp1 = phonetic[--ch];
			FUNC5("%s", cp1);
		} else {
			cp1 = spk_characters[ch];
			if (*cp1 == '^') {
				FUNC5("%s", FUNC4(MSG_CTRL));
				cp1++;
			}
			FUNC5("%s", cp1);
		}
		cp++;
	}
	if (str_cap != spk_str_caps_stop)
		FUNC5("%s", spk_str_caps_stop);
}