; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_set_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rv3028_data = type { i32 }

@OFFSET_STEP_PPT = common dso_local global i32 0, align 4
@RV3028_OFFSET = common dso_local global i32 0, align 4
@RV3028_BACKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @rv3028_set_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_set_offset(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rv3028_data*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.rv3028_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.rv3028_data* %9, %struct.rv3028_data** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @clamp(i64 %10, i64 -244141, i64 243187)
  %12 = mul nsw i32 %11, 1000
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @OFFSET_STEP_PPT, align 4
  %16 = call i64 @DIV_ROUND_CLOSEST(i64 %14, i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %18 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RV3028_OFFSET, align 4
  %21 = load i64, i64* %5, align 8
  %22 = ashr i64 %21, 1
  %23 = call i32 @regmap_write(i32 %19, i32 %20, i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %30 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RV3028_BACKUP, align 4
  %33 = call i32 @BIT(i32 7)
  %34 = load i64, i64* %5, align 8
  %35 = shl i64 %34, 7
  %36 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i64 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %26
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.rv3028_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clamp(i64, i64, i64) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
