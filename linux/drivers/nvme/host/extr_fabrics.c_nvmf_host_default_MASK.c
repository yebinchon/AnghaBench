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
struct nvmf_host {int /*<<< orphan*/  list; int /*<<< orphan*/  nqn; int /*<<< orphan*/  id; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVMF_NQN_SIZE ; 
 struct nvmf_host* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmf_hosts ; 
 int /*<<< orphan*/  nvmf_hosts_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nvmf_host *FUNC7(void)
{
	struct nvmf_host *host;

	host = FUNC0(sizeof(*host), GFP_KERNEL);
	if (!host)
		return NULL;

	FUNC1(&host->ref);
	FUNC6(&host->id);
	FUNC5(host->nqn, NVMF_NQN_SIZE,
		"nqn.2014-08.org.nvmexpress:uuid:%pUb", &host->id);

	FUNC3(&nvmf_hosts_mutex);
	FUNC2(&host->list, &nvmf_hosts);
	FUNC4(&nvmf_hosts_mutex);

	return host;
}