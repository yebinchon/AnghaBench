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
struct qman_fq {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int NUM_ENQUEUES ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct qman_fq*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct qman_fq *fq)
{
	unsigned int loop;
	int err = 0;

	for (loop = 0; loop < NUM_ENQUEUES; loop++) {
		if (FUNC2(fq, &fd)) {
			FUNC1("qman_enqueue() failed\n");
			err = -EIO;
		}
		FUNC0(&fd);
	}

	return err;
}