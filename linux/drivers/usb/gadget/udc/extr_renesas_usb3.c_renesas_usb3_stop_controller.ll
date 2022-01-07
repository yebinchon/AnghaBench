; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_stop_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_stop_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }

@USB3_P0_INT_ENA = common dso_local global i32 0, align 4
@USB3_USB_OTG_INT_ENA = common dso_local global i32 0, align 4
@USB3_USB_INT_ENA_1 = common dso_local global i32 0, align 4
@USB3_USB_INT_ENA_2 = common dso_local global i32 0, align 4
@USB3_AXI_INT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @renesas_usb3_stop_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_usb3_stop_controller(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %3 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %4 = call i32 @usb3_disconnect(%struct.renesas_usb3* %3)
  %5 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %6 = load i32, i32* @USB3_P0_INT_ENA, align 4
  %7 = call i32 @usb3_write(%struct.renesas_usb3* %5, i32 0, i32 %6)
  %8 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %9 = load i32, i32* @USB3_USB_OTG_INT_ENA, align 4
  %10 = call i32 @usb3_write(%struct.renesas_usb3* %8, i32 0, i32 %9)
  %11 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %12 = load i32, i32* @USB3_USB_INT_ENA_1, align 4
  %13 = call i32 @usb3_write(%struct.renesas_usb3* %11, i32 0, i32 %12)
  %14 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %15 = load i32, i32* @USB3_USB_INT_ENA_2, align 4
  %16 = call i32 @usb3_write(%struct.renesas_usb3* %14, i32 0, i32 %15)
  %17 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %18 = load i32, i32* @USB3_AXI_INT_ENA, align 4
  %19 = call i32 @usb3_write(%struct.renesas_usb3* %17, i32 0, i32 %18)
  ret void
}

declare dso_local i32 @usb3_disconnect(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
