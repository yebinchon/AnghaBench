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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct eventfd_ctx {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct eventfd_ctx*) ; 
 int FUNC1 (struct eventfd_ctx*) ; 
 int VFIO_IRQ_SET_DATA_BOOL ; 
 int VFIO_IRQ_SET_DATA_EVENTFD ; 
 int VFIO_IRQ_SET_DATA_NONE ; 
 struct eventfd_ctx* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct eventfd_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct eventfd_ctx*,int) ; 

__attribute__((used)) static int FUNC5(struct eventfd_ctx **ctx,
					   unsigned int count, uint32_t flags,
					   void *data)
{
	/* DATA_NONE/DATA_BOOL enables loopback testing */
	if (flags & VFIO_IRQ_SET_DATA_NONE) {
		if (*ctx) {
			if (count) {
				FUNC4(*ctx, 1);
			} else {
				FUNC3(*ctx);
				*ctx = NULL;
			}
			return 0;
		}
	} else if (flags & VFIO_IRQ_SET_DATA_BOOL) {
		uint8_t trigger;

		if (!count)
			return -EINVAL;

		trigger = *(uint8_t *)data;
		if (trigger && *ctx)
			FUNC4(*ctx, 1);

		return 0;
	} else if (flags & VFIO_IRQ_SET_DATA_EVENTFD) {
		int32_t fd;

		if (!count)
			return -EINVAL;

		fd = *(int32_t *)data;
		if (fd == -1) {
			if (*ctx)
				FUNC3(*ctx);
			*ctx = NULL;
		} else if (fd >= 0) {
			struct eventfd_ctx *efdctx;

			efdctx = FUNC2(fd);
			if (FUNC0(efdctx))
				return FUNC1(efdctx);

			if (*ctx)
				FUNC3(*ctx);

			*ctx = efdctx;
		}
		return 0;
	}

	return -EINVAL;
}