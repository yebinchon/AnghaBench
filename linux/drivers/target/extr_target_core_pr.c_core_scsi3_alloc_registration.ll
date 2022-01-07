; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_scsi3_alloc_registration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_scsi3_alloc_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.se_node_acl = type { i32 }
%struct.se_lun = type { i32 }
%struct.se_dev_entry = type { i32 }
%struct.t10_pr_registration = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, %struct.se_node_acl*, %struct.se_lun*, %struct.se_dev_entry*, i32, i8*, i32, i32, i32, i32, i32)* @core_scsi3_alloc_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_scsi3_alloc_registration(%struct.se_device* %0, %struct.se_node_acl* %1, %struct.se_lun* %2, %struct.se_dev_entry* %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.se_device*, align 8
  %14 = alloca %struct.se_node_acl*, align 8
  %15 = alloca %struct.se_lun*, align 8
  %16 = alloca %struct.se_dev_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.t10_pr_registration*, align 8
  store %struct.se_device* %0, %struct.se_device** %13, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %14, align 8
  store %struct.se_lun* %2, %struct.se_lun** %15, align 8
  store %struct.se_dev_entry* %3, %struct.se_dev_entry** %16, align 8
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %25 = load %struct.se_device*, %struct.se_device** %13, align 8
  %26 = load %struct.se_node_acl*, %struct.se_node_acl** %14, align 8
  %27 = load %struct.se_lun*, %struct.se_lun** %15, align 8
  %28 = load %struct.se_dev_entry*, %struct.se_dev_entry** %16, align 8
  %29 = load i32, i32* %17, align 4
  %30 = load i8*, i8** %18, align 8
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %20, align 4
  %33 = load i32, i32* %21, align 4
  %34 = call %struct.t10_pr_registration* @__core_scsi3_alloc_registration(%struct.se_device* %25, %struct.se_node_acl* %26, %struct.se_lun* %27, %struct.se_dev_entry* %28, i32 %29, i8* %30, i32 %31, i32 %32, i32 %33)
  store %struct.t10_pr_registration* %34, %struct.t10_pr_registration** %24, align 8
  %35 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %36 = icmp ne %struct.t10_pr_registration* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %11
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %47

40:                                               ; preds = %11
  %41 = load %struct.se_device*, %struct.se_device** %13, align 8
  %42 = load %struct.se_node_acl*, %struct.se_node_acl** %14, align 8
  %43 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %23, align 4
  %46 = call i32 @__core_scsi3_add_registration(%struct.se_device* %41, %struct.se_node_acl* %42, %struct.t10_pr_registration* %43, i32 %44, i32 %45)
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

declare dso_local %struct.t10_pr_registration* @__core_scsi3_alloc_registration(%struct.se_device*, %struct.se_node_acl*, %struct.se_lun*, %struct.se_dev_entry*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @__core_scsi3_add_registration(%struct.se_device*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
