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
struct seq_file {struct dwc2_hsotg* private; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char const*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, void *v)
{
	struct dwc2_hsotg *hsotg = seq->private;
	const char *dr_mode = "";

	FUNC0(hsotg->dev, "dr_mode", &dr_mode);
	FUNC1(seq, "%s\n", dr_mode);
	return 0;
}