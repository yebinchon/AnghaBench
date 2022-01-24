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
struct nvmf_host {int /*<<< orphan*/  list; int /*<<< orphan*/  nqn; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVMF_NQN_SIZE ; 
 struct nvmf_host* FUNC0 (char const*) ; 
 struct nvmf_host* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmf_hosts ; 
 int /*<<< orphan*/  nvmf_hosts_mutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nvmf_host *FUNC8(const char *hostnqn)
{
	struct nvmf_host *host;

	FUNC5(&nvmf_hosts_mutex);
	host = FUNC0(hostnqn);
	if (host) {
		FUNC2(&host->ref);
		goto out_unlock;
	}

	host = FUNC1(sizeof(*host), GFP_KERNEL);
	if (!host)
		goto out_unlock;

	FUNC3(&host->ref);
	FUNC7(host->nqn, hostnqn, NVMF_NQN_SIZE);

	FUNC4(&host->list, &nvmf_hosts);
out_unlock:
	FUNC6(&nvmf_hosts_mutex);
	return host;
}