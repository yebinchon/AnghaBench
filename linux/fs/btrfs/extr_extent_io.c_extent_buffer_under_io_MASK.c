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
struct extent_buffer {int /*<<< orphan*/  bflags; int /*<<< orphan*/  io_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_BUFFER_DIRTY ; 
 int /*<<< orphan*/  EXTENT_BUFFER_WRITEBACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct extent_buffer *eb)
{
	return (FUNC0(&eb->io_pages) ||
		FUNC1(EXTENT_BUFFER_WRITEBACK, &eb->bflags) ||
		FUNC1(EXTENT_BUFFER_DIRTY, &eb->bflags));
}