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
struct sti_struct {int dummy; } ;
typedef  void sti_glob_cfg ;

/* Variables and functions */
 unsigned long FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int FUNC2 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

int FUNC3(const struct sti_struct *sti, unsigned long func,
		const void *flags, void *inptr, void *outptr,
		struct sti_glob_cfg *glob_cfg)
{
	unsigned long _flags = FUNC0(flags);
	unsigned long _inptr = FUNC0(inptr);
	unsigned long _outptr = FUNC0(outptr);
	unsigned long _glob_cfg = FUNC0(glob_cfg);
	int ret;

#ifdef CONFIG_64BIT
	/* Check for overflow when using 32bit STI on 64bit kernel. */
	if (WARN_ONCE(_flags>>32 || _inptr>>32 || _outptr>>32 || _glob_cfg>>32,
			"Out of 32bit-range pointers!"))
		return -1;
#endif

	ret = FUNC2(func, _flags, _inptr, _outptr, _glob_cfg);

	return ret;
}