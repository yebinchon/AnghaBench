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
struct sis_video_info {int dummy; } ;
struct sis_memreq {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 struct sis_video_info* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct sis_video_info*,struct sis_memreq*) ; 

void
FUNC2(struct pci_dev *pdev, struct sis_memreq *req)
{
	struct sis_video_info *ivideo = FUNC0(pdev);

	FUNC1(ivideo, req);
}