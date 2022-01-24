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
struct usb_hcd {int dummy; } ;
struct urb {int transfer_buffer_length; int /*<<< orphan*/  pipe; } ;
struct list_head {int dummy; } ;
struct fotg210_hcd {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
#define  PIPE_CONTROL 130 
#define  PIPE_INTERRUPT 129 
#define  PIPE_ISOCHRONOUS 128 
 struct fotg210_hcd* FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (struct fotg210_hcd*,struct urb*,struct list_head*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fotg210_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fotg210_hcd*,struct urb*,struct list_head*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fotg210_hcd*,struct urb*,struct list_head*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_hcd *hcd, struct urb *urb,
		gfp_t mem_flags)
{
	struct fotg210_hcd *fotg210 = FUNC1(hcd);
	struct list_head qtd_list;

	FUNC0(&qtd_list);

	switch (FUNC6(urb->pipe)) {
	case PIPE_CONTROL:
		/* qh_completions() code doesn't handle all the fault cases
		 * in multi-TD control transfers.  Even 1KB is rare anyway.
		 */
		if (urb->transfer_buffer_length > (16 * 1024))
			return -EMSGSIZE;
		/* FALLTHROUGH */
	/* case PIPE_BULK: */
	default:
		if (!FUNC4(fotg210, urb, &qtd_list, mem_flags))
			return -ENOMEM;
		return FUNC5(fotg210, urb, &qtd_list, mem_flags);

	case PIPE_INTERRUPT:
		if (!FUNC4(fotg210, urb, &qtd_list, mem_flags))
			return -ENOMEM;
		return FUNC2(fotg210, urb, &qtd_list, mem_flags);

	case PIPE_ISOCHRONOUS:
		return FUNC3(fotg210, urb, mem_flags);
	}
}