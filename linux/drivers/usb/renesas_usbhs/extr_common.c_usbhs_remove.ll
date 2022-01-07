; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usbhs_priv = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"usb remove\0A\00", align 1
@runtime_pwctrl = common dso_local global i32 0, align 4
@hardware_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usbhs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhs_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usbhs_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.usbhs_priv* @usbhs_pdev_to_priv(%struct.platform_device* %4)
  store %struct.usbhs_priv* %5, %struct.usbhs_priv** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %10 = load i32, i32* @runtime_pwctrl, align 4
  %11 = call i32 @usbhs_get_dparam(%struct.usbhs_priv* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %15 = call i32 @usbhsc_power_ctrl(%struct.usbhs_priv* %14, i32 0)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @pm_runtime_disable(i32* %18)
  %20 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %21 = load i32, i32* @hardware_exit, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = call i32 @usbhs_platform_call(%struct.usbhs_priv* %20, i32 %21, %struct.platform_device* %22)
  %24 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %25 = call i32 @usbhsc_clk_put(%struct.usbhs_priv* %24)
  %26 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %27 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @reset_control_assert(i32 %28)
  %30 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %31 = call i32 @usbhs_mod_remove(%struct.usbhs_priv* %30)
  %32 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %33 = call i32 @usbhs_fifo_remove(%struct.usbhs_priv* %32)
  %34 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %35 = call i32 @usbhs_pipe_remove(%struct.usbhs_priv* %34)
  ret i32 0
}

declare dso_local %struct.usbhs_priv* @usbhs_pdev_to_priv(%struct.platform_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usbhs_get_dparam(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @usbhsc_power_ctrl(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @usbhs_platform_call(%struct.usbhs_priv*, i32, %struct.platform_device*) #1

declare dso_local i32 @usbhsc_clk_put(%struct.usbhs_priv*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @usbhs_mod_remove(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_fifo_remove(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_pipe_remove(%struct.usbhs_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
