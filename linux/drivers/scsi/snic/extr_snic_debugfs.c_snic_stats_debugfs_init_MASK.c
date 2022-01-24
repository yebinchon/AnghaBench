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
struct snic {int /*<<< orphan*/  stats_host; void* reset_stats_file; void* stats_file; TYPE_1__* shost; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int /*<<< orphan*/  stats_root; } ;
struct TYPE_3__ {int host_no; } ;

/* Variables and functions */
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*,int,int /*<<< orphan*/ ,struct snic*,int /*<<< orphan*/ *) ; 
 TYPE_2__* snic_glob ; 
 int /*<<< orphan*/  snic_reset_stats_fops ; 
 int /*<<< orphan*/  snic_stats_fops ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

void FUNC3(struct snic *snic)
{
	char name[16];

	FUNC2(name, sizeof(name), "host%d", snic->shost->host_no);

	snic->stats_host = FUNC0(name, snic_glob->stats_root);

	snic->stats_file = FUNC1("stats", S_IFREG|S_IRUGO,
					       snic->stats_host, snic,
					       &snic_stats_fops);

	snic->reset_stats_file = FUNC1("reset_stats",
						     S_IFREG|S_IRUGO|S_IWUSR,
						     snic->stats_host, snic,
						     &snic_reset_stats_fops);
}