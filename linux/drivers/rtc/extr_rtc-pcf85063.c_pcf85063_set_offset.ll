; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_set_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcf85063 = type { i32 }

@PCF85063_OFFSET_STEP0 = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@PCF85063_OFFSET_STEP1 = common dso_local global i32 0, align 4
@PCF85063_OFFSET_MODE = common dso_local global i32 0, align 4
@PCF85063_REG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @pcf85063_set_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85063_set_offset(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pcf85063*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.pcf85063* @dev_get_drvdata(%struct.device* %12)
  store %struct.pcf85063* %13, %struct.pcf85063** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @PCF85063_OFFSET_STEP0, align 4
  %16 = mul nsw i32 %15, 63
  %17 = sext i32 %16 to i64
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ERANGE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @PCF85063_OFFSET_STEP0, align 4
  %25 = mul nsw i32 %24, -64
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %77

31:                                               ; preds = %22
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @PCF85063_OFFSET_STEP0, align 4
  %34 = call i32 @DIV_ROUND_CLOSEST(i64 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @PCF85063_OFFSET_STEP1, align 4
  %37 = call i32 @DIV_ROUND_CLOSEST(i64 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PCF85063_OFFSET_STEP0, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %38, %42
  %44 = call i32 @abs(i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @PCF85063_OFFSET_STEP1, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %45, %49
  %51 = call i32 @abs(i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 63
  br i1 %53, label %61, label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, -64
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57, %54, %31
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @PCF85063_OFFSET_MODE, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  store i32 %65, i32* %9, align 4
  br label %70

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @PCF85063_OFFSET_MODE, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %72 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PCF85063_REG_OFFSET, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @regmap_write(i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %28, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.pcf85063* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
