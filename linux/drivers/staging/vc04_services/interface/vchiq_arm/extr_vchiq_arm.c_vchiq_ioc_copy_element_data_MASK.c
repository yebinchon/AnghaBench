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
struct vchiq_io_copy_callback_context {scalar_t__ element_offset; TYPE_1__* element; int /*<<< orphan*/  elements_to_go; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ data; } ;

/* Variables and functions */
 size_t EFAULT ; 
 scalar_t__ FUNC0 (void*,scalar_t__,size_t) ; 
 size_t FUNC1 (scalar_t__,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(void *context, void *dest,
					   size_t offset, size_t maxsize)
{
	struct vchiq_io_copy_callback_context *cc = context;
	size_t total_bytes_copied = 0;
	size_t bytes_this_round;

	while (total_bytes_copied < maxsize) {
		if (!cc->elements_to_go)
			return total_bytes_copied;

		if (!cc->element->size) {
			cc->elements_to_go--;
			cc->element++;
			cc->element_offset = 0;
			continue;
		}

		bytes_this_round = FUNC1(cc->element->size - cc->element_offset,
				       maxsize - total_bytes_copied);

		if (FUNC0(dest + total_bytes_copied,
				  cc->element->data + cc->element_offset,
				  bytes_this_round))
			return -EFAULT;

		cc->element_offset += bytes_this_round;
		total_bytes_copied += bytes_this_round;

		if (cc->element_offset == cc->element->size) {
			cc->elements_to_go--;
			cc->element++;
			cc->element_offset = 0;
		}
	}

	return maxsize;
}