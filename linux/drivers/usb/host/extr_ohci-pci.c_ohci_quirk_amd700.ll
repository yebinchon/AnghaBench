; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-pci.c_ohci_quirk_amd700.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-pci.c_ohci_quirk_amd700.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ohci_hcd = type { i32 }

@OHCI_QUIRK_AMD_PLL = common dso_local global i32 0, align 4
@OHCI_QUIRK_AMD_PREFETCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"enabled AMD prefetch quirk\0A\00", align 1
@OHCI_QUIRK_GLOBAL_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_quirk_amd700 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_quirk_amd700(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ohci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %4)
  store %struct.ohci_hcd* %5, %struct.ohci_hcd** %3, align 8
  %6 = call i64 (...) @usb_amd_quirk_pll_check()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @OHCI_QUIRK_AMD_PLL, align 4
  %10 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = call i64 (...) @usb_amd_prefetch_quirk()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* @OHCI_QUIRK_AMD_PREFETCH, align 4
  %19 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %24 = call i32 @ohci_dbg(%struct.ohci_hcd* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* @OHCI_QUIRK_GLOBAL_SUSPEND, align 4
  %27 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  ret i32 0
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i64 @usb_amd_quirk_pll_check(...) #1

declare dso_local i64 @usb_amd_prefetch_quirk(...) #1

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
