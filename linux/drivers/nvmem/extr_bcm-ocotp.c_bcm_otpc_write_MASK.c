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
typedef  size_t u32 ;
struct otpc_priv {scalar_t__ base; int /*<<< orphan*/  dev; TYPE_2__* map; TYPE_1__* config; } ;
struct TYPE_4__ {int otpc_row_size; scalar_t__* data_w_offset; } ;
struct TYPE_3__ {unsigned int word_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  OTPC_CMD_PROGRAM ; 
 int /*<<< orphan*/  OTPC_STAT_CMD_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC9(void *context, unsigned int offset, void *val,
	size_t bytes)
{
	struct otpc_priv *priv = context;
	u32 *buf = val;
	u32 bytes_written;
	u32 address = offset / priv->config->word_size;
	int i, ret;

	if (offset % priv->config->word_size)
		return -EINVAL;

	ret = FUNC2(priv->base);
	if (ret)
		return -EIO;

	for (bytes_written = 0; bytes_written < bytes;) {
		FUNC5(priv->base, OTPC_CMD_PROGRAM);
		FUNC6(priv->base, address++);
		for (i = 0; i < priv->map->otpc_row_size; i++) {
			FUNC8(*buf, priv->base + priv->map->data_w_offset[i]);
			buf++;
			bytes_written += sizeof(*buf);
		}
		FUNC7(priv->base);
		ret = FUNC3(priv->base, OTPC_STAT_CMD_DONE);
		FUNC4(priv->base);
		if (ret) {
			FUNC0(priv->dev, "otp write error: 0x%x", ret);
			return -EIO;
		}
	}

	FUNC1(priv->base);

	return 0;
}