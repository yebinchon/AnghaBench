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
struct xdp_frame {int len; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 struct xdp_frame* FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(void *ptr)
{
	if (FUNC1(ptr)) {
		struct xdp_frame *xdpf = FUNC2(ptr);

		return xdpf->len;
	}

	return FUNC0(ptr);
}