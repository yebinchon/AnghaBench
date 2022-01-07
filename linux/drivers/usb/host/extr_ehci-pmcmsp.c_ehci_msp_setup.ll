; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-pmcmsp.c_ehci_msp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-pmcmsp.c_ehci_msp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32 }
%struct.ehci_hcd = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ehci_msp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_msp_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %6)
  store %struct.ehci_hcd* %7, %struct.ehci_hcd** %4, align 8
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %9 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %18 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %20 = call i32 @ehci_setup(%struct.usb_hcd* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %27 = call i32 @usb_hcd_tdi_set_mode(%struct.ehci_hcd* %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_setup(%struct.usb_hcd*) #1

declare dso_local i32 @usb_hcd_tdi_set_mode(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
