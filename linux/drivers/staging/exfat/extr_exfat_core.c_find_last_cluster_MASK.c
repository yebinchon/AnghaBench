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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {scalar_t__ dev_ejected; } ;
struct chain_t {int dir; int flags; int size; } ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*,int,int*) ; 

u32 FUNC3(struct super_block *sb, struct chain_t *p_chain)
{
	u32 clu, next;
	struct fs_info_t *p_fs = &(FUNC1(sb)->fs_info);

	clu = p_chain->dir;

	if (p_chain->flags == 0x03) {
		clu += p_chain->size - 1;
	} else {
		while ((FUNC2(sb, clu, &next) == 0) &&
		       (next != FUNC0(~0))) {
			if (p_fs->dev_ejected)
				break;
			clu = next;
		}
	}

	return clu;
}