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
struct kobject {int dummy; } ;
struct gb_audio_manager_module_attribute {int /*<<< orphan*/  (* store ) (struct gb_audio_manager_module*,struct gb_audio_manager_module_attribute*,char const*,size_t) ;} ;
struct gb_audio_manager_module {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct gb_audio_manager_module*,struct gb_audio_manager_module_attribute*,char const*,size_t) ; 
 struct gb_audio_manager_module* FUNC1 (struct kobject*) ; 
 struct gb_audio_manager_module_attribute* FUNC2 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
					  struct attribute *attr,
					  const char *buf, size_t len)
{
	struct gb_audio_manager_module_attribute *attribute;
	struct gb_audio_manager_module *module;

	attribute = FUNC2(attr);
	module = FUNC1(kobj);

	if (!attribute->store)
		return -EIO;

	return attribute->store(module, attribute, buf, len);
}