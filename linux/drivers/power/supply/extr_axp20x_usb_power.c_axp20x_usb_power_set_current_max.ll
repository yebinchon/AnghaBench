; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_axp20x_usb_power_set_current_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_axp20x_usb_power_set_current_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp20x_usb_power = type { i32, i32 }

@AXP221_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AXP20X_VBUS_IPSOUT_MGMT = common dso_local global i32 0, align 4
@AXP20X_VBUS_CLIMIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp20x_usb_power*, i32)* @axp20x_usb_power_set_current_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_usb_power_set_current_max(%struct.axp20x_usb_power* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axp20x_usb_power*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axp20x_usb_power* %0, %struct.axp20x_usb_power** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %29 [
    i32 100000, label %8
    i32 500000, label %18
    i32 900000, label %18
  ]

8:                                                ; preds = %2
  %9 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %4, align 8
  %10 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AXP221_ID, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %2, %2, %17
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 900000, %19
  %21 = sdiv i32 %20, 400000
  store i32 %21, i32* %6, align 4
  %22 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %4, align 8
  %23 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AXP20X_VBUS_IPSOUT_MGMT, align 4
  %26 = load i32, i32* @AXP20X_VBUS_CLIMIT_MASK, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %18, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
