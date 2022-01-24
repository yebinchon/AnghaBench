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
struct usbtmc_file_data {char term_char; int eom_val; int /*<<< orphan*/  file_elem; scalar_t__ auto_abort; scalar_t__ term_char_enabled; int /*<<< orphan*/  timeout; int /*<<< orphan*/  closing; struct usbtmc_device_data* data; int /*<<< orphan*/  wait_bulk_in; int /*<<< orphan*/  in_anchor; int /*<<< orphan*/  submitted; int /*<<< orphan*/  limit_write_sem; int /*<<< orphan*/  err_lock; } ;
struct usbtmc_device_data {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  file_list; int /*<<< orphan*/  kref; } ;
struct usb_interface {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct usbtmc_file_data* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_URBS_IN_FLIGHT ; 
 int /*<<< orphan*/  USBTMC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct usbtmc_file_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct usb_interface* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usbtmc_device_data* FUNC16 (struct usb_interface*) ; 
 int /*<<< orphan*/  usbtmc_driver ; 

__attribute__((used)) static int FUNC17(struct inode *inode, struct file *filp)
{
	struct usb_interface *intf;
	struct usbtmc_device_data *data;
	struct usbtmc_file_data *file_data;

	intf = FUNC15(&usbtmc_driver, FUNC2(inode));
	if (!intf) {
		FUNC10("can not find device for minor %d", FUNC2(inode));
		return -ENODEV;
	}

	file_data = FUNC6(sizeof(*file_data), GFP_KERNEL);
	if (!file_data)
		return -ENOMEM;

	FUNC12(&file_data->err_lock);
	FUNC11(&file_data->limit_write_sem, MAX_URBS_IN_FLIGHT);
	FUNC3(&file_data->submitted);
	FUNC3(&file_data->in_anchor);
	FUNC4(&file_data->wait_bulk_in);

	data = FUNC16(intf);
	/* Protect reference to data from file structure until release */
	FUNC5(&data->kref);

	FUNC8(&data->io_mutex);
	file_data->data = data;

	FUNC1(&file_data->closing, 0);

	file_data->timeout = USBTMC_TIMEOUT;
	file_data->term_char = '\n';
	file_data->term_char_enabled = 0;
	file_data->auto_abort = 0;
	file_data->eom_val = 1;

	FUNC0(&file_data->file_elem);
	FUNC13(&data->dev_lock);
	FUNC7(&file_data->file_elem, &data->file_list);
	FUNC14(&data->dev_lock);
	FUNC9(&data->io_mutex);

	/* Store pointer in file structure's private data field */
	filp->private_data = file_data;

	return 0;
}