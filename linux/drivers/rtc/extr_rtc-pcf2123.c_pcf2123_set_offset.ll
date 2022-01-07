; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2123.c_pcf2123_set_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2123.c_pcf2123_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcf2123_data = type { i32 }

@OFFSET_STEP = common dso_local global i32 0, align 4
@OFFSET_COARSE = common dso_local global i32 0, align 4
@PCF2123_REG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @pcf2123_set_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf2123_set_offset(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pcf2123_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pcf2123_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.pcf2123_data* %8, %struct.pcf2123_data** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @OFFSET_STEP, align 4
  %11 = mul nsw i32 %10, 127
  %12 = sext i32 %11 to i64
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 127, i32* %6, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @OFFSET_STEP, align 4
  %18 = mul nsw i32 %17, -128
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -128, i32* %6, align 4
  br label %26

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @OFFSET_STEP, align 4
  %25 = call i32 @DIV_ROUND_CLOSEST(i64 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %21
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %32, 63
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, -64
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @OFFSET_COARSE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %48

42:                                               ; preds = %34, %31, %27
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @OFFSET_COARSE, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.pcf2123_data*, %struct.pcf2123_data** %5, align 8
  %50 = getelementptr inbounds %struct.pcf2123_data, %struct.pcf2123_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PCF2123_REG_OFFSET, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @regmap_write(i32 %51, i32 %52, i32 %53)
  ret i32 %54
}

declare dso_local %struct.pcf2123_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
