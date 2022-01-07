; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-pmcmsp.c_usb_hcd_tdi_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-pmcmsp.c_usb_hcd_tdi_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { %struct.ehci_regs* }
%struct.ehci_regs = type { i32 }

@USB_EHCI_REG_USB_MODE = common dso_local global i32 0, align 4
@USB_EHCI_REG_USB_STATUS = common dso_local global i32 0, align 4
@USB_EHCI_REG_USB_FIFO = common dso_local global i32 0, align 4
@USB_CTRL_MODE_STREAM_DISABLE = common dso_local global i32 0, align 4
@USB_EHCI_REG_BIT_STAT_STS = common dso_local global i32 0, align 4
@USB_CTRL_FIFO_THRESH = common dso_local global i32 0, align 4
@MSP_PIN_USB0_HOST_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @usb_hcd_tdi_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_hcd_tdi_set_mode(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehci_regs*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %8, i32 0, i32 0
  %10 = load %struct.ehci_regs*, %struct.ehci_regs** %9, align 8
  store %struct.ehci_regs* %10, %struct.ehci_regs** %7, align 8
  %11 = load %struct.ehci_regs*, %struct.ehci_regs** %7, align 8
  %12 = bitcast %struct.ehci_regs* %11 to i32*
  %13 = load i32, i32* @USB_EHCI_REG_USB_MODE, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %3, align 8
  %16 = load %struct.ehci_regs*, %struct.ehci_regs** %7, align 8
  %17 = bitcast %struct.ehci_regs* %16 to i32*
  %18 = load i32, i32* @USB_EHCI_REG_USB_STATUS, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32* %20, i32** %4, align 8
  %21 = load %struct.ehci_regs*, %struct.ehci_regs** %7, align 8
  %22 = bitcast %struct.ehci_regs* %21 to i32*
  %23 = load i32, i32* @USB_EHCI_REG_USB_FIFO, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %5, align 8
  %26 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @ehci_readl(%struct.ehci_hcd* %26, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @USB_CTRL_MODE_STREAM_DISABLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @ehci_writel(%struct.ehci_hcd* %29, i32 %32, i32* %33)
  %35 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @ehci_readl(%struct.ehci_hcd* %35, i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @USB_EHCI_REG_BIT_STAT_STS, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ehci_writel(%struct.ehci_hcd* %42, i32 %43, i32* %44)
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %47 = load i32, i32* @USB_CTRL_FIFO_THRESH, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @ehci_writel(%struct.ehci_hcd* %46, i32 %47, i32* %48)
  %50 = load i32, i32* @MSP_PIN_USB0_HOST_DEV, align 4
  %51 = call i32 @gpio_direction_output(i32 %50, i32 1)
  ret void
}

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
