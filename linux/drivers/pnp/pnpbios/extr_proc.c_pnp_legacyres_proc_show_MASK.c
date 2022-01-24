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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,void*,int) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *v)
{
	void *buf;

	buf = FUNC1(65536, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	if (FUNC2(buf)) {
		FUNC0(buf);
		return -EIO;
	}

	FUNC3(m, buf, 65536);
	FUNC0(buf);
	return 0;
}