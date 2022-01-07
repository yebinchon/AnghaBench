; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-pci.c_uhci_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-pci.c_uhci_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64 }
%struct.uhci_hcd = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@PCI_VENDOR_ID_VIA = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_HP = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@uhci_pci_reset_hc = common dso_local global i32 0, align 4
@uhci_pci_check_and_reset_hc = common dso_local global i32 0, align 4
@uhci_pci_configure_hc = common dso_local global i32 0, align 4
@uhci_pci_resume_detect_interrupts_are_broken = common dso_local global i32 0, align 4
@uhci_pci_global_suspend_mode_is_broken = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @uhci_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_pci_init(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.uhci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd* %4)
  store %struct.uhci_hcd* %5, %struct.uhci_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %12 = call i32 @uhci_count_ports(%struct.usb_hcd* %11)
  %13 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %16 = call i32 @uhci_dev(%struct.uhci_hcd* %15)
  %17 = call %struct.TYPE_2__* @to_pci_dev(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCI_VENDOR_ID_VIA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %24 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %27 = call i32 @uhci_dev(%struct.uhci_hcd* %26)
  %28 = call %struct.TYPE_2__* @to_pci_dev(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_VENDOR_ID_HP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %35 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %34, i32 0, i32 2
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %38 = call i32 @uhci_dev(%struct.uhci_hcd* %37)
  %39 = call %struct.TYPE_2__* @to_pci_dev(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %46 = call i32 @uhci_dev(%struct.uhci_hcd* %45)
  %47 = call i32 @device_set_wakeup_capable(i32 %46, i32 1)
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i32, i32* @uhci_pci_reset_hc, align 4
  %50 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %51 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @uhci_pci_check_and_reset_hc, align 4
  %53 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @uhci_pci_configure_hc, align 4
  %56 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %57 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @uhci_pci_resume_detect_interrupts_are_broken, align 4
  %59 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %60 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @uhci_pci_global_suspend_mode_is_broken, align 4
  %62 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %63 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %65 = call i32 @check_and_reset_hc(%struct.uhci_hcd* %64)
  ret i32 0
}

declare dso_local %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd*) #1

declare dso_local i32 @uhci_count_ports(%struct.usb_hcd*) #1

declare dso_local %struct.TYPE_2__* @to_pci_dev(i32) #1

declare dso_local i32 @uhci_dev(%struct.uhci_hcd*) #1

declare dso_local i32 @device_set_wakeup_capable(i32, i32) #1

declare dso_local i32 @check_and_reset_hc(%struct.uhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
