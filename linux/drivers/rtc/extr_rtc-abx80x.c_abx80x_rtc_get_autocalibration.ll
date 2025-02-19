; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_rtc_get_autocalibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_rtc_get_autocalibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@ABX8XX_REG_OSC = common dso_local global i32 0, align 4
@ABX8XX_OSC_ACAL_512 = common dso_local global i32 0, align 4
@ABX8XX_OSC_ACAL_1024 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @abx80x_rtc_get_autocalibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx80x_rtc_get_autocalibration(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.i2c_client* @to_i2c_client(%struct.device* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @ABX8XX_REG_OSC, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ABX8XX_OSC_ACAL_512, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 512, i32* %6, align 4
  br label %30

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ABX8XX_OSC_ACAL_1024, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1024, i32* %6, align 4
  br label %29

28:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %14
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
