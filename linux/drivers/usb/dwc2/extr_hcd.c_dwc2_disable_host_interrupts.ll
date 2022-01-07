; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_disable_host_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_disable_host_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@GINTMSK = common dso_local global i32 0, align 4
@GINTSTS_SOF = common dso_local global i32 0, align 4
@GINTSTS_PRTINT = common dso_local global i32 0, align 4
@GINTSTS_HCHINT = common dso_local global i32 0, align 4
@GINTSTS_PTXFEMP = common dso_local global i32 0, align 4
@GINTSTS_NPTXFEMP = common dso_local global i32 0, align 4
@GINTSTS_DISCONNINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_disable_host_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_disable_host_interrupts(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %4 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %5 = load i32, i32* @GINTMSK, align 4
  %6 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @GINTSTS_SOF, align 4
  %8 = load i32, i32* @GINTSTS_PRTINT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @GINTSTS_HCHINT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @GINTSTS_PTXFEMP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @GINTSTS_NPTXFEMP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @GINTSTS_DISCONNINT, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @GINTMSK, align 4
  %24 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
