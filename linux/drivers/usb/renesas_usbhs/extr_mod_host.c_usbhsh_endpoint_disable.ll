; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { i32 }
%struct.usbhsh_ep = type { i32 }
%struct.usbhsh_device = type { i32 }
%struct.usbhsh_hpriv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @usbhsh_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsh_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.usbhsh_ep*, align 8
  %6 = alloca %struct.usbhsh_device*, align 8
  %7 = alloca %struct.usbhsh_hpriv*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %8 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %9 = call %struct.usbhsh_ep* @usbhsh_ep_to_uep(%struct.usb_host_endpoint* %8)
  store %struct.usbhsh_ep* %9, %struct.usbhsh_ep** %5, align 8
  %10 = load %struct.usbhsh_ep*, %struct.usbhsh_ep** %5, align 8
  %11 = icmp ne %struct.usbhsh_ep* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.usbhsh_ep*, %struct.usbhsh_ep** %5, align 8
  %15 = call %struct.usbhsh_device* @usbhsh_uep_to_udev(%struct.usbhsh_ep* %14)
  store %struct.usbhsh_device* %15, %struct.usbhsh_device** %6, align 8
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = call %struct.usbhsh_hpriv* @usbhsh_hcd_to_hpriv(%struct.usb_hcd* %16)
  store %struct.usbhsh_hpriv* %17, %struct.usbhsh_hpriv** %7, align 8
  %18 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %7, align 8
  %19 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %20 = call i32 @usbhsh_endpoint_detach(%struct.usbhsh_hpriv* %18, %struct.usb_host_endpoint* %19)
  %21 = load %struct.usbhsh_device*, %struct.usbhsh_device** %6, align 8
  %22 = call i32 @usbhsh_device_has_endpoint(%struct.usbhsh_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %13
  %25 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %7, align 8
  %26 = load %struct.usbhsh_device*, %struct.usbhsh_device** %6, align 8
  %27 = call i32 @usbhsh_device_detach(%struct.usbhsh_hpriv* %25, %struct.usbhsh_device* %26)
  br label %28

28:                                               ; preds = %12, %24, %13
  ret void
}

declare dso_local %struct.usbhsh_ep* @usbhsh_ep_to_uep(%struct.usb_host_endpoint*) #1

declare dso_local %struct.usbhsh_device* @usbhsh_uep_to_udev(%struct.usbhsh_ep*) #1

declare dso_local %struct.usbhsh_hpriv* @usbhsh_hcd_to_hpriv(%struct.usb_hcd*) #1

declare dso_local i32 @usbhsh_endpoint_detach(%struct.usbhsh_hpriv*, %struct.usb_host_endpoint*) #1

declare dso_local i32 @usbhsh_device_has_endpoint(%struct.usbhsh_device*) #1

declare dso_local i32 @usbhsh_device_detach(%struct.usbhsh_hpriv*, %struct.usbhsh_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
