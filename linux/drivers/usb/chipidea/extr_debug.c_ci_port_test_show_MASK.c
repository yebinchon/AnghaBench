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
struct seq_file {struct ci_hdrc* private; } ;
struct ci_hdrc {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *data)
{
	struct ci_hdrc *ci = s->private;
	unsigned long flags;
	unsigned mode;

	FUNC1(ci->dev);
	FUNC4(&ci->lock, flags);
	mode = FUNC0(ci);
	FUNC5(&ci->lock, flags);
	FUNC2(ci->dev);

	FUNC3(s, "mode = %u\n", mode);

	return 0;
}