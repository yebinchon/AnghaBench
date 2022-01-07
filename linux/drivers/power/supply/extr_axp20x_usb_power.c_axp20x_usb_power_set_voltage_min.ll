; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_axp20x_usb_power_set_voltage_min.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_axp20x_usb_power_set_voltage_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp20x_usb_power = type { i32 }

@AXP20X_VBUS_IPSOUT_MGMT = common dso_local global i32 0, align 4
@AXP20X_VBUS_VHOLD_MASK = common dso_local global i32 0, align 4
@AXP20X_VBUS_VHOLD_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp20x_usb_power*, i32)* @axp20x_usb_power_set_voltage_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_usb_power_set_voltage_min(%struct.axp20x_usb_power* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axp20x_usb_power*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axp20x_usb_power* %0, %struct.axp20x_usb_power** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %21 [
    i32 4000000, label %8
    i32 4100000, label %8
    i32 4200000, label %8
    i32 4300000, label %8
    i32 4400000, label %8
    i32 4500000, label %8
    i32 4600000, label %8
    i32 4700000, label %8
  ]

8:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 %9, 4000000
  %11 = sdiv i32 %10, 100000
  store i32 %11, i32* %6, align 4
  %12 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %4, align 8
  %13 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AXP20X_VBUS_IPSOUT_MGMT, align 4
  %16 = load i32, i32* @AXP20X_VBUS_VHOLD_MASK, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AXP20X_VBUS_VHOLD_OFFSET, align 4
  %19 = shl i32 %17, %18
  %20 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
