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
typedef  unsigned int u8 ;
struct isl12026 {TYPE_2__* rtc; TYPE_1__* nvm_client; } ;
struct i2c_msg {unsigned int* buf; size_t len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  ops_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_msg*) ; 
 int EIO ; 
 int /*<<< orphan*/  ISL12026_NVMEM_WRITE_TIME ; 
 int ISL12026_PAGESIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*,size_t) ; 
 size_t FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (unsigned int,int) ; 

__attribute__((used)) static int FUNC9(void *p, unsigned int offset,
			      void *val, size_t bytes)
{
	struct isl12026 *priv = p;
	int ret;
	u8 *v = val;
	size_t chunk_size, num_written;
	u8 payload[ISL12026_PAGESIZE + 2]; /* page + 2 address bytes */
	struct i2c_msg msgs[] = {
		{
			.addr	= priv->nvm_client->addr,
			.flags	= 0,
			.buf	= payload
		}
	};

	/*
	 * offset and bytes checked and limited by nvmem core, so
	 * proceed without further checks.
	 */
	ret = FUNC6(&priv->rtc->ops_lock);
	if (ret)
		return ret;

	num_written = 0;
	while (bytes) {
		chunk_size = FUNC8(offset, ISL12026_PAGESIZE) +
			ISL12026_PAGESIZE - offset;
		chunk_size = FUNC4(bytes, chunk_size);
		/*
		 * 2 bytes of address, most significant first, followed
		 * by page data bytes
		 */
		FUNC3(payload + 2, v + num_written, chunk_size);
		payload[0] = offset >> 8;
		payload[1] = offset;
		msgs[0].len = chunk_size + 2;
		ret = FUNC2(priv->nvm_client->adapter,
				   msgs, FUNC0(msgs));
		if (ret != FUNC0(msgs)) {
			FUNC1(&priv->nvm_client->dev,
				"nvmem write error, ret=%d\n", ret);
			ret = ret < 0 ? ret : -EIO;
			break;
		}
		ret = 0;
		bytes -= chunk_size;
		offset += chunk_size;
		num_written += chunk_size;
		FUNC5(ISL12026_NVMEM_WRITE_TIME);
	}

	FUNC7(&priv->rtc->ops_lock);

	return ret;
}