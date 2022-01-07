; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-pci.c_ohci_pci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-pci.c_ohci_pci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ohci_hcd = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }

@ohci_pci_quirks = common dso_local global i32 0, align 4
@OHCI_CTRL_RWC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_pci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_pci_reset(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca i32 (%struct.usb_hcd*)*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %9 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %8)
  store %struct.ohci_hcd* %9, %struct.ohci_hcd** %3, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(i64 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @ohci_pci_quirks, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call %struct.pci_device_id* @pci_match_id(i32 %21, %struct.pci_dev* %22)
  store %struct.pci_device_id* %23, %struct.pci_device_id** %6, align 8
  %24 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %25 = icmp ne %struct.pci_device_id* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %28 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to i32 (%struct.usb_hcd*)*
  store i32 (%struct.usb_hcd*)* %31, i32 (%struct.usb_hcd*)** %7, align 8
  %32 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %7, align 8
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %34 = call i32 %32(%struct.usb_hcd* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %26, %20
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %41 = call i32 @ohci_setup(%struct.usb_hcd* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i64 @device_can_wakeup(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %49 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %50 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i64) #1

declare dso_local %struct.pci_device_id* @pci_match_id(i32, %struct.pci_dev*) #1

declare dso_local i32 @ohci_setup(%struct.usb_hcd*) #1

declare dso_local i64 @device_can_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
