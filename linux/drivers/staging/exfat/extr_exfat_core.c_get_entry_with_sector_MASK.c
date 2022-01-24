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
typedef  int /*<<< orphan*/  u8 ;
struct super_block {int dummy; } ;
struct dentry_t {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 

struct dentry_t *FUNC1(struct super_block *sb, sector_t sector,
				       s32 offset)
{
	u8 *buf;

	buf = FUNC0(sb, sector);

	if (!buf)
		return NULL;

	return (struct dentry_t *)(buf + offset);
}