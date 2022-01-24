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
typedef  scalar_t__ u32 ;
struct extent_buffer {int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct extent_buffer const*) ; 
 unsigned int FUNC2 (struct extent_buffer const*,scalar_t__) ; 

__attribute__((used)) static inline unsigned int FUNC3(const struct extent_buffer *leaf)
{
	u32 nr = FUNC1(leaf);

	if (nr == 0)
		return FUNC0(leaf->fs_info);
	return FUNC2(leaf, nr - 1);
}