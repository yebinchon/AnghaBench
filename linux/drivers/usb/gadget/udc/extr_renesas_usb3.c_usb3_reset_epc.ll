; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_reset_epc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_reset_epc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i64 }

@USB_COM_CON_CONF = common dso_local global i32 0, align 4
@USB3_USB_COM_CON = common dso_local global i32 0, align 4
@USB_COM_CON_EP0_EN = common dso_local global i32 0, align 4
@USB_COM_CON_PIPE_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @usb3_reset_epc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_reset_epc(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %3 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %4 = load i32, i32* @USB_COM_CON_CONF, align 4
  %5 = load i32, i32* @USB3_USB_COM_CON, align 4
  %6 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %3, i32 %4, i32 %5)
  %7 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %8 = load i32, i32* @USB_COM_CON_EP0_EN, align 4
  %9 = load i32, i32* @USB3_USB_COM_CON, align 4
  %10 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %7, i32 %8, i32 %9)
  %11 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %12 = load i32, i32* @USB_COM_CON_PIPE_CLR, align 4
  %13 = load i32, i32* @USB3_USB_COM_CON, align 4
  %14 = call i32 @usb3_set_bit(%struct.renesas_usb3* %11, i32 %12, i32 %13)
  %15 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %16 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %18 = call i32 @usb3_set_test_mode(%struct.renesas_usb3* %17)
  ret void
}

declare dso_local i32 @usb3_clear_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_set_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_set_test_mode(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
