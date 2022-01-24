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
struct seq_file {struct dwc3_ep* private; } ;
struct dwc3_ep {struct dwc3* dwc; } ;
struct TYPE_2__ {int /*<<< orphan*/  hwparams0; } ;
struct dwc3 {int /*<<< orphan*/  lock; TYPE_1__ hwparams; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DWC3_TXFIFO ; 
 int FUNC1 (struct dwc3_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *unused)
{
	struct dwc3_ep		*dep = s->private;
	struct dwc3		*dwc = dep->dwc;
	unsigned long		flags;
	u32			val;

	FUNC3(&dwc->lock, flags);
	val = FUNC1(dep, DWC3_TXFIFO);

	/* Convert to bytes */
	val *= FUNC0(dwc->hwparams.hwparams0);
	val >>= 3;
	FUNC2(s, "%u\n", val);
	FUNC4(&dwc->lock, flags);

	return 0;
}