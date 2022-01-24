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
struct TYPE_3__ {scalar_t__ status; int sockfd; int /*<<< orphan*/  lock; void* tcp_tx; void* tcp_rx; struct socket* tcp_socket; } ;
struct stub_device {TYPE_1__ ud; } ;
struct socket {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENODEV ; 
 int /*<<< orphan*/  SDEV_EVENT_DOWN ; 
 scalar_t__ SDEV_ST_AVAILABLE ; 
 scalar_t__ SDEV_ST_USED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct stub_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 struct socket* FUNC4 (int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,char*,int*) ; 
 int /*<<< orphan*/  stub_rx_loop ; 
 int /*<<< orphan*/  stub_tx_loop ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct stub_device *sdev = FUNC1(dev);
	int sockfd = 0;
	struct socket *socket;
	int rv;

	if (!sdev) {
		FUNC0(dev, "sdev is null\n");
		return -ENODEV;
	}

	rv = FUNC7(buf, "%d", &sockfd);
	if (rv != 1)
		return -EINVAL;

	if (sockfd != -1) {
		int err;

		FUNC2(dev, "stub up\n");

		FUNC5(&sdev->ud.lock);

		if (sdev->ud.status != SDEV_ST_AVAILABLE) {
			FUNC0(dev, "not ready\n");
			goto err;
		}

		socket = FUNC4(sockfd, &err);
		if (!socket)
			goto err;

		sdev->ud.tcp_socket = socket;
		sdev->ud.sockfd = sockfd;

		FUNC6(&sdev->ud.lock);

		sdev->ud.tcp_rx = FUNC3(stub_rx_loop, &sdev->ud,
						  "stub_rx");
		sdev->ud.tcp_tx = FUNC3(stub_tx_loop, &sdev->ud,
						  "stub_tx");

		FUNC5(&sdev->ud.lock);
		sdev->ud.status = SDEV_ST_USED;
		FUNC6(&sdev->ud.lock);

	} else {
		FUNC2(dev, "stub down\n");

		FUNC5(&sdev->ud.lock);
		if (sdev->ud.status != SDEV_ST_USED)
			goto err;

		FUNC6(&sdev->ud.lock);

		FUNC8(&sdev->ud, SDEV_EVENT_DOWN);
	}

	return count;

err:
	FUNC6(&sdev->ud.lock);
	return -EINVAL;
}