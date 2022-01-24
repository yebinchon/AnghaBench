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
struct ptr_ring {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ptr_ring*) ; 
 struct file* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct ptr_ring* FUNC3 (struct file*) ; 
 struct ptr_ring* FUNC4 (struct file*) ; 

__attribute__((used)) static struct ptr_ring *FUNC5(int fd)
{
	struct ptr_ring *ring;
	struct file *file = FUNC1(fd);

	if (!file)
		return NULL;
	ring = FUNC4(file);
	if (!FUNC0(ring))
		goto out;
	ring = FUNC3(file);
	if (!FUNC0(ring))
		goto out;
	ring = NULL;
out:
	FUNC2(file);
	return ring;
}