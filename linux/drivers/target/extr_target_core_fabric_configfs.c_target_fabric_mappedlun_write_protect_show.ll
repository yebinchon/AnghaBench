; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_configfs.c_target_fabric_mappedlun_write_protect_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_configfs.c_target_fabric_mappedlun_write_protect_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_lun_acl = type { i32, %struct.se_node_acl* }
%struct.se_node_acl = type { i32 }
%struct.se_dev_entry = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_fabric_mappedlun_write_protect_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_fabric_mappedlun_write_protect_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_lun_acl*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.se_dev_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.config_item*, %struct.config_item** %3, align 8
  %10 = call %struct.se_lun_acl* @item_to_lun_acl(%struct.config_item* %9)
  store %struct.se_lun_acl* %10, %struct.se_lun_acl** %5, align 8
  %11 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  %12 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %11, i32 0, i32 1
  %13 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  store %struct.se_node_acl* %13, %struct.se_node_acl** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %16 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  %17 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl* %15, i32 %18)
  store %struct.se_dev_entry* %19, %struct.se_dev_entry** %7, align 8
  %20 = load %struct.se_dev_entry*, %struct.se_dev_entry** %7, align 8
  %21 = icmp ne %struct.se_dev_entry* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.se_dev_entry*, %struct.se_dev_entry** %7, align 8
  %25 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %22, %2
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local %struct.se_lun_acl* @item_to_lun_acl(%struct.config_item*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
