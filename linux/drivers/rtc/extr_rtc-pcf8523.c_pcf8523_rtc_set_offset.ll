; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8523.c_pcf8523_rtc_set_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8523.c_pcf8523_rtc_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@REG_OFFSET_MODE = common dso_local global i64 0, align 8
@REG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @pcf8523_rtc_set_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8523_rtc_set_offset(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @DIV_ROUND_CLOSEST(i64 %11, i32 4340)
  %13 = call i64 @clamp(i32 %12, i64 -64, i64 63)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @DIV_ROUND_CLOSEST(i64 %14, i32 4069)
  %16 = call i64 @clamp(i32 %15, i64 -64, i64 63)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = mul nsw i64 %17, 4340
  %19 = load i64, i64* %4, align 8
  %20 = sub nsw i64 %18, %19
  %21 = call i64 @abs(i64 %20)
  %22 = load i64, i64* %7, align 8
  %23 = mul nsw i64 %22, 4069
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 %23, %24
  %26 = call i64 @abs(i64 %25)
  %27 = icmp slt i64 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %29, 127
  store i64 %30, i64* %8, align 8
  br label %36

31:                                               ; preds = %2
  %32 = load i64, i64* %7, align 8
  %33 = and i64 %32, 127
  %34 = load i64, i64* @REG_OFFSET_MODE, align 8
  %35 = or i64 %33, %34
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = load i32, i32* @REG_OFFSET, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @pcf8523_write(%struct.i2c_client* %37, i32 %38, i64 %39)
  ret i32 %40
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i64 @clamp(i32, i64, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @pcf8523_write(%struct.i2c_client*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
