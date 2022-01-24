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
struct tb_switch {TYPE_2__* tb; TYPE_1__* nvm; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {unsigned int buf_data_size; scalar_t__ buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NVM_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *priv, unsigned int offset, void *val,
			       size_t bytes)
{
	struct tb_switch *sw = priv;
	int ret = 0;

	if (!FUNC1(&sw->tb->lock))
		return FUNC3();

	/*
	 * Since writing the NVM image might require some special steps,
	 * for example when CSS headers are written, we cache the image
	 * locally here and handle the special cases when the user asks
	 * us to authenticate the image.
	 */
	if (!sw->nvm->buf) {
		sw->nvm->buf = FUNC4(NVM_MAX_SIZE);
		if (!sw->nvm->buf) {
			ret = -ENOMEM;
			goto unlock;
		}
	}

	sw->nvm->buf_data_size = offset + bytes;
	FUNC0(sw->nvm->buf + offset, val, bytes);

unlock:
	FUNC2(&sw->tb->lock);

	return ret;
}