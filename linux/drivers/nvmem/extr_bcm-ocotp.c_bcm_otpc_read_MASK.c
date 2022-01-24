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
struct otpc_priv {scalar_t__ base; TYPE_2__* map; int /*<<< orphan*/  dev; TYPE_1__* config; } ;
struct TYPE_4__ {int otpc_row_size; scalar_t__* data_r_offset; } ;
struct TYPE_3__ {unsigned int word_size; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  OTPC_CMD_READ ; 
 int /*<<< orphan*/  OTPC_STAT_CMD_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(void *context, unsigned int offset, void *val,
	size_t bytes)
{
	struct otpc_priv *priv = context;
	u32 *buf = val;
	u32 bytes_read;
	u32 address = offset / priv->config->word_size;
	int i, ret;

	for (bytes_read = 0; bytes_read < bytes;) {
		FUNC4(priv->base, OTPC_CMD_READ);
		FUNC5(priv->base, address++);
		FUNC6(priv->base);
		ret = FUNC1(priv->base, OTPC_STAT_CMD_DONE);
		if (ret) {
			FUNC0(priv->dev, "otp read error: 0x%x", ret);
			return -EIO;
		}

		for (i = 0; i < priv->map->otpc_row_size; i++) {
			*buf++ = FUNC2(priv->base +
					priv->map->data_r_offset[i]);
			bytes_read += sizeof(*buf);
		}

		FUNC3(priv->base);
	}

	return 0;
}