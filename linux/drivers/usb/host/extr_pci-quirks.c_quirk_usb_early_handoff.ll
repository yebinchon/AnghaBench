; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_quirk_usb_early_handoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_quirk_usb_early_handoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, i32 }

@PCI_CLASS_SERIAL_USB_UHCI = common dso_local global i64 0, align 8
@PCI_CLASS_SERIAL_USB_OHCI = common dso_local global i64 0, align 8
@PCI_CLASS_SERIAL_USB_EHCI = common dso_local global i64 0, align 8
@PCI_CLASS_SERIAL_USB_XHCI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Can't enable PCI device, BIOS handoff failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_usb_early_handoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_usb_early_handoff(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 6222
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %83

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCI_CLASS_SERIAL_USB_UHCI, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI_CLASS_SERIAL_USB_OHCI, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI_CLASS_SERIAL_USB_EHCI, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI_CLASS_SERIAL_USB_XHCI, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %83

33:                                               ; preds = %26, %20, %14, %8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = call i64 @pci_enable_device(%struct.pci_dev* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 2
  %40 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %83

41:                                               ; preds = %33
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCI_CLASS_SERIAL_USB_UHCI, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = call i32 @quirk_usb_handoff_uhci(%struct.pci_dev* %48)
  br label %80

50:                                               ; preds = %41
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PCI_CLASS_SERIAL_USB_OHCI, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = call i32 @quirk_usb_handoff_ohci(%struct.pci_dev* %57)
  br label %79

59:                                               ; preds = %50
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCI_CLASS_SERIAL_USB_EHCI, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = call i32 @quirk_usb_disable_ehci(%struct.pci_dev* %66)
  br label %78

68:                                               ; preds = %59
  %69 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCI_CLASS_SERIAL_USB_XHCI, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %76 = call i32 @quirk_usb_handoff_xhci(%struct.pci_dev* %75)
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77, %65
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %47
  %81 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %82 = call i32 @pci_disable_device(%struct.pci_dev* %81)
  br label %83

83:                                               ; preds = %80, %37, %32, %7
  ret void
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @quirk_usb_handoff_uhci(%struct.pci_dev*) #1

declare dso_local i32 @quirk_usb_handoff_ohci(%struct.pci_dev*) #1

declare dso_local i32 @quirk_usb_disable_ehci(%struct.pci_dev*) #1

declare dso_local i32 @quirk_usb_handoff_xhci(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
