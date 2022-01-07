; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_dev_del_initiator_node_lun_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_dev_del_initiator_node_lun_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i32, %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_portal_group*)*, i32 }
%struct.se_lun_acl = type { i32, %struct.se_node_acl* }
%struct.se_node_acl = type { i32, i32 }
%struct.se_dev_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"%s_TPG[%hu]_LUN[%llu] - Removed ACL for InitiatorNode: %s Mapped LUN: %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_dev_del_initiator_node_lun_acl(%struct.se_lun* %0, %struct.se_lun_acl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_lun*, align 8
  %5 = alloca %struct.se_lun_acl*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_node_acl*, align 8
  %8 = alloca %struct.se_dev_entry*, align 8
  store %struct.se_lun* %0, %struct.se_lun** %4, align 8
  store %struct.se_lun_acl* %1, %struct.se_lun_acl** %5, align 8
  %9 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %10 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %9, i32 0, i32 1
  %11 = load %struct.se_portal_group*, %struct.se_portal_group** %10, align 8
  store %struct.se_portal_group* %11, %struct.se_portal_group** %6, align 8
  %12 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  %13 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %12, i32 0, i32 1
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %13, align 8
  store %struct.se_node_acl* %14, %struct.se_node_acl** %7, align 8
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %16 = icmp ne %struct.se_node_acl* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %22 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %25 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  %26 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl* %24, i32 %27)
  store %struct.se_dev_entry* %28, %struct.se_dev_entry** %8, align 8
  %29 = load %struct.se_dev_entry*, %struct.se_dev_entry** %8, align 8
  %30 = icmp ne %struct.se_dev_entry* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %33 = load %struct.se_dev_entry*, %struct.se_dev_entry** %8, align 8
  %34 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %35 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %36 = call i32 @core_disable_device_list_for_node(%struct.se_lun* %32, %struct.se_dev_entry* %33, %struct.se_node_acl* %34, %struct.se_portal_group* %35)
  br label %37

37:                                               ; preds = %31, %20
  %38 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %39 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %42 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %47 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %49, align 8
  %51 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %52 = call i32 %50(%struct.se_portal_group* %51)
  %53 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %54 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %57 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.se_lun_acl*, %struct.se_lun_acl** %5, align 8
  %60 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %52, i32 %55, i32 %58, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %37, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl*, i32) #1

declare dso_local i32 @core_disable_device_list_for_node(%struct.se_lun*, %struct.se_dev_entry*, %struct.se_node_acl*, %struct.se_portal_group*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
