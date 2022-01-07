; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_device_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_device_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhsh_device = type { i32 }
%struct.usbhsh_hpriv = type { i32 }
%struct.urb = type { i32 }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usbhsh_device* (%struct.usbhsh_hpriv*, %struct.urb*)* @usbhsh_device_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usbhsh_device* @usbhsh_device_get(%struct.usbhsh_hpriv* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usbhsh_device*, align 8
  %4 = alloca %struct.usbhsh_hpriv*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usbhsh_device*, align 8
  store %struct.usbhsh_hpriv* %0, %struct.usbhsh_hpriv** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %8 = load %struct.urb*, %struct.urb** %5, align 8
  %9 = call %struct.usb_device* @usbhsh_urb_to_usbv(%struct.urb* %8)
  store %struct.usb_device* %9, %struct.usb_device** %6, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %11 = call %struct.usbhsh_device* @usbhsh_usbv_to_udev(%struct.usb_device* %10)
  store %struct.usbhsh_device* %11, %struct.usbhsh_device** %7, align 8
  %12 = load %struct.usbhsh_device*, %struct.usbhsh_device** %7, align 8
  %13 = icmp ne %struct.usbhsh_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.usbhsh_device* null, %struct.usbhsh_device** %3, align 8
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.urb*, %struct.urb** %5, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @usb_pipedevice(i32 %18)
  %20 = icmp eq i64 0, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %4, align 8
  %23 = call %struct.usbhsh_device* @usbhsh_device0(%struct.usbhsh_hpriv* %22)
  store %struct.usbhsh_device* %23, %struct.usbhsh_device** %3, align 8
  br label %26

24:                                               ; preds = %15
  %25 = load %struct.usbhsh_device*, %struct.usbhsh_device** %7, align 8
  store %struct.usbhsh_device* %25, %struct.usbhsh_device** %3, align 8
  br label %26

26:                                               ; preds = %24, %21, %14
  %27 = load %struct.usbhsh_device*, %struct.usbhsh_device** %3, align 8
  ret %struct.usbhsh_device* %27
}

declare dso_local %struct.usb_device* @usbhsh_urb_to_usbv(%struct.urb*) #1

declare dso_local %struct.usbhsh_device* @usbhsh_usbv_to_udev(%struct.usb_device*) #1

declare dso_local i64 @usb_pipedevice(i32) #1

declare dso_local %struct.usbhsh_device* @usbhsh_device0(%struct.usbhsh_hpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
