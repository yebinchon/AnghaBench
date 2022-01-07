; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd-pci.c_usb_hcd_pci_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd-pci.c_usb_hcd_pci_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.usb_hcd = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.usb_hcd*)* }

@HCD_FLAG_HW_ACCESSIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_pci_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.usb_hcd* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.usb_hcd* %5, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = icmp ne %struct.usb_hcd* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %47

9:                                                ; preds = %1
  %10 = load i32, i32* @HCD_FLAG_HW_ACCESSIBLE, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %19, align 8
  %21 = icmp ne i32 (%struct.usb_hcd*)* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %15
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %26, align 8
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %29 = call i32 %27(%struct.usb_hcd* %28)
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %31 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %35 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %43 = call i32 @free_irq(i64 %41, %struct.usb_hcd* %42)
  br label %44

44:                                               ; preds = %38, %33, %22
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = call i32 @pci_disable_device(%struct.pci_dev* %45)
  br label %47

47:                                               ; preds = %8, %44, %15, %9
  ret void
}

declare dso_local %struct.usb_hcd* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @free_irq(i64, %struct.usb_hcd*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
