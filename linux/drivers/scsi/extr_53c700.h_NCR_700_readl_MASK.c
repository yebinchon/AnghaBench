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
struct Scsi_Host {scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {int base; } ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ bEBus ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static inline __u32
FUNC3(struct Scsi_Host *host, __u32 reg)
{
	const struct NCR_700_Host_Parameters *hostdata
		= (struct NCR_700_Host_Parameters *)host->hostdata[0];
	__u32 value = bEBus ? FUNC2(hostdata->base + reg) :
		FUNC1(hostdata->base + reg);
#if 1
	/* sanity check the register */
	FUNC0((reg & 0x3) != 0);
#endif

	return value;
}