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
struct tty_struct {struct slgt_info* driver_data; } ;
struct slgt_info {int signals; int /*<<< orphan*/  device_name; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SerialSignal_CTS ; 
 int SerialSignal_DCD ; 
 int SerialSignal_DSR ; 
 int SerialSignal_DTR ; 
 int SerialSignal_RI ; 
 int SerialSignal_RTS ; 
 unsigned int TIOCM_CAR ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RNG ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty)
{
	struct slgt_info *info = tty->driver_data;
	unsigned int result;
 	unsigned long flags;

	FUNC2(&info->lock,flags);
 	FUNC1(info);
	FUNC3(&info->lock,flags);

	result = ((info->signals & SerialSignal_RTS) ? TIOCM_RTS:0) +
		((info->signals & SerialSignal_DTR) ? TIOCM_DTR:0) +
		((info->signals & SerialSignal_DCD) ? TIOCM_CAR:0) +
		((info->signals & SerialSignal_RI)  ? TIOCM_RNG:0) +
		((info->signals & SerialSignal_DSR) ? TIOCM_DSR:0) +
		((info->signals & SerialSignal_CTS) ? TIOCM_CTS:0);

	FUNC0(("%s tiocmget value=%08X\n", info->device_name, result));
	return result;
}