#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_function {char* name; int bind_deactivated; int /*<<< orphan*/  free_func; int /*<<< orphan*/  setup; int /*<<< orphan*/  disable; int /*<<< orphan*/  set_alt; int /*<<< orphan*/  get_alt; int /*<<< orphan*/  unbind; int /*<<< orphan*/  bind; } ;
struct TYPE_4__ {struct uvc_descriptor_header const* const* ss_streaming; struct uvc_descriptor_header const* const* hs_streaming; struct uvc_descriptor_header const* const* fs_streaming; int /*<<< orphan*/  ss_control; int /*<<< orphan*/  fs_control; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct uvc_device {struct usb_function func; TYPE_2__ desc; int /*<<< orphan*/  state; TYPE_1__ video; } ;
struct uvc_descriptor_header {int dummy; } ;
struct usb_function_instance {int dummy; } ;
struct f_uvc_opts {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcnt; struct uvc_descriptor_header const* const* ss_streaming; struct uvc_descriptor_header const* const* hs_streaming; struct uvc_descriptor_header const* const* fs_streaming; int /*<<< orphan*/  ss_control; int /*<<< orphan*/  fs_control; struct uvc_descriptor_header** uvc_ss_streaming_cls; struct uvc_descriptor_header** uvc_hs_streaming_cls; struct uvc_descriptor_header** uvc_fs_streaming_cls; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_function* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UVC_STATE_DISCONNECTED ; 
 struct f_uvc_opts* FUNC1 (struct usb_function_instance*) ; 
 struct uvc_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uvc_free ; 
 int /*<<< orphan*/  uvc_function_bind ; 
 int /*<<< orphan*/  uvc_function_disable ; 
 int /*<<< orphan*/  uvc_function_get_alt ; 
 int /*<<< orphan*/  uvc_function_set_alt ; 
 int /*<<< orphan*/  uvc_function_setup ; 
 int /*<<< orphan*/  uvc_unbind ; 

__attribute__((used)) static struct usb_function *FUNC6(struct usb_function_instance *fi)
{
	struct uvc_device *uvc;
	struct f_uvc_opts *opts;
	struct uvc_descriptor_header **strm_cls;

	uvc = FUNC2(sizeof(*uvc), GFP_KERNEL);
	if (uvc == NULL)
		return FUNC0(-ENOMEM);

	FUNC3(&uvc->video.mutex);
	uvc->state = UVC_STATE_DISCONNECTED;
	opts = FUNC1(fi);

	FUNC4(&opts->lock);
	if (opts->uvc_fs_streaming_cls) {
		strm_cls = opts->uvc_fs_streaming_cls;
		opts->fs_streaming =
			(const struct uvc_descriptor_header * const *)strm_cls;
	}
	if (opts->uvc_hs_streaming_cls) {
		strm_cls = opts->uvc_hs_streaming_cls;
		opts->hs_streaming =
			(const struct uvc_descriptor_header * const *)strm_cls;
	}
	if (opts->uvc_ss_streaming_cls) {
		strm_cls = opts->uvc_ss_streaming_cls;
		opts->ss_streaming =
			(const struct uvc_descriptor_header * const *)strm_cls;
	}

	uvc->desc.fs_control = opts->fs_control;
	uvc->desc.ss_control = opts->ss_control;
	uvc->desc.fs_streaming = opts->fs_streaming;
	uvc->desc.hs_streaming = opts->hs_streaming;
	uvc->desc.ss_streaming = opts->ss_streaming;
	++opts->refcnt;
	FUNC5(&opts->lock);

	/* Register the function. */
	uvc->func.name = "uvc";
	uvc->func.bind = uvc_function_bind;
	uvc->func.unbind = uvc_unbind;
	uvc->func.get_alt = uvc_function_get_alt;
	uvc->func.set_alt = uvc_function_set_alt;
	uvc->func.disable = uvc_function_disable;
	uvc->func.setup = uvc_function_setup;
	uvc->func.free_func = uvc_free;
	uvc->func.bind_deactivated = true;

	return &uvc->func;
}