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
struct scatterlist {int dummy; } ;
struct nvme_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int FUNC0 (unsigned int,struct nvme_dev*) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(struct nvme_dev *dev,
		unsigned int size, unsigned int nseg, bool use_sgl)
{
	size_t alloc_size;

	if (use_sgl)
		alloc_size = sizeof(__le64 *) * FUNC1(nseg);
	else
		alloc_size = sizeof(__le64 *) * FUNC0(size, dev);

	return alloc_size + sizeof(struct scatterlist) * nseg;
}