; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-pci.c_uhci_pci_configure_hc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-pci.c_uhci_pci_configure_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }
%struct.pci_dev = type { i64 }

@USBLEGSUP = common dso_local global i32 0, align 4
@USBLEGSUP_DEFAULT = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@USBRES_INTEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*)* @uhci_pci_configure_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_pci_configure_hc(%struct.uhci_hcd* %0) #0 {
  %2 = alloca %struct.uhci_hcd*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %2, align 8
  %4 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %5 = call i32 @uhci_dev(%struct.uhci_hcd* %4)
  %6 = call %struct.pci_dev* @to_pci_dev(i32 %5)
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = load i32, i32* @USBLEGSUP, align 4
  %9 = load i32, i32* @USBLEGSUP_DEFAULT, align 4
  %10 = call i32 @pci_write_config_word(%struct.pci_dev* %7, i32 %8, i32 %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load i32, i32* @USBRES_INTEL, align 4
  %19 = call i32 @pci_write_config_byte(%struct.pci_dev* %17, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @uhci_dev(%struct.uhci_hcd*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
