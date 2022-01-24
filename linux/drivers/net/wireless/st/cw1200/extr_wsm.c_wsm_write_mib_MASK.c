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
typedef  size_t u16 ;
struct wsm_mib {size_t mib_id; void* buf; size_t buf_size; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,size_t) ; 
 int /*<<< orphan*/  WSM_WRITE_MIB_REQ_ID ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*) ; 
 int FUNC3 (struct cw1200_common*,struct wsm_buf*,struct wsm_mib*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 

int FUNC5(struct cw1200_common *priv, u16 mib_id, void *_buf,
			size_t buf_size)
{
	int ret;
	struct wsm_buf *buf = &priv->wsm_cmd_buf;
	struct wsm_mib mib_buf = {
		.mib_id = mib_id,
		.buf = _buf,
		.buf_size = buf_size,
	};

	FUNC2(priv);

	FUNC1(buf, mib_id);
	FUNC1(buf, buf_size);
	FUNC0(buf, _buf, buf_size);

	ret = FUNC3(priv, buf, &mib_buf,
			   WSM_WRITE_MIB_REQ_ID, WSM_CMD_TIMEOUT);
	FUNC4(priv);
	return ret;

nomem:
	FUNC4(priv);
	return -ENOMEM;
}