; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_scan.c_uwb_rc_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_scan.c_uwb_rc_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.uwb_rc_cmd_scan = type { i32, i32, %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.uwb_rc_evt_confirm = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@UWB_RC_CET_GENERAL = common dso_local global i8* null, align 8
@UWB_RC_CMD_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@UWB_RC_RES_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"SCAN: command execution failed: %s (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_scan(%struct.uwb_rc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uwb_rc_cmd_scan*, align 8
  %11 = alloca %struct.uwb_rc_evt_confirm, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.uwb_rc_cmd_scan* @kzalloc(i32 32, i32 %14)
  store %struct.uwb_rc_cmd_scan* %15, %struct.uwb_rc_cmd_scan** %10, align 8
  %16 = load %struct.uwb_rc_cmd_scan*, %struct.uwb_rc_cmd_scan** %10, align 8
  %17 = icmp eq %struct.uwb_rc_cmd_scan* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %88

19:                                               ; preds = %4
  %20 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %21 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %25 = load %struct.uwb_rc_cmd_scan*, %struct.uwb_rc_cmd_scan** %10, align 8
  %26 = getelementptr inbounds %struct.uwb_rc_cmd_scan, %struct.uwb_rc_cmd_scan* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* @UWB_RC_CMD_SCAN, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.uwb_rc_cmd_scan*, %struct.uwb_rc_cmd_scan** %10, align 8
  %31 = getelementptr inbounds %struct.uwb_rc_cmd_scan, %struct.uwb_rc_cmd_scan* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.uwb_rc_cmd_scan*, %struct.uwb_rc_cmd_scan** %10, align 8
  %35 = getelementptr inbounds %struct.uwb_rc_cmd_scan, %struct.uwb_rc_cmd_scan* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.uwb_rc_cmd_scan*, %struct.uwb_rc_cmd_scan** %10, align 8
  %38 = getelementptr inbounds %struct.uwb_rc_cmd_scan, %struct.uwb_rc_cmd_scan* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.uwb_rc_cmd_scan*, %struct.uwb_rc_cmd_scan** %10, align 8
  %42 = getelementptr inbounds %struct.uwb_rc_cmd_scan, %struct.uwb_rc_cmd_scan* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %44 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %11, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @UWB_RC_CMD_SCAN, align 4
  %47 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %11, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %50 = load %struct.uwb_rc_cmd_scan*, %struct.uwb_rc_cmd_scan** %10, align 8
  %51 = getelementptr inbounds %struct.uwb_rc_cmd_scan, %struct.uwb_rc_cmd_scan* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %11, i32 0, i32 1
  %53 = call i32 @uwb_rc_cmd(%struct.uwb_rc* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %51, i32 32, %struct.TYPE_6__* %52, i32 24)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %19
  br label %81

57:                                               ; preds = %19
  %58 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %11, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @UWB_RC_RES_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %64 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %11, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @uwb_rc_strerror(i64 %67)
  %69 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %11, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %68, i64 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %81

74:                                               ; preds = %57
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %77 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %80 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %62, %56
  %82 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %83 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.uwb_rc_cmd_scan*, %struct.uwb_rc_cmd_scan** %10, align 8
  %87 = call i32 @kfree(%struct.uwb_rc_cmd_scan* %86)
  br label %88

88:                                               ; preds = %81, %18
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local %struct.uwb_rc_cmd_scan* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @uwb_rc_cmd(%struct.uwb_rc*, i8*, %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #1

declare dso_local i32 @uwb_rc_strerror(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.uwb_rc_cmd_scan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
