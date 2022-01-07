; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2123.c_pcf2123_read_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2123.c_pcf2123_read_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcf2123_data = type { i32 }

@PCF2123_REG_OFFSET = common dso_local global i32 0, align 4
@OFFSET_MASK = common dso_local global i32 0, align 4
@OFFSET_SIGN_BIT = common dso_local global i32 0, align 4
@OFFSET_COARSE = common dso_local global i32 0, align 4
@OFFSET_STEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*)* @pcf2123_read_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf2123_read_offset(%struct.device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pcf2123_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.pcf2123_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.pcf2123_data* %11, %struct.pcf2123_data** %6, align 8
  %12 = load %struct.pcf2123_data*, %struct.pcf2123_data** %6, align 8
  %13 = getelementptr inbounds %struct.pcf2123_data, %struct.pcf2123_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCF2123_REG_OFFSET, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %9)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @OFFSET_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @OFFSET_SIGN_BIT, align 4
  %26 = call i32 @sign_extend32(i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @OFFSET_COARSE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 2
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %21
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @OFFSET_STEP, align 8
  %38 = mul nsw i64 %36, %37
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.pcf2123_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
