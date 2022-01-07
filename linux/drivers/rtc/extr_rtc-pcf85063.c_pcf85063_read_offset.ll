; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_read_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_read_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcf85063 = type { i32 }

@PCF85063_REG_OFFSET = common dso_local global i32 0, align 4
@PCF85063_OFFSET_MODE = common dso_local global i32 0, align 4
@PCF85063_OFFSET_SIGN_BIT = common dso_local global i32 0, align 4
@PCF85063_OFFSET_STEP1 = common dso_local global i64 0, align 8
@PCF85063_OFFSET_STEP0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*)* @pcf85063_read_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85063_read_offset(%struct.device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pcf85063*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.pcf85063* @dev_get_drvdata(%struct.device* %10)
  store %struct.pcf85063* %11, %struct.pcf85063** %6, align 8
  %12 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %13 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCF85063_REG_OFFSET, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PCF85063_OFFSET_MODE, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* @PCF85063_OFFSET_SIGN_BIT, align 4
  %27 = call i64 @sign_extend32(i32 %25, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PCF85063_OFFSET_MODE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @PCF85063_OFFSET_STEP1, align 8
  %35 = mul nsw i64 %33, %34
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  br label %42

37:                                               ; preds = %21
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @PCF85063_OFFSET_STEP0, align 8
  %40 = mul nsw i64 %38, %39
  %41 = load i64*, i64** %5, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %32
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.pcf85063* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
