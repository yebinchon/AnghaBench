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
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct iscsi_np {struct cxgbit_np* np_context; struct sockaddr_storage np_sockaddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  completion; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/ * cdev; struct sockaddr_storage local_addr; TYPE_1__ wr_wait; } ;
struct cxgbit_np {TYPE_2__ com; struct iscsi_np* np; int /*<<< orphan*/  kref; int /*<<< orphan*/  np_accept_lock; int /*<<< orphan*/  np_accept_list; int /*<<< orphan*/  accept_comp; int /*<<< orphan*/  accept_wait; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  CSK_STATE_LISTEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cxgbit_np*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbit_np*) ; 
 int FUNC3 (struct cxgbit_np*) ; 
 int FUNC4 (struct cxgbit_np*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cxgbit_np* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_storage*,struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct iscsi_np *np, struct sockaddr_storage *ksockaddr)
{
	struct cxgbit_np *cnp;
	int ret;

	if ((ksockaddr->ss_family != AF_INET) &&
	    (ksockaddr->ss_family != AF_INET6))
		return -EINVAL;

	cnp = FUNC8(sizeof(*cnp), GFP_KERNEL);
	if (!cnp)
		return -ENOMEM;

	FUNC6(&cnp->accept_wait);
	FUNC5(&cnp->com.wr_wait.completion);
	FUNC5(&cnp->accept_comp);
	FUNC0(&cnp->np_accept_list);
	FUNC10(&cnp->np_accept_lock);
	FUNC7(&cnp->kref);
	FUNC9(&np->np_sockaddr, ksockaddr,
	       sizeof(struct sockaddr_storage));
	FUNC9(&cnp->com.local_addr, &np->np_sockaddr,
	       sizeof(cnp->com.local_addr));

	cnp->np = np;
	cnp->com.cdev = NULL;

	if (FUNC1(cnp))
		ret = FUNC3(cnp);
	else
		ret = FUNC4(cnp);

	if (ret) {
		FUNC2(cnp);
		return -EINVAL;
	}

	np->np_context = cnp;
	cnp->com.state = CSK_STATE_LISTEN;
	return 0;
}