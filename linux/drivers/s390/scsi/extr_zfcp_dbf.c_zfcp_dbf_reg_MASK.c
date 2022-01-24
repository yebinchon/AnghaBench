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
struct debug_info {int dummy; } ;
typedef  struct debug_info debug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  dbflevel ; 
 int /*<<< orphan*/  debug_hex_ascii_view ; 
 struct debug_info* FUNC0 (char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct debug_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct debug_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static debug_info_t *FUNC3(const char *name, int size, int rec_size)
{
	struct debug_info *d;

	d = FUNC0(name, size, 1, rec_size);
	if (!d)
		return NULL;

	FUNC1(d, &debug_hex_ascii_view);
	FUNC2(d, dbflevel);

	return d;
}