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
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u32 ;
struct cxacru_data {int /*<<< orphan*/  usbatm; } ;
typedef  enum cxacru_cm_request { ____Placeholder_cxacru_cm_request } cxacru_cm_request ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int CMD_PACKET_SIZE ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cxacru_data*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct cxacru_data *instance, enum cxacru_cm_request cm,
			       u32 *data, int size)
{
	int ret, len;
	__le32 *buf;
	int offb;
	unsigned int offd;
	const int stride = CMD_PACKET_SIZE / (4 * 2) - 1;
	int buflen =  ((size - 1) / stride + 1 + size * 2) * 4;

	buf = FUNC2(buflen, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	ret = FUNC0(instance, cm, NULL, 0, (u8 *) buf, buflen);
	if (ret < 0)
		goto cleanup;

	/* len > 0 && len % 4 == 0 guaranteed by cxacru_cm() */
	len = ret / 4;
	for (offb = 0; offb < len; ) {
		int l = FUNC3(buf[offb++]);

		if (l < 0 || l > stride || l > (len - offb) / 2) {
			if (FUNC4())
				FUNC5(instance->usbatm, "invalid data length from cm %#x: %d\n",
					cm, l);
			ret = -EIO;
			goto cleanup;
		}
		while (l--) {
			offd = FUNC3(buf[offb++]);
			if (offd >= size) {
				if (FUNC4())
					FUNC5(instance->usbatm, "wrong index %#x in response to cm %#x\n",
						offd, cm);
				ret = -EIO;
				goto cleanup;
			}
			data[offd] = FUNC3(buf[offb++]);
		}
	}

	ret = 0;

cleanup:
	FUNC1(buf);
	return ret;
}