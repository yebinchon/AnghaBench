; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_dev_add_initiator_node_lun_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_dev_add_initiator_node_lun_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_portal_group*)*, i32 }
%struct.se_lun_acl = type { i32, %struct.se_lun*, %struct.se_node_acl* }
%struct.se_node_acl = type { i32 }
%struct.se_lun = type { i32, i64, i32 }
%struct.se_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"%s_TPG[%hu]_LUN[%llu->%llu] - Added %s ACL for  InitiatorNode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RO\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_dev_add_initiator_node_lun_acl(%struct.se_portal_group* %0, %struct.se_lun_acl* %1, %struct.se_lun* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_lun_acl*, align 8
  %8 = alloca %struct.se_lun*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.se_node_acl*, align 8
  %11 = alloca %struct.se_device*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %6, align 8
  store %struct.se_lun_acl* %1, %struct.se_lun_acl** %7, align 8
  store %struct.se_lun* %2, %struct.se_lun** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.se_lun_acl*, %struct.se_lun_acl** %7, align 8
  %13 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %12, i32 0, i32 2
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %13, align 8
  store %struct.se_node_acl* %14, %struct.se_node_acl** %10, align 8
  %15 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %16 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.se_device* @rcu_dereference_raw(i32 %17)
  store %struct.se_device* %18, %struct.se_device** %11, align 8
  %19 = load %struct.se_node_acl*, %struct.se_node_acl** %10, align 8
  %20 = icmp ne %struct.se_node_acl* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %82

24:                                               ; preds = %4
  %25 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %26 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %32 = load %struct.se_lun_acl*, %struct.se_lun_acl** %7, align 8
  %33 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %32, i32 0, i32 1
  store %struct.se_lun* %31, %struct.se_lun** %33, align 8
  %34 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %35 = load %struct.se_lun_acl*, %struct.se_lun_acl** %7, align 8
  %36 = load %struct.se_lun_acl*, %struct.se_lun_acl** %7, align 8
  %37 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.se_node_acl*, %struct.se_node_acl** %10, align 8
  %41 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %42 = call i64 @core_enable_device_list_for_node(%struct.se_lun* %34, %struct.se_lun_acl* %35, i32 %38, i32 %39, %struct.se_node_acl* %40, %struct.se_portal_group* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %82

47:                                               ; preds = %30
  %48 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %49 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %54 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %56, align 8
  %58 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %59 = call i32 %57(%struct.se_portal_group* %58)
  %60 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %61 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.se_lun_acl*, %struct.se_lun_acl** %7, align 8
  %64 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %70 = load %struct.se_node_acl*, %struct.se_node_acl** %10, align 8
  %71 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %59, i32 %62, i32 %65, i8* %69, i32 %72)
  %74 = load %struct.se_device*, %struct.se_device** %11, align 8
  %75 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %76 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %77 = load %struct.se_node_acl*, %struct.se_node_acl** %10, align 8
  %78 = load %struct.se_lun_acl*, %struct.se_lun_acl** %7, align 8
  %79 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @core_scsi3_check_aptpl_registration(%struct.se_device* %74, %struct.se_portal_group* %75, %struct.se_lun* %76, %struct.se_node_acl* %77, i32 %80)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %47, %44, %21
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.se_device* @rcu_dereference_raw(i32) #1

declare dso_local i64 @core_enable_device_list_for_node(%struct.se_lun*, %struct.se_lun_acl*, i32, i32, %struct.se_node_acl*, %struct.se_portal_group*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @core_scsi3_check_aptpl_registration(%struct.se_device*, %struct.se_portal_group*, %struct.se_lun*, %struct.se_node_acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
