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
struct miscdevice {char* name; int /*<<< orphan*/ * fops; int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  goldfish_pipe_fops ; 
 int /*<<< orphan*/  FUNC0 (struct miscdevice*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct miscdevice *miscdev)
{
	FUNC0(miscdev, 0, sizeof(*miscdev));

	miscdev->minor = MISC_DYNAMIC_MINOR;
	miscdev->name = "goldfish_pipe";
	miscdev->fops = &goldfish_pipe_fops;
}