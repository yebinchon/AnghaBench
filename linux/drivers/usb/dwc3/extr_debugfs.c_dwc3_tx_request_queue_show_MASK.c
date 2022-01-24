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
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {struct dwc3_ep* private; } ;
struct dwc3_ep {struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_TXREQQ ; 
 int /*<<< orphan*/  FUNC0 (struct dwc3_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *unused)
{
	struct dwc3_ep		*dep = s->private;
	struct dwc3		*dwc = dep->dwc;
	unsigned long		flags;
	u32			val;

	FUNC2(&dwc->lock, flags);
	val = FUNC0(dep, DWC3_TXREQQ);
	FUNC1(s, "%u\n", val);
	FUNC3(&dwc->lock, flags);

	return 0;
}