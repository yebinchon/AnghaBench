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
struct f_midi_opts {int buflen; int qlen; int in_ports; int out_ports; int refcnt; struct usb_function_instance func_inst; int /*<<< orphan*/  id; int /*<<< orphan*/  index; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_function_instance* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  f_midi_free_inst ; 
 struct f_midi_opts* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  midi_func_type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct usb_function_instance *FUNC4(void)
{
	struct f_midi_opts *opts;

	opts = FUNC2(sizeof(*opts), GFP_KERNEL);
	if (!opts)
		return FUNC0(-ENOMEM);

	FUNC3(&opts->lock);
	opts->func_inst.free_func_inst = f_midi_free_inst;
	opts->index = SNDRV_DEFAULT_IDX1;
	opts->id = SNDRV_DEFAULT_STR1;
	opts->buflen = 512;
	opts->qlen = 32;
	opts->in_ports = 1;
	opts->out_ports = 1;
	opts->refcnt = 1;

	FUNC1(&opts->func_inst.group, "",
				    &midi_func_type);

	return &opts->func_inst;
}