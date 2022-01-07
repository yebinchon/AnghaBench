; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhsh_hpriv = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.usbhs_mod = type { i32*, i32*, i32*, i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"quit host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_priv*)* @usbhsh_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsh_stop(%struct.usbhs_priv* %0) #0 {
  %2 = alloca %struct.usbhs_priv*, align 8
  %3 = alloca %struct.usbhsh_hpriv*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.usbhs_mod*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %2, align 8
  %7 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %8 = call %struct.usbhsh_hpriv* @usbhsh_priv_to_hpriv(%struct.usbhs_priv* %7)
  store %struct.usbhsh_hpriv* %8, %struct.usbhsh_hpriv** %3, align 8
  %9 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %3, align 8
  %10 = call %struct.usb_hcd* @usbhsh_hpriv_to_hcd(%struct.usbhsh_hpriv* %9)
  store %struct.usb_hcd* %10, %struct.usb_hcd** %4, align 8
  %11 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %12 = call %struct.usbhs_mod* @usbhs_mod_get_current(%struct.usbhs_priv* %11)
  store %struct.usbhs_mod* %12, %struct.usbhs_mod** %5, align 8
  %13 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %14 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %13)
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.usbhs_mod*, %struct.usbhs_mod** %5, align 8
  %16 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load %struct.usbhs_mod*, %struct.usbhs_mod** %5, align 8
  %18 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.usbhs_mod*, %struct.usbhs_mod** %5, align 8
  %20 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.usbhs_mod*, %struct.usbhs_mod** %5, align 8
  %22 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %24 = load %struct.usbhs_mod*, %struct.usbhs_mod** %5, align 8
  %25 = call i32 @usbhs_irq_callback_update(%struct.usbhs_priv* %23, %struct.usbhs_mod* %24)
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %27 = call i32 @usb_remove_hcd(%struct.usb_hcd* %26)
  %28 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %29 = call i32 @usbhs_sys_host_ctrl(%struct.usbhs_priv* %28, i32 0)
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.usbhsh_hpriv* @usbhsh_priv_to_hpriv(%struct.usbhs_priv*) #1

declare dso_local %struct.usb_hcd* @usbhsh_hpriv_to_hcd(%struct.usbhsh_hpriv*) #1

declare dso_local %struct.usbhs_mod* @usbhs_mod_get_current(%struct.usbhs_priv*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_irq_callback_update(%struct.usbhs_priv*, %struct.usbhs_mod*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usbhs_sys_host_ctrl(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
