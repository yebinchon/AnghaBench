; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_recip_handler_std_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_recip_handler_std_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhsg_uep = type { i32 }
%struct.usb_ctrlrequest = type { i32 }
%struct.usbhsg_gpriv = type { i32 }

@USBHSG_STATUS_SELF_POWERED = common dso_local global i32 0, align 4
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_priv*, %struct.usbhsg_uep*, %struct.usb_ctrlrequest*)* @usbhsg_recip_handler_std_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_recip_handler_std_get_device(%struct.usbhs_priv* %0, %struct.usbhsg_uep* %1, %struct.usb_ctrlrequest* %2) #0 {
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca %struct.usbhsg_uep*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  %7 = alloca %struct.usbhsg_gpriv*, align 8
  %8 = alloca i16, align 2
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %4, align 8
  store %struct.usbhsg_uep* %1, %struct.usbhsg_uep** %5, align 8
  store %struct.usb_ctrlrequest* %2, %struct.usb_ctrlrequest** %6, align 8
  %9 = load %struct.usbhsg_uep*, %struct.usbhsg_uep** %5, align 8
  %10 = call %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep* %9)
  store %struct.usbhsg_gpriv* %10, %struct.usbhsg_gpriv** %7, align 8
  store i16 0, i16* %8, align 2
  %11 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %7, align 8
  %12 = load i32, i32* @USBHSG_STATUS_SELF_POWERED, align 4
  %13 = call i64 @usbhsg_status_has(%struct.usbhsg_gpriv* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %17 = shl i32 1, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %8, align 2
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %7, align 8
  %21 = load i16, i16* %8, align 2
  %22 = call i32 @__usbhsg_recip_send_status(%struct.usbhsg_gpriv* %20, i16 zeroext %21)
  ret i32 0
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_uep_to_gpriv(%struct.usbhsg_uep*) #1

declare dso_local i64 @usbhsg_status_has(%struct.usbhsg_gpriv*, i32) #1

declare dso_local i32 @__usbhsg_recip_send_status(%struct.usbhsg_gpriv*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
