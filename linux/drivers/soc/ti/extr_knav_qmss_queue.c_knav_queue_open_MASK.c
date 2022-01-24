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
typedef  void knav_queue ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
#define  KNAV_QUEUE_ACC 130 
#define  KNAV_QUEUE_GP 129 
#define  KNAV_QUEUE_QPEND 128 
 void* FUNC1 (char const*,unsigned int,unsigned int) ; 
 void* FUNC2 (char const*,unsigned int,unsigned int) ; 

void *FUNC3(const char *name, unsigned id,
					unsigned flags)
{
	struct knav_queue *qh = FUNC0(-EINVAL);

	switch (id) {
	case KNAV_QUEUE_QPEND:
	case KNAV_QUEUE_ACC:
	case KNAV_QUEUE_GP:
		qh = FUNC2(name, id, flags);
		break;

	default:
		qh = FUNC1(name, id, flags);
		break;
	}
	return qh;
}