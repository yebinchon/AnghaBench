; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_state = type { i32, i32, i32 }
%struct.dentry = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"debug_enable\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dump_regs\00", align 1
@mipi_csis_dump_regs_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi_state*)* @mipi_csis_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_debugfs_init(%struct.csi_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csi_state*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.csi_state* %0, %struct.csi_state** %3, align 8
  %5 = call i32 (...) @debugfs_initialized()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %12 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_name(i32 %13)
  %15 = call i32 @debugfs_create_dir(i32 %14, i32* null)
  %16 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %17 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %19 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %10
  %26 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %27 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %30 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %29, i32 0, i32 1
  %31 = call %struct.dentry* @debugfs_create_bool(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 384, i32 %28, i32* %30)
  store %struct.dentry* %31, %struct.dentry** %4, align 8
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = icmp ne %struct.dentry* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %45

35:                                               ; preds = %25
  %36 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %37 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %40 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 384, i32 %38, %struct.csi_state* %39, i32* @mipi_csis_dump_regs_fops)
  store %struct.dentry* %40, %struct.dentry** %4, align 8
  %41 = load %struct.dentry*, %struct.dentry** %4, align 8
  %42 = icmp ne %struct.dentry* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %52

45:                                               ; preds = %43, %34
  %46 = load %struct.csi_state*, %struct.csi_state** %3, align 8
  %47 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @debugfs_remove_recursive(i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %44, %22, %7
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @debugfs_initialized(...) #1

declare dso_local i32 @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local %struct.dentry* @debugfs_create_bool(i8*, i32, i32, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32, %struct.csi_state*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
