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
struct zfcp_dbf {int dummy; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zfcp_dbf*) ; 

void FUNC1(struct zfcp_adapter *adapter)
{
	struct zfcp_dbf *dbf = adapter->dbf;

	adapter->dbf = NULL;
	FUNC0(dbf);
}