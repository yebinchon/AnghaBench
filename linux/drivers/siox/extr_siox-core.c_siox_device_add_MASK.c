#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct siox_master {size_t setbuf_len; size_t getbuf_len; size_t buf_len; int /*<<< orphan*/  devices; int /*<<< orphan*/  num_devices; int /*<<< orphan*/  dev; int /*<<< orphan*/ * buf; int /*<<< orphan*/  busno; } ;
struct TYPE_4__ {int /*<<< orphan*/  sd; } ;
struct TYPE_5__ {TYPE_1__ kobj; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * parent; } ;
struct siox_device {char const* type; size_t inbytes; size_t outbytes; TYPE_2__ dev; void* connected_kn; void* watchdog_errors_kn; void* watchdog_kn; void* status_errors_kn; int /*<<< orphan*/  node; struct siox_master* smaster; int /*<<< orphan*/  statustype; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct siox_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct siox_device*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 struct siox_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  siox_bus_type ; 
 int /*<<< orphan*/  siox_device_type ; 
 int /*<<< orphan*/  FUNC8 (struct siox_master*) ; 
 int /*<<< orphan*/  FUNC9 (struct siox_master*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct siox_device *FUNC11(struct siox_master *smaster,
					   const char *type, size_t inbytes,
					   size_t outbytes, u8 statustype)
{
	struct siox_device *sdevice;
	int ret;
	size_t buf_len;

	sdevice = FUNC6(sizeof(*sdevice), GFP_KERNEL);
	if (!sdevice)
		return FUNC0(-ENOMEM);

	sdevice->type = type;
	sdevice->inbytes = inbytes;
	sdevice->outbytes = outbytes;
	sdevice->statustype = statustype;

	sdevice->smaster = smaster;
	sdevice->dev.parent = &smaster->dev;
	sdevice->dev.bus = &siox_bus_type;
	sdevice->dev.type = &siox_device_type;

	FUNC8(smaster);

	FUNC2(&sdevice->dev, "siox-%d-%d",
		     smaster->busno, smaster->num_devices);

	buf_len = smaster->setbuf_len + inbytes +
		smaster->getbuf_len + outbytes;
	if (smaster->buf_len < buf_len) {
		u8 *buf = FUNC5(smaster->buf, buf_len, GFP_KERNEL);

		if (!buf) {
			FUNC1(&smaster->dev,
				"failed to realloc buffer to %zu\n", buf_len);
			ret = -ENOMEM;
			goto err_buf_alloc;
		}

		smaster->buf_len = buf_len;
		smaster->buf = buf;
	}

	ret = FUNC3(&sdevice->dev);
	if (ret) {
		FUNC1(&smaster->dev, "failed to register device: %d\n", ret);

		goto err_device_register;
	}

	smaster->num_devices++;
	FUNC7(&sdevice->node, &smaster->devices);

	smaster->setbuf_len += sdevice->inbytes;
	smaster->getbuf_len += sdevice->outbytes;

	sdevice->status_errors_kn = FUNC10(sdevice->dev.kobj.sd,
						     "status_errors");
	sdevice->watchdog_kn = FUNC10(sdevice->dev.kobj.sd,
						"watchdog");
	sdevice->watchdog_errors_kn = FUNC10(sdevice->dev.kobj.sd,
						       "watchdog_errors");
	sdevice->connected_kn = FUNC10(sdevice->dev.kobj.sd,
						 "connected");

	FUNC9(smaster);

	return sdevice;

err_device_register:
	/* don't care to make the buffer smaller again */

err_buf_alloc:
	FUNC9(smaster);

	FUNC4(sdevice);

	return FUNC0(ret);
}