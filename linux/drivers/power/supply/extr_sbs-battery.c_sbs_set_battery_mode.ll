; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-battery.c_sbs_set_battery_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-battery.c_sbs_set_battery_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@BATTERY_MODE_OFFSET = common dso_local global i32 0, align 4
@BATTERY_MODE_MASK = common dso_local global i32 0, align 4
@BATTERY_MODE_AMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @sbs_set_battery_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbs_set_battery_mode(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load i32, i32* @BATTERY_MODE_OFFSET, align 4
  %10 = call i32 @sbs_read_word_data(%struct.i2c_client* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @BATTERY_MODE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @BATTERY_MODE_AMPS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @BATTERY_MODE_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @BATTERY_MODE_MASK, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @BATTERY_MODE_OFFSET, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @sbs_write_word_data(%struct.i2c_client* %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %36
  %46 = call i32 @usleep_range(i32 1000, i32 2000)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @BATTERY_MODE_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %43, %21, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @sbs_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @sbs_write_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
