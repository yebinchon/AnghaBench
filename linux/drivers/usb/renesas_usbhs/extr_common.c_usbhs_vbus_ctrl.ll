; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_vbus_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_vbus_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.platform_device = type { i32 }

@set_vbus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhs_vbus_ctrl(%struct.usbhs_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %7 = call %struct.platform_device* @usbhs_priv_to_pdev(%struct.usbhs_priv* %6)
  store %struct.platform_device* %7, %struct.platform_device** %5, align 8
  %8 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %9 = load i32, i32* @set_vbus, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @usbhs_platform_call(%struct.usbhs_priv* %8, i32 %9, %struct.platform_device* %10, i32 %11)
  ret i32 %12
}

declare dso_local %struct.platform_device* @usbhs_priv_to_pdev(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_platform_call(%struct.usbhs_priv*, i32, %struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
