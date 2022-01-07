; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_gadget.c_usbhsg_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usbhsg_gpriv = type { i32 }
%struct.usbhs_priv = type { i32 }

@USBHSG_STATUS_SOFT_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @usbhsg_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsg_pullup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhsg_gpriv*, align 8
  %6 = alloca %struct.usbhs_priv*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %9 = call %struct.usbhsg_gpriv* @usbhsg_gadget_to_gpriv(%struct.usb_gadget* %8)
  store %struct.usbhsg_gpriv* %9, %struct.usbhsg_gpriv** %5, align 8
  %10 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %5, align 8
  %11 = call %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv* %10)
  store %struct.usbhs_priv* %11, %struct.usbhs_priv** %6, align 8
  %12 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @usbhs_lock(%struct.usbhs_priv* %12, i64 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %5, align 8
  %19 = load i32, i32* @USBHSG_STATUS_SOFT_CONNECT, align 4
  %20 = call i32 @usbhsg_status_set(%struct.usbhsg_gpriv* %18, i32 %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.usbhsg_gpriv*, %struct.usbhsg_gpriv** %5, align 8
  %23 = load i32, i32* @USBHSG_STATUS_SOFT_CONNECT, align 4
  %24 = call i32 @usbhsg_status_clr(%struct.usbhsg_gpriv* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %27 = call i32 @usbhsg_update_pullup(%struct.usbhs_priv* %26)
  %28 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @usbhs_unlock(%struct.usbhs_priv* %28, i64 %29)
  ret i32 0
}

declare dso_local %struct.usbhsg_gpriv* @usbhsg_gadget_to_gpriv(%struct.usb_gadget*) #1

declare dso_local %struct.usbhs_priv* @usbhsg_gpriv_to_priv(%struct.usbhsg_gpriv*) #1

declare dso_local i32 @usbhs_lock(%struct.usbhs_priv*, i64) #1

declare dso_local i32 @usbhsg_status_set(%struct.usbhsg_gpriv*, i32) #1

declare dso_local i32 @usbhsg_status_clr(%struct.usbhsg_gpriv*, i32) #1

declare dso_local i32 @usbhsg_update_pullup(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_unlock(%struct.usbhs_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
