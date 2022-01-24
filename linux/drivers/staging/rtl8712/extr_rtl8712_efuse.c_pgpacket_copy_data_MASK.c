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

/* Variables and functions */
 int const FUNC0 (int) ; 
 int PGPKG_MAX_WORDS ; 

__attribute__((used)) static void FUNC1(const u8 word_en, const u8 *sourdata,
			       u8 *targetdata)
{
	u8 tmpindex = 0;
	u8 word_idx, byte_idx;

	for (word_idx = 0; word_idx < PGPKG_MAX_WORDS; word_idx++) {
		if (!(word_en & FUNC0(word_idx))) {
			byte_idx = word_idx * 2;
			targetdata[byte_idx] = sourdata[tmpindex++];
			targetdata[byte_idx + 1] = sourdata[tmpindex++];
		}
	}
}