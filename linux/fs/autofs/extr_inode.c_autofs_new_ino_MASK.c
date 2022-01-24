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
struct autofs_sb_info {int dummy; } ;
struct autofs_info {struct autofs_sb_info* sbi; int /*<<< orphan*/  last_used; int /*<<< orphan*/  expiring; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 struct autofs_info* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct autofs_info *FUNC2(struct autofs_sb_info *sbi)
{
	struct autofs_info *ino;

	ino = FUNC1(sizeof(*ino), GFP_KERNEL);
	if (ino) {
		FUNC0(&ino->active);
		FUNC0(&ino->expiring);
		ino->last_used = jiffies;
		ino->sbi = sbi;
	}
	return ino;
}