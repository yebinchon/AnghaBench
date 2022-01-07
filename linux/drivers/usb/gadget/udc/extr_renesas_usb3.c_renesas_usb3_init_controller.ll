; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_init_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_init_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }

@USB_COM_CON_PN_WDATAIF_NL = common dso_local global i32 0, align 4
@USB_COM_CON_PN_RDATAIF_NL = common dso_local global i32 0, align 4
@USB_COM_CON_PN_LSTTR_PP = common dso_local global i32 0, align 4
@USB3_USB_COM_CON = common dso_local global i32 0, align 4
@USB_OTG_IDMON = common dso_local global i32 0, align 4
@USB3_USB_OTG_INT_STA = common dso_local global i32 0, align 4
@USB3_USB_OTG_INT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @renesas_usb3_init_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_usb3_init_controller(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %3 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %4 = call i32 @usb3_init_axi_bridge(%struct.renesas_usb3* %3)
  %5 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %6 = call i32 @usb3_init_epc_registers(%struct.renesas_usb3* %5)
  %7 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %8 = load i32, i32* @USB_COM_CON_PN_WDATAIF_NL, align 4
  %9 = load i32, i32* @USB_COM_CON_PN_RDATAIF_NL, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @USB_COM_CON_PN_LSTTR_PP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @USB3_USB_COM_CON, align 4
  %14 = call i32 @usb3_set_bit(%struct.renesas_usb3* %7, i32 %12, i32 %13)
  %15 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %16 = load i32, i32* @USB_OTG_IDMON, align 4
  %17 = load i32, i32* @USB3_USB_OTG_INT_STA, align 4
  %18 = call i32 @usb3_write(%struct.renesas_usb3* %15, i32 %16, i32 %17)
  %19 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %20 = load i32, i32* @USB_OTG_IDMON, align 4
  %21 = load i32, i32* @USB3_USB_OTG_INT_ENA, align 4
  %22 = call i32 @usb3_write(%struct.renesas_usb3* %19, i32 %20, i32 %21)
  %23 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %24 = call i32 @usb3_check_id(%struct.renesas_usb3* %23)
  %25 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %26 = call i32 @usb3_check_vbus(%struct.renesas_usb3* %25)
  ret void
}

declare dso_local i32 @usb3_init_axi_bridge(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_init_epc_registers(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_set_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_check_id(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_check_vbus(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
