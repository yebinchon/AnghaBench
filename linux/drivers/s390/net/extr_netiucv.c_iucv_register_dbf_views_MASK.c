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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IUCV_DBF_DATA_LEN ; 
 int /*<<< orphan*/  IUCV_DBF_DATA_LEVEL ; 
 int /*<<< orphan*/  IUCV_DBF_DATA_NAME ; 
 int /*<<< orphan*/  IUCV_DBF_DATA_NR_AREAS ; 
 int /*<<< orphan*/  IUCV_DBF_DATA_PAGES ; 
 int /*<<< orphan*/  IUCV_DBF_SETUP_LEN ; 
 int /*<<< orphan*/  IUCV_DBF_SETUP_LEVEL ; 
 int /*<<< orphan*/  IUCV_DBF_SETUP_NAME ; 
 int /*<<< orphan*/  IUCV_DBF_SETUP_NR_AREAS ; 
 int /*<<< orphan*/  IUCV_DBF_SETUP_PAGES ; 
 int /*<<< orphan*/  IUCV_DBF_TRACE_LEN ; 
 int /*<<< orphan*/  IUCV_DBF_TRACE_LEVEL ; 
 int /*<<< orphan*/  IUCV_DBF_TRACE_NAME ; 
 int /*<<< orphan*/  IUCV_DBF_TRACE_NR_AREAS ; 
 int /*<<< orphan*/  IUCV_DBF_TRACE_PAGES ; 
 int /*<<< orphan*/  debug_hex_ascii_view ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * iucv_dbf_data ; 
 int /*<<< orphan*/ * iucv_dbf_setup ; 
 int /*<<< orphan*/ * iucv_dbf_trace ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	iucv_dbf_setup = FUNC0(IUCV_DBF_SETUP_NAME,
					IUCV_DBF_SETUP_PAGES,
					IUCV_DBF_SETUP_NR_AREAS,
					IUCV_DBF_SETUP_LEN);
	iucv_dbf_data = FUNC0(IUCV_DBF_DATA_NAME,
				       IUCV_DBF_DATA_PAGES,
				       IUCV_DBF_DATA_NR_AREAS,
				       IUCV_DBF_DATA_LEN);
	iucv_dbf_trace = FUNC0(IUCV_DBF_TRACE_NAME,
					IUCV_DBF_TRACE_PAGES,
					IUCV_DBF_TRACE_NR_AREAS,
					IUCV_DBF_TRACE_LEN);

	if ((iucv_dbf_setup == NULL) || (iucv_dbf_data == NULL) ||
	    (iucv_dbf_trace == NULL)) {
		FUNC3();
		return -ENOMEM;
	}
	FUNC1(iucv_dbf_setup, &debug_hex_ascii_view);
	FUNC2(iucv_dbf_setup, IUCV_DBF_SETUP_LEVEL);

	FUNC1(iucv_dbf_data, &debug_hex_ascii_view);
	FUNC2(iucv_dbf_data, IUCV_DBF_DATA_LEVEL);

	FUNC1(iucv_dbf_trace, &debug_hex_ascii_view);
	FUNC2(iucv_dbf_trace, IUCV_DBF_TRACE_LEVEL);

	return 0;
}