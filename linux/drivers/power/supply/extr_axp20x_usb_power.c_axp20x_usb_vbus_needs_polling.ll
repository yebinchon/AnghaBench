; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_axp20x_usb_vbus_needs_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_usb_power.c_axp20x_usb_vbus_needs_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp20x_usb_power = type { i64 }

@AXP221_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp20x_usb_power*)* @axp20x_usb_vbus_needs_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_usb_vbus_needs_polling(%struct.axp20x_usb_power* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axp20x_usb_power*, align 8
  store %struct.axp20x_usb_power* %0, %struct.axp20x_usb_power** %3, align 8
  %4 = load %struct.axp20x_usb_power*, %struct.axp20x_usb_power** %3, align 8
  %5 = getelementptr inbounds %struct.axp20x_usb_power, %struct.axp20x_usb_power* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AXP221_ID, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
