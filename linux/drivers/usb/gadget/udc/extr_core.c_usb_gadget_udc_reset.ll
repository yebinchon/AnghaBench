; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_udc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_udc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i32 (%struct.usb_gadget.0*)* }
%struct.usb_gadget.0 = type opaque

@USB_STATE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_gadget_udc_reset(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %5 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %6 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %5, i32 0, i32 0
  %7 = load i32 (%struct.usb_gadget.0*)*, i32 (%struct.usb_gadget.0*)** %6, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %9 = bitcast %struct.usb_gadget* %8 to %struct.usb_gadget.0*
  %10 = call i32 %7(%struct.usb_gadget.0* %9)
  %11 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %12 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %13 = call i32 @usb_gadget_set_state(%struct.usb_gadget* %11, i32 %12)
  ret void
}

declare dso_local i32 @usb_gadget_set_state(%struct.usb_gadget*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
