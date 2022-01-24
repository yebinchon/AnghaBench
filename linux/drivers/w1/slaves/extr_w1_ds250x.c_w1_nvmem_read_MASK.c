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
struct w1_slave {struct w1_eprom_data* family_data; } ;
struct w1_eprom_data {size_t size; int (* read ) (struct w1_slave*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * eprom; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (struct w1_slave*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *priv, unsigned int off, void *buf, size_t count)
{
	struct w1_slave *sl = priv;
	struct w1_eprom_data *data = sl->family_data;
	size_t eprom_size = data->size;
	int ret;
	int i;

	if (off > eprom_size)
		return -EINVAL;

	if ((off + count) > eprom_size)
		count = eprom_size - off;

	i = FUNC0(off);
	do {
		ret = data->read(sl, i++);
		if (ret < 0)
			return ret;
	} while (i < FUNC0(off + count));

	FUNC1(buf, &data->eprom[off], count);
	return 0;
}