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
typedef  scalar_t__ u16 ;
struct rtllib_qos_information_element {scalar_t__ elementID; scalar_t__ length; int /*<<< orphan*/  qui; } ;
struct rtllib_info_element {scalar_t__ id; scalar_t__ len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ QOS_ELEMENT_ID ; 
 int /*<<< orphan*/  QOS_OUI_INFO_SUB_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct rtllib_qos_information_element*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rtllib_qos_information_element
							*element_info,
					struct rtllib_info_element
							*info_element)
{
	int ret = 0;
	u16 size = sizeof(struct rtllib_qos_information_element) - 2;

	if (element_info == NULL)
		return -1;
	if (info_element == NULL)
		return -1;

	if ((info_element->id == QOS_ELEMENT_ID) &&
	    (info_element->len == size)) {
		FUNC0(element_info->qui, info_element->data,
		       info_element->len);
		element_info->elementID = info_element->id;
		element_info->length = info_element->len;
	} else
		ret = -1;

	if (ret == 0)
		ret = FUNC1(element_info,
					     QOS_OUI_INFO_SUB_TYPE);
	return ret;
}