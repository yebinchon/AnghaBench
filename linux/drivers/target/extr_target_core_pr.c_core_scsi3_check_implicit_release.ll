; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_scsi3_check_implicit_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_scsi3_check_implicit_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, %struct.t10_pr_registration* }
%struct.t10_pr_registration = type { i64, %struct.se_node_acl*, i64 }
%struct.se_node_acl = type { i32 }

@.str = private unnamed_addr constant [150 x i8] c"SPC-3 PR: Unable to perform ALL_TG_PT=1 UNREGISTER while existing reservation with matching key 0x%016Lx is present from another SCSI Initiator Port\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, %struct.t10_pr_registration*)* @core_scsi3_check_implicit_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_scsi3_check_implicit_release(%struct.se_device* %0, %struct.t10_pr_registration* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.t10_pr_registration*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.t10_pr_registration*, align 8
  %8 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %4, align 8
  store %struct.t10_pr_registration* %1, %struct.t10_pr_registration** %5, align 8
  %9 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %10 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %9, i32 0, i32 1
  %11 = load %struct.se_node_acl*, %struct.se_node_acl** %10, align 8
  store %struct.se_node_acl* %11, %struct.se_node_acl** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.se_device*, %struct.se_device** %4, align 8
  %13 = getelementptr inbounds %struct.se_device, %struct.se_device* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.se_device*, %struct.se_device** %4, align 8
  %16 = getelementptr inbounds %struct.se_device, %struct.se_device* %15, i32 0, i32 1
  %17 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  store %struct.t10_pr_registration* %17, %struct.t10_pr_registration** %7, align 8
  %18 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %19 = icmp ne %struct.t10_pr_registration* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.se_device*, %struct.se_device** %4, align 8
  %22 = getelementptr inbounds %struct.se_device, %struct.se_device* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %27 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %28 = icmp eq %struct.t10_pr_registration* %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.se_device*, %struct.se_device** %4, align 8
  %31 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %32 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %33 = call i32 @__core_scsi3_complete_pro_release(%struct.se_device* %30, %struct.se_node_acl* %31, %struct.t10_pr_registration* %32, i32 0, i32 1)
  store i32 1, i32* %8, align 4
  br label %68

34:                                               ; preds = %25
  %35 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %36 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %41 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %40, i32 0, i32 1
  %42 = load %struct.se_node_acl*, %struct.se_node_acl** %41, align 8
  %43 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %46 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %45, i32 0, i32 1
  %47 = load %struct.se_node_acl*, %struct.se_node_acl** %46, align 8
  %48 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcmp(i32 %44, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %39
  %53 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %54 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %57 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %62 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %60, %52, %39, %34
  br label %68

68:                                               ; preds = %67, %29
  %69 = load %struct.se_device*, %struct.se_device** %4, align 8
  %70 = getelementptr inbounds %struct.se_device, %struct.se_device* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %20
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__core_scsi3_complete_pro_release(%struct.se_device*, %struct.se_node_acl*, %struct.t10_pr_registration*, i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
