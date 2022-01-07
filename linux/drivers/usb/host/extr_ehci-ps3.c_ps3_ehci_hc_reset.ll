; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-ps3.c_ps3_ehci_hc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-ps3.c_ps3_ehci_hc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ehci_hcd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ps3_ehci_hc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3_ehci_hc_reset(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %6)
  store %struct.ehci_hcd* %7, %struct.ehci_hcd** %5, align 8
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %9 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %14 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %16 = call i32 @ehci_setup(%struct.usb_hcd* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %23 = call i32 @ps3_ehci_setup_insnreg(%struct.ehci_hcd* %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_setup(%struct.usb_hcd*) #1

declare dso_local i32 @ps3_ehci_setup_insnreg(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
