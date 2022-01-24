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
struct seq_file {int dummy; } ;
struct cifs_tcon {int capabilities; int ss_flags; scalar_t__ maximal_access; scalar_t__ perf_sector_size; scalar_t__ tid; scalar_t__ share_flags; } ;

/* Variables and functions */
 int SMB2_SHARE_CAP_ASYMMETRIC ; 
 int SMB2_SHARE_CAP_CLUSTER ; 
 int SMB2_SHARE_CAP_CONTINUOUS_AVAILABILITY ; 
 int SMB2_SHARE_CAP_DFS ; 
 int SMB2_SHARE_CAP_SCALEOUT ; 
 int SSINFO_FLAGS_ALIGNED_DEVICE ; 
 int SSINFO_FLAGS_NO_SEEK_PENALTY ; 
 int SSINFO_FLAGS_PARTITION_ALIGNED_ON_DEVICE ; 
 int SSINFO_FLAGS_TRIM_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static void
FUNC2(struct seq_file *m, struct cifs_tcon *tcon)
{
	FUNC1(m, "\n\tShare Capabilities:");
	if (tcon->capabilities & SMB2_SHARE_CAP_DFS)
		FUNC1(m, " DFS,");
	if (tcon->capabilities & SMB2_SHARE_CAP_CONTINUOUS_AVAILABILITY)
		FUNC1(m, " CONTINUOUS AVAILABILITY,");
	if (tcon->capabilities & SMB2_SHARE_CAP_SCALEOUT)
		FUNC1(m, " SCALEOUT,");
	if (tcon->capabilities & SMB2_SHARE_CAP_CLUSTER)
		FUNC1(m, " CLUSTER,");
	if (tcon->capabilities & SMB2_SHARE_CAP_ASYMMETRIC)
		FUNC1(m, " ASYMMETRIC,");
	if (tcon->capabilities == 0)
		FUNC1(m, " None");
	if (tcon->ss_flags & SSINFO_FLAGS_ALIGNED_DEVICE)
		FUNC1(m, " Aligned,");
	if (tcon->ss_flags & SSINFO_FLAGS_PARTITION_ALIGNED_ON_DEVICE)
		FUNC1(m, " Partition Aligned,");
	if (tcon->ss_flags & SSINFO_FLAGS_NO_SEEK_PENALTY)
		FUNC1(m, " SSD,");
	if (tcon->ss_flags & SSINFO_FLAGS_TRIM_ENABLED)
		FUNC1(m, " TRIM-support,");

	FUNC0(m, "\tShare Flags: 0x%x", tcon->share_flags);
	FUNC0(m, "\n\ttid: 0x%x", tcon->tid);
	if (tcon->perf_sector_size)
		FUNC0(m, "\tOptimal sector size: 0x%x",
			   tcon->perf_sector_size);
	FUNC0(m, "\tMaximal Access: 0x%x", tcon->maximal_access);
}