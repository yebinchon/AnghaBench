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
struct iio_dev {int /*<<< orphan*/ * setup_ops; } ;
struct iio_buffer {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ad5933_ring_setup_ops ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*,struct iio_buffer*) ; 
 struct iio_buffer* FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev)
{
	struct iio_buffer *buffer;

	buffer = FUNC1();
	if (!buffer)
		return -ENOMEM;

	FUNC0(indio_dev, buffer);

	/* Ring buffer functions - here trigger setup related */
	indio_dev->setup_ops = &ad5933_ring_setup_ops;

	return 0;
}