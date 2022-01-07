; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_ep0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_ep0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272 = type { i32, %struct.net2272_ep* }
%struct.net2272_ep = type { i32 }

@EP_RSPSET = common dso_local global i32 0, align 4
@NAK_OUT_PACKETS_MODE = common dso_local global i32 0, align 4
@ALT_NAK_OUT_PACKETS = common dso_local global i32 0, align 4
@EP_RSPCLR = common dso_local global i32 0, align 4
@HIDE_STATUS_PHASE = common dso_local global i32 0, align 4
@CONTROL_STATUS_PHASE_HANDSHAKE = common dso_local global i32 0, align 4
@USBCTL0 = common dso_local global i32 0, align 4
@USB_DETECT_ENABLE = common dso_local global i32 0, align 4
@USB_ROOT_PORT_WAKEUP_ENABLE = common dso_local global i32 0, align 4
@IO_WAKEUP_ENABLE = common dso_local global i32 0, align 4
@IRQENB0 = common dso_local global i32 0, align 4
@SETUP_PACKET_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@ENDPOINT_0_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@DMA_DONE_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@IRQENB1 = common dso_local global i32 0, align 4
@VBUS_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@ROOT_PORT_RESET_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2272*)* @net2272_ep0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net2272_ep0_start(%struct.net2272* %0) #0 {
  %2 = alloca %struct.net2272*, align 8
  %3 = alloca %struct.net2272_ep*, align 8
  store %struct.net2272* %0, %struct.net2272** %2, align 8
  %4 = load %struct.net2272*, %struct.net2272** %2, align 8
  %5 = getelementptr inbounds %struct.net2272, %struct.net2272* %4, i32 0, i32 1
  %6 = load %struct.net2272_ep*, %struct.net2272_ep** %5, align 8
  %7 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %6, i64 0
  store %struct.net2272_ep* %7, %struct.net2272_ep** %3, align 8
  %8 = load %struct.net2272_ep*, %struct.net2272_ep** %3, align 8
  %9 = load i32, i32* @EP_RSPSET, align 4
  %10 = load i32, i32* @NAK_OUT_PACKETS_MODE, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @ALT_NAK_OUT_PACKETS, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = call i32 @net2272_ep_write(%struct.net2272_ep* %8, i32 %9, i32 %14)
  %16 = load %struct.net2272_ep*, %struct.net2272_ep** %3, align 8
  %17 = load i32, i32* @EP_RSPCLR, align 4
  %18 = load i32, i32* @HIDE_STATUS_PHASE, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* @CONTROL_STATUS_PHASE_HANDSHAKE, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = call i32 @net2272_ep_write(%struct.net2272_ep* %16, i32 %17, i32 %22)
  %24 = load %struct.net2272*, %struct.net2272** %2, align 8
  %25 = load i32, i32* @USBCTL0, align 4
  %26 = load %struct.net2272*, %struct.net2272** %2, align 8
  %27 = getelementptr inbounds %struct.net2272, %struct.net2272* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @USB_DETECT_ENABLE, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @USB_ROOT_PORT_WAKEUP_ENABLE, align 4
  %32 = shl i32 1, %31
  %33 = or i32 %30, %32
  %34 = load i32, i32* @IO_WAKEUP_ENABLE, align 4
  %35 = shl i32 1, %34
  %36 = or i32 %33, %35
  %37 = call i32 @net2272_write(%struct.net2272* %24, i32 %25, i32 %36)
  %38 = load %struct.net2272*, %struct.net2272** %2, align 8
  %39 = load i32, i32* @IRQENB0, align 4
  %40 = load i32, i32* @SETUP_PACKET_INTERRUPT_ENABLE, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* @ENDPOINT_0_INTERRUPT_ENABLE, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @DMA_DONE_INTERRUPT_ENABLE, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = call i32 @net2272_write(%struct.net2272* %38, i32 %39, i32 %47)
  %49 = load %struct.net2272*, %struct.net2272** %2, align 8
  %50 = load i32, i32* @IRQENB1, align 4
  %51 = load i32, i32* @VBUS_INTERRUPT_ENABLE, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* @ROOT_PORT_RESET_INTERRUPT_ENABLE, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = call i32 @net2272_write(%struct.net2272* %49, i32 %50, i32 %58)
  ret void
}

declare dso_local i32 @net2272_ep_write(%struct.net2272_ep*, i32, i32) #1

declare dso_local i32 @net2272_write(%struct.net2272*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
