#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  truncate_lock; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exfat_get_block ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static sector_t FUNC4(struct address_space *mapping, sector_t block)
{
	sector_t blocknr;

	/* exfat_get_cluster() assumes the requested blocknr isn't truncated. */
	FUNC1(&FUNC0(mapping->host)->truncate_lock);
	blocknr = FUNC2(mapping, block, exfat_get_block);
	FUNC3(&FUNC0(mapping->host)->truncate_lock);

	return blocknr;
}