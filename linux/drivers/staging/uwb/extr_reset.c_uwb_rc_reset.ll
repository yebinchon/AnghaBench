; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c_uwb_rc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c_uwb_rc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.uwb_rc_evt_confirm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.uwb_rccb = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@UWB_RC_CET_GENERAL = common dso_local global i8* null, align 8
@UWB_RC_CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@UWB_RC_RES_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"RESET: command execution failed: %s (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_reset(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwb_rc_evt_confirm, align 8
  %5 = alloca %struct.uwb_rccb*, align 8
  %6 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  store i64 16, i64* %6, align 8
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %10 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.uwb_rccb* @kzalloc(i32 16, i32 %13)
  store %struct.uwb_rccb* %14, %struct.uwb_rccb** %5, align 8
  %15 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %16 = icmp eq %struct.uwb_rccb* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %61

18:                                               ; preds = %1
  %19 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %20 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %21 = getelementptr inbounds %struct.uwb_rccb, %struct.uwb_rccb* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @UWB_RC_CMD_RESET, align 4
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %25 = getelementptr inbounds %struct.uwb_rccb, %struct.uwb_rccb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %27 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %4, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @UWB_RC_CMD_RESET, align 4
  %30 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %4, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %33 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %4, i32 0, i32 1
  %36 = call i32 @uwb_rc_cmd(%struct.uwb_rc* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.uwb_rccb* %33, i64 %34, %struct.TYPE_4__* %35, i32 24)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %18
  br label %58

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UWB_RC_RES_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %47 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %4, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @uwb_rc_strerror(i64 %50)
  %52 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %45, %40
  br label %58

58:                                               ; preds = %57, %39
  %59 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %60 = call i32 @kfree(%struct.uwb_rccb* %59)
  br label %61

61:                                               ; preds = %58, %17
  %62 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %63 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uwb_rccb* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @uwb_rc_cmd(%struct.uwb_rc*, i8*, %struct.uwb_rccb*, i64, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #1

declare dso_local i32 @uwb_rc_strerror(i64) #1

declare dso_local i32 @kfree(%struct.uwb_rccb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
