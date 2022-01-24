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
typedef  int uint32_t ;
struct lpfc_iocbq {int iocb_flag; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC2(struct lpfc_hba *phba,
		 struct lpfc_iocbq *piocbq, uint32_t flag)
{
	unsigned long iflags;
	int ret;

	FUNC0(&phba->hbalock, iflags);
	ret = piocbq->iocb_flag & flag;
	FUNC1(&phba->hbalock, iflags);
	return ret;

}