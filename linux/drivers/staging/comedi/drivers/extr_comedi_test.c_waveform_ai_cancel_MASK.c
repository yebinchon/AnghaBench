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
struct waveform_private {int /*<<< orphan*/  ai_timer; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct waveform_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			      struct comedi_subdevice *s)
{
	struct waveform_private *devpriv = dev->private;

	if (FUNC2()) {
		/* Assume we were called from the timer routine itself. */
		FUNC0(&devpriv->ai_timer);
	} else {
		FUNC1(&devpriv->ai_timer);
	}
	return 0;
}