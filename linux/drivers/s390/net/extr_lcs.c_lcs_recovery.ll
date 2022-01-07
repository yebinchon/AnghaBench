; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { %struct.TYPE_2__*, %struct.ccwgroup_device* }
%struct.TYPE_2__ = type { i32 }
%struct.ccwgroup_device = type { i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"recover1\00", align 1
@LCS_RECOVERY_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"recover2\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"A recovery process has been started for the LCS device\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Device %s successfully recovered!\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Device %s could not be recovered!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lcs_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_recovery(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lcs_card*, align 8
  %5 = alloca %struct.ccwgroup_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.lcs_card*
  store %struct.lcs_card* %8, %struct.lcs_card** %4, align 8
  %9 = load i32, i32* @trace, align 4
  %10 = call i32 @LCS_DBF_TEXT(i32 4, i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %12 = load i32, i32* @LCS_RECOVERY_THREAD, align 4
  %13 = call i32 @lcs_do_run_thread(%struct.lcs_card* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load i32, i32* @trace, align 4
  %18 = call i32 @LCS_DBF_TEXT(i32 4, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %20 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %19, i32 0, i32 1
  %21 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %20, align 8
  store %struct.ccwgroup_device* %21, %struct.ccwgroup_device** %5, align 8
  %22 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %5, align 8
  %23 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %22, i32 0, i32 0
  %24 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %5, align 8
  %26 = call i32 @__lcs_shutdown_device(%struct.ccwgroup_device* %25, i32 1)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %5, align 8
  %28 = call i32 @lcs_new_device(%struct.ccwgroup_device* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %16
  %32 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %33 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  br label %45

38:                                               ; preds = %16
  %39 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %40 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %47 = load i32, i32* @LCS_RECOVERY_THREAD, align 4
  %48 = call i32 @lcs_clear_thread_running_bit(%struct.lcs_card* %46, i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @lcs_do_run_thread(%struct.lcs_card*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @__lcs_shutdown_device(%struct.ccwgroup_device*, i32) #1

declare dso_local i32 @lcs_new_device(%struct.ccwgroup_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @lcs_clear_thread_running_bit(%struct.lcs_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
