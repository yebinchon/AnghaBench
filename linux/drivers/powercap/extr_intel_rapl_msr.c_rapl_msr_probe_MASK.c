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
struct platform_device {int dummy; } ;
struct TYPE_3__ {int pcap_rapl_online; int /*<<< orphan*/  control_type; int /*<<< orphan*/  write_raw; int /*<<< orphan*/  read_raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_ONLINE_DYN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  rapl_cpu_down_prep ; 
 int /*<<< orphan*/  rapl_cpu_online ; 
 TYPE_1__ rapl_msr_priv ; 
 int /*<<< orphan*/  rapl_msr_read_raw ; 
 int /*<<< orphan*/  rapl_msr_write_raw ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int ret;

	rapl_msr_priv.read_raw = rapl_msr_read_raw;
	rapl_msr_priv.write_raw = rapl_msr_write_raw;

	rapl_msr_priv.control_type = FUNC3(NULL, "intel-rapl", NULL);
	if (FUNC0(rapl_msr_priv.control_type)) {
		FUNC5("failed to register powercap control_type.\n");
		return FUNC1(rapl_msr_priv.control_type);
	}

	ret = FUNC2(CPUHP_AP_ONLINE_DYN, "powercap/rapl:online",
				rapl_cpu_online, rapl_cpu_down_prep);
	if (ret < 0)
		goto out;
	rapl_msr_priv.pcap_rapl_online = ret;

	/* Don't bail out if PSys is not supported */
	FUNC6(&rapl_msr_priv);

	return 0;

out:
	if (ret)
		FUNC4(rapl_msr_priv.control_type);
	return ret;
}