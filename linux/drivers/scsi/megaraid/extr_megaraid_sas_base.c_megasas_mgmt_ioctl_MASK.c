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
struct file {int dummy; } ;

/* Variables and functions */
 long ENOTTY ; 
#define  MEGASAS_IOC_FIRMWARE 129 
#define  MEGASAS_IOC_GET_AEN 128 
 long FUNC0 (struct file*,unsigned long) ; 
 long FUNC1 (struct file*,unsigned long) ; 

__attribute__((used)) static long
FUNC2(struct file *file, unsigned int cmd, unsigned long arg)
{
	switch (cmd) {
	case MEGASAS_IOC_FIRMWARE:
		return FUNC1(file, arg);

	case MEGASAS_IOC_GET_AEN:
		return FUNC0(file, arg);
	}

	return -ENOTTY;
}