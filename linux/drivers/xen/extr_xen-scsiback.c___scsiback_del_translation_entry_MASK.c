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
struct v2p_entry {int /*<<< orphan*/  kref; int /*<<< orphan*/  l; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsiback_free_translation_entry ; 

__attribute__((used)) static void FUNC2(struct v2p_entry *entry)
{
	FUNC1(&entry->l);
	FUNC0(&entry->kref, scsiback_free_translation_entry);
}