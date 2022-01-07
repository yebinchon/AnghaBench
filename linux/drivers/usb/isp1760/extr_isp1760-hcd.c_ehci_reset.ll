; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_ehci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_ehci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32 }
%struct.isp1760_hcd = type { i32 }

@HC_USBCMD = common dso_local global i32 0, align 4
@CMD_RESET = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ehci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_reset(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.isp1760_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %6 = call %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd* %5)
  store %struct.isp1760_hcd* %6, %struct.isp1760_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HC_USBCMD, align 4
  %11 = call i32 @reg_read32(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @CMD_RESET, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HC_USBCMD, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @reg_write32(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @HC_STATE_HALT, align 4
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %23 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %28 = load i32, i32* @HC_USBCMD, align 4
  %29 = load i32, i32* @CMD_RESET, align 4
  %30 = call i32 @handshake(%struct.usb_hcd* %27, i32 %28, i32 %29, i32 0, i32 250000)
  ret i32 %30
}

declare dso_local %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd*) #1

declare dso_local i32 @reg_read32(i32, i32) #1

declare dso_local i32 @reg_write32(i32, i32, i32) #1

declare dso_local i32 @handshake(%struct.usb_hcd*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
