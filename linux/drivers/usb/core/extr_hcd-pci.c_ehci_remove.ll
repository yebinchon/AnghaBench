; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd-pci.c_ehci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd-pci.c_ehci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.usb_hcd*, %struct.pci_dev*, %struct.usb_hcd*)* @ehci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_remove(%struct.pci_dev* %0, %struct.usb_hcd* %1, %struct.pci_dev* %2, %struct.usb_hcd* %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.usb_hcd*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.usb_hcd* %1, %struct.usb_hcd** %6, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %7, align 8
  store %struct.usb_hcd* %3, %struct.usb_hcd** %8, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %10 = call i64 @is_ohci_or_uhci(%struct.pci_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %12, %4
  ret void
}

declare dso_local i64 @is_ohci_or_uhci(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
