; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-pci.c_xhci_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-pci.c_xhci_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.xhci_hcd = type { i32, i32*, i32 }

@XHCI_STATE_REMOVING = common dso_local global i32 0, align 4
@XHCI_DEFAULT_PM_RUNTIME_ALLOW = common dso_local global i32 0, align 4
@XHCI_SPURIOUS_WAKEUP = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @xhci_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.xhci_hcd*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i32 @pci_get_drvdata(%struct.pci_dev* %4)
  %6 = call %struct.xhci_hcd* @hcd_to_xhci(i32 %5)
  store %struct.xhci_hcd* %6, %struct.xhci_hcd** %3, align 8
  %7 = load i32, i32* @XHCI_STATE_REMOVING, align 4
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @XHCI_DEFAULT_PM_RUNTIME_ALLOW, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 @pm_runtime_forbid(i32* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %24 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @usb_remove_hcd(i32* %30)
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %33 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @usb_put_hcd(i32* %34)
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %27, %22
  %39 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @XHCI_SPURIOUS_WAKEUP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load i32, i32* @PCI_D3hot, align 4
  %48 = call i32 @pci_set_power_state(%struct.pci_dev* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %51 = call i32 @usb_hcd_pci_remove(%struct.pci_dev* %50)
  ret void
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(i32) #1

declare dso_local i32 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pm_runtime_forbid(i32*) #1

declare dso_local i32 @usb_remove_hcd(i32*) #1

declare dso_local i32 @usb_put_hcd(i32*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @usb_hcd_pci_remove(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
