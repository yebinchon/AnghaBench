; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_m41txx_rtc_set_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_m41txx_rtc_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ds1307 = type { i32 }

@M41TXX_MIN_OFFSET = common dso_local global i64 0, align 8
@M41TXX_MAX_OFFSET = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@M41TXX_POS_OFFSET_STEP_PPB = common dso_local global i32 0, align 4
@M41TXX_BIT_CALIB_SIGN = common dso_local global i32 0, align 4
@M41TXX_NEG_OFFSET_STEP_PPB = common dso_local global i32 0, align 4
@M41TXX_REG_CONTROL = common dso_local global i32 0, align 4
@M41TXX_M_CALIBRATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @m41txx_rtc_set_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41txx_rtc_set_offset(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ds1307*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.ds1307* @dev_get_drvdata(%struct.device* %8)
  store %struct.ds1307* %9, %struct.ds1307** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @M41TXX_MIN_OFFSET, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @M41TXX_MAX_OFFSET, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @ERANGE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @M41TXX_POS_OFFSET_STEP_PPB, align 4
  %26 = call i32 @DIV_ROUND_CLOSEST(i64 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @M41TXX_BIT_CALIB_SIGN, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %35

30:                                               ; preds = %20
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @abs(i64 %31)
  %33 = load i32, i32* @M41TXX_NEG_OFFSET_STEP_PPB, align 4
  %34 = call i32 @DIV_ROUND_CLOSEST(i64 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %37 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @M41TXX_REG_CONTROL, align 4
  %40 = load i32, i32* @M41TXX_M_CALIBRATION, align 4
  %41 = load i32, i32* @M41TXX_BIT_CALIB_SIGN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.ds1307* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
