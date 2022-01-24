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
struct rio_net {int /*<<< orphan*/  mports; int /*<<< orphan*/  switches; int /*<<< orphan*/  devices; int /*<<< orphan*/  node; } ;
struct rio_mport {struct rio_net* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rio_net* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct rio_net *FUNC2(struct rio_mport *mport)
{
	struct rio_net *net = FUNC1(sizeof(*net), GFP_KERNEL);

	if (net) {
		FUNC0(&net->node);
		FUNC0(&net->devices);
		FUNC0(&net->switches);
		FUNC0(&net->mports);
		mport->net = net;
	}
	return net;
}