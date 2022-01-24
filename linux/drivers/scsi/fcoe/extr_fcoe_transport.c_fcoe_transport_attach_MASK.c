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
struct fcoe_transport {int attached; int /*<<< orphan*/  name; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FCOE_TRANSPORT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fcoe_transports ; 
 int /*<<< orphan*/  ft_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct fcoe_transport *ft)
{
	int rc = 0;

	FUNC3(&ft_mutex);
	if (ft->attached) {
		FUNC0("transport %s already attached\n",
				       ft->name);
		rc = -EEXIST;
		goto out_attach;
	}

	/* Add default transport to the tail */
	if (FUNC5(ft->name, FCOE_TRANSPORT_DEFAULT))
		FUNC1(&ft->list, &fcoe_transports);
	else
		FUNC2(&ft->list, &fcoe_transports);

	ft->attached = true;
	FUNC0("attaching transport %s\n", ft->name);

out_attach:
	FUNC4(&ft_mutex);
	return rc;
}