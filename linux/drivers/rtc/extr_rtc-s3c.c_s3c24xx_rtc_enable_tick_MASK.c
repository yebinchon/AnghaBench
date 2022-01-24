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
struct s3c_rtc {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ S3C2410_TICNT ; 
 unsigned int S3C2410_TICNT_ENABLE ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static void FUNC2(struct s3c_rtc *info, struct seq_file *seq)
{
	unsigned int ticnt;

	ticnt = FUNC0(info->base + S3C2410_TICNT);
	ticnt &= S3C2410_TICNT_ENABLE;

	FUNC1(seq, "periodic_IRQ\t: %s\n", ticnt  ? "yes" : "no");
}