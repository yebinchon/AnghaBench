; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_get_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_get_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usbhsg_gpriv = type { i32 }
%struct.usbhs_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @usbhsg_get_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_get_frame(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.usbhsg_gpriv*, align 8
  %4 = alloca %struct.usbhs_priv*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %6 = call %struct.usbhsg_gpriv* @usbhsg_gadget_to_gpriv(%struct.usb_gadget* %5)
  store %struct.usbhsg_gpriv* %6, %struct.usbhsg_gpriv** %3, align 8
  %7 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %3, align 8
  %8 = call %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv* %7)
  store %struct.usbhs_priv* %8, %struct.usbhs_priv** %4, align 8
  %9 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %10 = call i32 @usbhs_frame_get_num(%struct.usbhs_priv* %9)
  ret i32 %10
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_gadget_to_gpriv(%struct.usb_gadget*) #1

declare dso_local %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv*) #1

declare dso_local i32 @usbhs_frame_get_num(%struct.usbhs_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
