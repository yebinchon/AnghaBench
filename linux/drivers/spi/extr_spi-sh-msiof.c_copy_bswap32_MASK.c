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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(u32 *dst, const u32 *src, unsigned int words)
{
	/* src or dst can be unaligned, but not both */
	if ((unsigned long)src & 3) {
		while (words--) {
			*dst++ = FUNC2(FUNC0(src));
			src++;
		}
	} else if ((unsigned long)dst & 3) {
		while (words--) {
			FUNC1(FUNC2(*src++), dst);
			dst++;
		}
	} else {
		while (words--)
			*dst++ = FUNC2(*src++);
	}
}