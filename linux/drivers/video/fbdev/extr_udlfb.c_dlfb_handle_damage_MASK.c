#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct urb {char* transfer_buffer; int transfer_buffer_length; } ;
struct dlfb_data {int /*<<< orphan*/  render_mutex; int /*<<< orphan*/  cpu_kcycles_used; int /*<<< orphan*/  bytes_rendered; int /*<<< orphan*/  bytes_identical; int /*<<< orphan*/  bytes_sent; TYPE_3__* info; int /*<<< orphan*/  usb_active; } ;
typedef  int cycles_t ;
struct TYPE_5__ {int line_length; scalar_t__ smem_start; } ;
struct TYPE_4__ {int xres; int yres; } ;
struct TYPE_6__ {TYPE_2__ fix; TYPE_1__ var; } ;

/* Variables and functions */
 int BPP ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct urb* FUNC4 (struct dlfb_data*) ; 
 scalar_t__ FUNC5 (struct dlfb_data*,struct urb**,char*,char**,int const,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlfb_data*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct dlfb_data *dlfb, int x, int y, int width, int height)
{
	int i, ret;
	char *cmd;
	cycles_t start_cycles, end_cycles;
	int bytes_sent = 0;
	int bytes_identical = 0;
	struct urb *urb;
	int aligned_x;

	start_cycles = FUNC8();

	FUNC9(&dlfb->render_mutex);

	aligned_x = FUNC0(x, sizeof(unsigned long));
	width = FUNC1(width + (x-aligned_x), sizeof(unsigned long));
	x = aligned_x;

	if ((width <= 0) ||
	    (x + width > dlfb->info->var.xres) ||
	    (y + height > dlfb->info->var.yres)) {
		ret = -EINVAL;
		goto unlock_ret;
	}

	if (!FUNC3(&dlfb->usb_active)) {
		ret = 0;
		goto unlock_ret;
	}

	urb = FUNC4(dlfb);
	if (!urb) {
		ret = 0;
		goto unlock_ret;
	}
	cmd = urb->transfer_buffer;

	for (i = y; i < y + height ; i++) {
		const int line_offset = dlfb->info->fix.line_length * i;
		const int byte_offset = line_offset + (x * BPP);

		if (FUNC5(dlfb, &urb,
				      (char *) dlfb->info->fix.smem_start,
				      &cmd, byte_offset, width * BPP,
				      &bytes_identical, &bytes_sent))
			goto error;
	}

	if (cmd > (char *) urb->transfer_buffer) {
		int len;
		if (cmd < (char *) urb->transfer_buffer + urb->transfer_buffer_length)
			*cmd++ = 0xAF;
		/* Send partial buffer remaining before exiting */
		len = cmd - (char *) urb->transfer_buffer;
		FUNC6(dlfb, urb, len);
		bytes_sent += len;
	} else
		FUNC7(urb);

error:
	FUNC2(bytes_sent, &dlfb->bytes_sent);
	FUNC2(bytes_identical, &dlfb->bytes_identical);
	FUNC2(width*height*2, &dlfb->bytes_rendered);
	end_cycles = FUNC8();
	FUNC2(((unsigned int) ((end_cycles - start_cycles)
		    >> 10)), /* Kcycles */
		   &dlfb->cpu_kcycles_used);

	ret = 0;

unlock_ret:
	FUNC10(&dlfb->render_mutex);
	return ret;
}