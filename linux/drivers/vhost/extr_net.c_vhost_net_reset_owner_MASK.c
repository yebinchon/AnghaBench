#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vhost_umem {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct vhost_net {TYPE_1__ dev; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 long ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 long FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct vhost_umem*) ; 
 struct vhost_umem* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct vhost_net*) ; 
 int /*<<< orphan*/  FUNC8 (struct vhost_net*,struct socket**,struct socket**) ; 
 int /*<<< orphan*/  FUNC9 (struct vhost_net*) ; 

__attribute__((used)) static long FUNC10(struct vhost_net *n)
{
	struct socket *tx_sock = NULL;
	struct socket *rx_sock = NULL;
	long err;
	struct vhost_umem *umem;

	FUNC0(&n->dev.mutex);
	err = FUNC3(&n->dev);
	if (err)
		goto done;
	umem = FUNC5();
	if (!umem) {
		err = -ENOMEM;
		goto done;
	}
	FUNC8(n, &tx_sock, &rx_sock);
	FUNC7(n);
	FUNC6(&n->dev);
	FUNC4(&n->dev, umem);
	FUNC9(n);
done:
	FUNC1(&n->dev.mutex);
	if (tx_sock)
		FUNC2(tx_sock);
	if (rx_sock)
		FUNC2(rx_sock);
	return err;
}