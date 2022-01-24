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
struct TYPE_2__ {int /*<<< orphan*/  pending; int /*<<< orphan*/  local; int /*<<< orphan*/  global; } ;
struct uwb_rc {TYPE_1__ drp_avail; } ;
struct seq_file {struct uwb_rc* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct seq_file *s, void *p)
{
	struct uwb_rc *rc = s->private;

	FUNC0(s, "global:  %*pb\n", UWB_NUM_MAS, rc->drp_avail.global);
	FUNC0(s, "local:   %*pb\n", UWB_NUM_MAS, rc->drp_avail.local);
	FUNC0(s, "pending: %*pb\n", UWB_NUM_MAS, rc->drp_avail.pending);

	return 0;
}