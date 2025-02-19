; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_get_pipe_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_get_pipe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usbhs_driver_pipe_config = type { i32 }
%struct.usbhs_priv = type { i32 }

@pipe_configs = common dso_local global %struct.renesas_usbhs_driver_pipe_config* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.renesas_usbhs_driver_pipe_config* (%struct.usbhs_priv*, i32)* @usbhsp_get_pipe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.renesas_usbhs_driver_pipe_config* @usbhsp_get_pipe_config(%struct.usbhs_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.renesas_usbhs_driver_pipe_config*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %7 = load %struct.renesas_usbhs_driver_pipe_config*, %struct.renesas_usbhs_driver_pipe_config** %5, align 8
  %8 = ptrtoint %struct.renesas_usbhs_driver_pipe_config* %7 to i32
  %9 = call %struct.renesas_usbhs_driver_pipe_config* @usbhs_get_dparam(%struct.usbhs_priv* %6, i32 %8)
  store %struct.renesas_usbhs_driver_pipe_config* %9, %struct.renesas_usbhs_driver_pipe_config** %5, align 8
  %10 = load %struct.renesas_usbhs_driver_pipe_config*, %struct.renesas_usbhs_driver_pipe_config** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %10, i64 %12
  ret %struct.renesas_usbhs_driver_pipe_config* %13
}

declare dso_local %struct.renesas_usbhs_driver_pipe_config* @usbhs_get_dparam(%struct.usbhs_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
