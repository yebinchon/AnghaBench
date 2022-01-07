; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_mac.c_i1480_cmd_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_mac.c_i1480_cmd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { i32, i64, i64 }
%struct.uwb_rccb = type { i32, i8* }
%struct.i1480_evt_reset = type { %struct.uwb_rceb, i64 }
%struct.uwb_rceb = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@UWB_RC_CET_GENERAL = common dso_local global i8* null, align 8
@UWB_RC_CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@UWB_RC_RES_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"RESET: command execution failed: %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i1480*)* @i1480_cmd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480_cmd_reset(%struct.i1480* %0) #0 {
  %2 = alloca %struct.i1480*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwb_rccb*, align 8
  %5 = alloca %struct.i1480_evt_reset*, align 8
  store %struct.i1480* %0, %struct.i1480** %2, align 8
  %6 = load %struct.i1480*, %struct.i1480** %2, align 8
  %7 = getelementptr inbounds %struct.i1480, %struct.i1480* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.uwb_rccb*
  store %struct.uwb_rccb* %10, %struct.uwb_rccb** %4, align 8
  %11 = load %struct.i1480*, %struct.i1480** %2, align 8
  %12 = getelementptr inbounds %struct.i1480, %struct.i1480* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.i1480_evt_reset*
  store %struct.i1480_evt_reset* %15, %struct.i1480_evt_reset** %5, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  %18 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %19 = load %struct.uwb_rccb*, %struct.uwb_rccb** %4, align 8
  %20 = getelementptr inbounds %struct.uwb_rccb, %struct.uwb_rccb* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @UWB_RC_CMD_RESET, align 4
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = load %struct.uwb_rccb*, %struct.uwb_rccb** %4, align 8
  %24 = getelementptr inbounds %struct.uwb_rccb, %struct.uwb_rccb* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** @UWB_RC_CET_GENERAL, align 8
  %26 = load %struct.i1480_evt_reset*, %struct.i1480_evt_reset** %5, align 8
  %27 = getelementptr inbounds %struct.i1480_evt_reset, %struct.i1480_evt_reset* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 1
  %29 = load i32, i32* @UWB_RC_CMD_RESET, align 4
  %30 = load %struct.i1480_evt_reset*, %struct.i1480_evt_reset** %5, align 8
  %31 = getelementptr inbounds %struct.i1480_evt_reset, %struct.i1480_evt_reset* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 1
  %33 = load %struct.i1480*, %struct.i1480** %2, align 8
  %34 = call i32 @i1480_cmd(%struct.i1480* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 16, i32 24)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %55

38:                                               ; preds = %1
  %39 = load %struct.i1480_evt_reset*, %struct.i1480_evt_reset** %5, align 8
  %40 = getelementptr inbounds %struct.i1480_evt_reset, %struct.i1480_evt_reset* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 1
  %42 = load i64, i64* @UWB_RC_RES_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.i1480*, %struct.i1480** %2, align 8
  %46 = getelementptr inbounds %struct.i1480, %struct.i1480* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.i1480_evt_reset*, %struct.i1480_evt_reset** %5, align 8
  %49 = getelementptr inbounds %struct.i1480_evt_reset, %struct.i1480_evt_reset* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 1
  %51 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %44, %38
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @i1480_cmd(%struct.i1480*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
