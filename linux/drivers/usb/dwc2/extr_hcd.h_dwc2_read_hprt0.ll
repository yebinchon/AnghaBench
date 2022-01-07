; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.h_dwc2_read_hprt0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.h_dwc2_read_hprt0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@HPRT0 = common dso_local global i32 0, align 4
@HPRT0_ENA = common dso_local global i32 0, align 4
@HPRT0_CONNDET = common dso_local global i32 0, align 4
@HPRT0_ENACHG = common dso_local global i32 0, align 4
@HPRT0_OVRCURRCHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*)* @dwc2_read_hprt0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %4 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %5 = load i32, i32* @HPRT0, align 4
  %6 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @HPRT0_ENA, align 4
  %8 = load i32, i32* @HPRT0_CONNDET, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @HPRT0_ENACHG, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @HPRT0_OVRCURRCHG, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
