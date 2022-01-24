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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int __u32 ;

/* Variables and functions */
 int EXT2_OTHER_FLMASK ; 
 int EXT2_REG_FLMASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __u32 FUNC2(umode_t mode, __u32 flags)
{
	if (FUNC0(mode))
		return flags;
	else if (FUNC1(mode))
		return flags & EXT2_REG_FLMASK;
	else
		return flags & EXT2_OTHER_FLMASK;
}