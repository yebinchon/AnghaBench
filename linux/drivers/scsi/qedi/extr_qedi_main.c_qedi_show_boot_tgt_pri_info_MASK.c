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
struct qedi_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  QEDI_NVM_TGT_PRI ; 
 int /*<<< orphan*/  FUNC0 (struct qedi_ctx*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC1(void *data, int type, char *buf)
{
	struct qedi_ctx *qedi = data;

	return FUNC0(qedi, type, buf, QEDI_NVM_TGT_PRI);
}