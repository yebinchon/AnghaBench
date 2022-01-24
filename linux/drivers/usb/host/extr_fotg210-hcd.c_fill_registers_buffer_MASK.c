#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_6__* controller; } ;
struct usb_hcd {int /*<<< orphan*/  product_desc; TYPE_2__ self; } ;
struct TYPE_11__ {unsigned int complete; char* unlink; int /*<<< orphan*/  lost_iaa; int /*<<< orphan*/  iaa; int /*<<< orphan*/  error; int /*<<< orphan*/  normal; } ;
struct fotg210_hcd {int async_unlink; int /*<<< orphan*/  lock; TYPE_5__ stats; TYPE_4__* regs; TYPE_3__* caps; } ;
struct debug_buffer {char* output_buf; unsigned int alloc_size; int /*<<< orphan*/  bus; } ;
typedef  unsigned int ssize_t ;
typedef  int /*<<< orphan*/  scratch ;
struct TYPE_12__ {TYPE_1__* bus; } ;
struct TYPE_10__ {int /*<<< orphan*/  intr_enable; int /*<<< orphan*/  command; int /*<<< orphan*/  status; } ;
struct TYPE_9__ {int /*<<< orphan*/  hcc_params; int /*<<< orphan*/  hcs_params; int /*<<< orphan*/  hc_capbase; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 unsigned int FUNC1 (struct fotg210_hcd*,unsigned int) ; 
 struct usb_hcd* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (char*,int,char const*,unsigned int) ; 
 unsigned int FUNC4 (char*,int,char const*,unsigned int) ; 
 unsigned int FUNC5 (char*,int,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (struct fotg210_hcd*) ; 
 unsigned int FUNC8 (struct fotg210_hcd*,int /*<<< orphan*/ *) ; 
 struct fotg210_hcd* FUNC9 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct fotg210_hcd*) ; 
 unsigned int FUNC11 (char*,unsigned int,char const*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC14(struct debug_buffer *buf)
{
	struct usb_hcd *hcd;
	struct fotg210_hcd *fotg210;
	unsigned long flags;
	unsigned temp, size, i;
	char *next, scratch[80];
	static const char fmt[] = "%*s\n";
	static const char label[] = "";

	hcd = FUNC2(buf->bus);
	fotg210 = FUNC9(hcd);
	next = buf->output_buf;
	size = buf->alloc_size;

	FUNC12(&fotg210->lock, flags);

	if (!FUNC0(hcd)) {
		size = FUNC11(next, size,
				"bus %s, device %s\n"
				"%s\n"
				"SUSPENDED(no register access)\n",
				hcd->self.controller->bus->name,
				FUNC6(hcd->self.controller),
				hcd->product_desc);
		goto done;
	}

	/* Capability Registers */
	i = FUNC1(fotg210, FUNC8(fotg210,
			&fotg210->caps->hc_capbase));
	temp = FUNC11(next, size,
			"bus %s, device %s\n"
			"%s\n"
			"EHCI %x.%02x, rh state %s\n",
			hcd->self.controller->bus->name,
			FUNC6(hcd->self.controller),
			hcd->product_desc,
			i >> 8, i & 0x0ff, FUNC10(fotg210));
	size -= temp;
	next += temp;

	/* FIXME interpret both types of params */
	i = FUNC8(fotg210, &fotg210->caps->hcs_params);
	temp = FUNC11(next, size, "structural params 0x%08x\n", i);
	size -= temp;
	next += temp;

	i = FUNC8(fotg210, &fotg210->caps->hcc_params);
	temp = FUNC11(next, size, "capability params 0x%08x\n", i);
	size -= temp;
	next += temp;

	/* Operational Registers */
	temp = FUNC5(scratch, sizeof(scratch), label,
			FUNC8(fotg210, &fotg210->regs->status));
	temp = FUNC11(next, size, fmt, temp, scratch);
	size -= temp;
	next += temp;

	temp = FUNC3(scratch, sizeof(scratch), label,
			FUNC8(fotg210, &fotg210->regs->command));
	temp = FUNC11(next, size, fmt, temp, scratch);
	size -= temp;
	next += temp;

	temp = FUNC4(scratch, sizeof(scratch), label,
			FUNC8(fotg210, &fotg210->regs->intr_enable));
	temp = FUNC11(next, size, fmt, temp, scratch);
	size -= temp;
	next += temp;

	temp = FUNC11(next, size, "uframe %04x\n",
			FUNC7(fotg210));
	size -= temp;
	next += temp;

	if (fotg210->async_unlink) {
		temp = FUNC11(next, size, "async unlink qh %p\n",
				fotg210->async_unlink);
		size -= temp;
		next += temp;
	}

#ifdef FOTG210_STATS
	temp = scnprintf(next, size,
			"irq normal %ld err %ld iaa %ld(lost %ld)\n",
			fotg210->stats.normal, fotg210->stats.error,
			fotg210->stats.iaa, fotg210->stats.lost_iaa);
	size -= temp;
	next += temp;

	temp = scnprintf(next, size, "complete %ld unlink %ld\n",
			fotg210->stats.complete, fotg210->stats.unlink);
	size -= temp;
	next += temp;
#endif

done:
	FUNC13(&fotg210->lock, flags);

	return buf->alloc_size - size;
}