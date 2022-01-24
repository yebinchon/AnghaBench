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
struct seq_file {int dummy; } ;
struct mutex {int dummy; } ;
struct kfifo {int dummy; } ;
typedef  int /*<<< orphan*/  latency ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct kfifo*) ; 
 int FUNC1 (struct kfifo*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s,
						 struct kfifo *kfifo,
						 struct mutex *mutex)
{
	u32 latency;
	int retval;

	if (FUNC0(kfifo) == 0) {
		retval = -EAGAIN;
		goto done;
	}

	FUNC2(mutex);
	retval = FUNC1(kfifo, &latency, sizeof(latency));
	if (retval > 0) {
		FUNC4(s, "%u", latency);
		retval = 0;
	}
	FUNC3(mutex);
done:
	return retval;
}