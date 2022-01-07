; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhsc_schedule_notify_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhsc_schedule_notify_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usbhs_priv = type { i32 }

@detection_delay = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhsc_schedule_notify_hotplug(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.usbhs_priv* @usbhs_pdev_to_priv(%struct.platform_device* %5)
  store %struct.usbhs_priv* %6, %struct.usbhs_priv** %3, align 8
  %7 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %8 = load i32, i32* @detection_delay, align 4
  %9 = call i32 @usbhs_get_dparam(%struct.usbhs_priv* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %11 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @msecs_to_jiffies(i32 %12)
  %14 = call i32 @schedule_delayed_work(i32* %11, i32 %13)
  ret i32 0
}

declare dso_local %struct.usbhs_priv* @usbhs_pdev_to_priv(%struct.platform_device*) #1

declare dso_local i32 @usbhs_get_dparam(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
