; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_sysfs.c_pps_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_sysfs.c_pps_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ptp_clock = type { %struct.ptp_clock_info* }
%struct.ptp_clock_info = type { i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* }
%struct.ptp_clock_request = type { i32 }

@PTP_CLK_REQ_PPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_TIME = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pps_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pps_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ptp_clock*, align 8
  %11 = alloca %struct.ptp_clock_info*, align 8
  %12 = alloca %struct.ptp_clock_request, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.ptp_clock* @dev_get_drvdata(%struct.device* %16)
  store %struct.ptp_clock* %17, %struct.ptp_clock** %10, align 8
  %18 = load %struct.ptp_clock*, %struct.ptp_clock** %10, align 8
  %19 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %18, i32 0, i32 0
  %20 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %19, align 8
  store %struct.ptp_clock_info* %20, %struct.ptp_clock_info** %11, align 8
  %21 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %22 = load i32, i32* @PTP_CLK_REQ_PPS, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @CAP_SYS_TIME, align 4
  %26 = call i32 @capable(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i64, i64* @EPERM, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %55

31:                                               ; preds = %4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %14)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %52

37:                                               ; preds = %31
  %38 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %11, align 8
  %39 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %38, i32 0, i32 0
  %40 = load i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %39, align 8
  %41 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %11, align 8
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = call i32 %40(%struct.ptp_clock_info* %41, %struct.ptp_clock_request* %12, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %52

50:                                               ; preds = %37
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %5, align 8
  br label %55

52:                                               ; preds = %49, %36
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %52, %50, %28
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.ptp_clock* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
