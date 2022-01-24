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
struct esp_lun_data {struct esp_cmd_entry* non_tagged_cmd; int /*<<< orphan*/  num_tagged; struct esp_cmd_entry** tagged_cmds; } ;
struct esp_cmd_entry {int* orig_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct esp_cmd_entry *ent,
			     struct esp_lun_data *lp)
{
	if (ent->orig_tag[0]) {
		FUNC0(lp->tagged_cmds[ent->orig_tag[1]] != ent);
		lp->tagged_cmds[ent->orig_tag[1]] = NULL;
		lp->num_tagged--;
	} else {
		FUNC0(lp->non_tagged_cmd != ent);
		lp->non_tagged_cmd = NULL;
	}
}