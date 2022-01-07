; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_set_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_set_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"RtcCalibration value outside permitted range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AB8500_RTC = common dso_local global i32 0, align 4
@AB8500_RTC_CALIB_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ab8500_rtc_set_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_rtc_set_calibration(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, -127
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 127
  br i1 %12, label %13, label %18

13:                                               ; preds = %10, %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = and i32 127, %22
  store i32 %23, i32* %7, align 4
  br label %29

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = xor i32 %26, -1
  %28 = or i32 %27, 128
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* @AB8500_RTC, align 4
  %32 = load i32, i32* @AB8500_RTC_CALIB_REG, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @abx500_set_register_interruptible(%struct.device* %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @abx500_set_register_interruptible(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
