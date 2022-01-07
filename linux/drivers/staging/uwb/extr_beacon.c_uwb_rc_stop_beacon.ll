; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_beacon.c_uwb_rc_stop_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_beacon.c_uwb_rc_stop_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uwb_rccb = type { i32, i8* }
%struct.uwb_rc_evt_confirm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UWB_RC_CET_GENERAL = common dso_local global i8* null, align 8
@UWB_RC_CMD_STOP_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"STOP-BEACON\00", align 1
@UWB_RC_RES_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"STOP-BEACON: command execution failed: %s (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*)* @uwb_rc_stop_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rc_stop_beacon(%struct.uwb_rc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rccb*, align 8
  %6 = alloca %struct.uwb_rc_evt_confirm, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uwb_rccb* @kzalloc(i32 16, i32 %7)
  store %struct.uwb_rccb* %8, %struct.uwb_rccb** %5, align 8
  %9 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %10 = icmp eq %struct.uwb_rccb* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %16 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %17 = getelementptr inbounds %struct.uwb_rccb, %struct.uwb_rccb* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @UWB_RC_CMD_STOP_BEACON, align 4
  %19 = call i32 @cpu_to_le16(i32 %18)
  %20 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %21 = getelementptr inbounds %struct.uwb_rccb, %struct.uwb_rccb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %23 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @UWB_RC_CMD_STOP_BEACON, align 4
  %26 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %29 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %30 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %6, i32 0, i32 1
  %31 = call i32 @uwb_rc_cmd(%struct.uwb_rc* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.uwb_rccb* %29, i32 16, %struct.TYPE_4__* %30, i32 24)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %53

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UWB_RC_RES_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %42 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @uwb_rc_strerror(i64 %45)
  %47 = getelementptr inbounds %struct.uwb_rc_evt_confirm, %struct.uwb_rc_evt_confirm* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %40, %35
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.uwb_rccb*, %struct.uwb_rccb** %5, align 8
  %55 = call i32 @kfree(%struct.uwb_rccb* %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.uwb_rccb* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @uwb_rc_cmd(%struct.uwb_rc*, i8*, %struct.uwb_rccb*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #1

declare dso_local i32 @uwb_rc_strerror(i64) #1

declare dso_local i32 @kfree(%struct.uwb_rccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
