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
struct usb_function_instance {int /*<<< orphan*/  group; int /*<<< orphan*/  free_func_inst; } ;
struct f_ss_opts {struct usb_function_instance func_inst; int /*<<< orphan*/  iso_qlen; int /*<<< orphan*/  bulk_qlen; int /*<<< orphan*/  bulk_buflen; int /*<<< orphan*/  isoc_maxpacket; int /*<<< orphan*/  isoc_interval; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_function_instance* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GZERO_BULK_BUFLEN ; 
 int /*<<< orphan*/  GZERO_ISOC_INTERVAL ; 
 int /*<<< orphan*/  GZERO_ISOC_MAXPACKET ; 
 int /*<<< orphan*/  GZERO_SS_BULK_QLEN ; 
 int /*<<< orphan*/  GZERO_SS_ISO_QLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 struct f_ss_opts* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  source_sink_free_instance ; 
 int /*<<< orphan*/  ss_func_type ; 

__attribute__((used)) static struct usb_function_instance *FUNC4(void)
{
	struct f_ss_opts *ss_opts;

	ss_opts = FUNC2(sizeof(*ss_opts), GFP_KERNEL);
	if (!ss_opts)
		return FUNC0(-ENOMEM);
	FUNC3(&ss_opts->lock);
	ss_opts->func_inst.free_func_inst = source_sink_free_instance;
	ss_opts->isoc_interval = GZERO_ISOC_INTERVAL;
	ss_opts->isoc_maxpacket = GZERO_ISOC_MAXPACKET;
	ss_opts->bulk_buflen = GZERO_BULK_BUFLEN;
	ss_opts->bulk_qlen = GZERO_SS_BULK_QLEN;
	ss_opts->iso_qlen = GZERO_SS_ISO_QLEN;

	FUNC1(&ss_opts->func_inst.group, "",
				    &ss_func_type);

	return &ss_opts->func_inst;
}