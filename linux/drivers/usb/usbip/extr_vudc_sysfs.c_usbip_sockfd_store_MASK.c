#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ status; int /*<<< orphan*/  lock; void* tcp_tx; void* tcp_rx; struct socket* tcp_socket; } ;
struct vudc {int connected; int /*<<< orphan*/  lock; TYPE_1__ ud; int /*<<< orphan*/  start_time; int /*<<< orphan*/  pullup; int /*<<< orphan*/  driver; } ;
struct socket {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 size_t EINVAL ; 
 size_t ENODEV ; 
 scalar_t__ SDEV_ST_AVAILABLE ; 
 scalar_t__ SDEV_ST_USED ; 
 int /*<<< orphan*/  VUDC_EVENT_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct socket* FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v_rx_loop ; 
 int /*<<< orphan*/  FUNC11 (struct vudc*) ; 
 int /*<<< orphan*/  v_tx_loop ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev, struct device_attribute *attr,
		     const char *in, size_t count)
{
	struct vudc *udc = (struct vudc *) FUNC1(dev);
	int rv;
	int sockfd = 0;
	int err;
	struct socket *socket;
	unsigned long flags;
	int ret;

	rv = FUNC2(in, 0, &sockfd);
	if (rv != 0)
		return -EINVAL;

	if (!udc) {
		FUNC0(dev, "no device");
		return -ENODEV;
	}
	FUNC7(&udc->lock, flags);
	/* Don't export what we don't have */
	if (!udc->driver || !udc->pullup) {
		FUNC0(dev, "gadget not bound");
		ret = -ENODEV;
		goto unlock;
	}

	if (sockfd != -1) {
		if (udc->connected) {
			FUNC0(dev, "Device already connected");
			ret = -EBUSY;
			goto unlock;
		}

		FUNC6(&udc->ud.lock);

		if (udc->ud.status != SDEV_ST_AVAILABLE) {
			ret = -EINVAL;
			goto unlock_ud;
		}

		socket = FUNC5(sockfd, &err);
		if (!socket) {
			FUNC0(dev, "failed to lookup sock");
			ret = -EINVAL;
			goto unlock_ud;
		}

		udc->ud.tcp_socket = socket;

		FUNC8(&udc->ud.lock);
		FUNC9(&udc->lock, flags);

		udc->ud.tcp_rx = FUNC3(&v_rx_loop,
						    &udc->ud, "vudc_rx");
		udc->ud.tcp_tx = FUNC3(&v_tx_loop,
						    &udc->ud, "vudc_tx");

		FUNC7(&udc->lock, flags);
		FUNC6(&udc->ud.lock);
		udc->ud.status = SDEV_ST_USED;
		FUNC8(&udc->ud.lock);

		FUNC4(&udc->start_time);
		FUNC11(udc);
		udc->connected = 1;
	} else {
		if (!udc->connected) {
			FUNC0(dev, "Device not connected");
			ret = -EINVAL;
			goto unlock;
		}

		FUNC6(&udc->ud.lock);
		if (udc->ud.status != SDEV_ST_USED) {
			ret = -EINVAL;
			goto unlock_ud;
		}
		FUNC8(&udc->ud.lock);

		FUNC10(&udc->ud, VUDC_EVENT_DOWN);
	}

	FUNC9(&udc->lock, flags);

	return count;

unlock_ud:
	FUNC8(&udc->ud.lock);
unlock:
	FUNC9(&udc->lock, flags);

	return ret;
}