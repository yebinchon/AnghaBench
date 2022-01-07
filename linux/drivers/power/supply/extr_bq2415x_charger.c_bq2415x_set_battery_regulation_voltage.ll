; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_set_battery_regulation_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_set_battery_regulation_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BQ2415X_REG_VOLTAGE = common dso_local global i32 0, align 4
@BQ2415X_MASK_VO = common dso_local global i32 0, align 4
@BQ2415X_SHIFT_VO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*, i32)* @bq2415x_set_battery_regulation_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_set_battery_regulation_voltage(%struct.bq2415x_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq2415x_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sdiv i32 %7, 10
  %9 = sub nsw i32 %8, 350
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 47
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %13
  %22 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %23 = load i32, i32* @BQ2415X_REG_VOLTAGE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BQ2415X_MASK_VO, align 4
  %26 = load i32, i32* @BQ2415X_SHIFT_VO, align 4
  %27 = call i32 @bq2415x_i2c_write_mask(%struct.bq2415x_device* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @bq2415x_i2c_write_mask(%struct.bq2415x_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
