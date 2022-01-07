; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd-pci.c_usb_hcd_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd-pci.c_usb_hcd_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@CL_EHCI = common dso_local global i64 0, align 8
@companions_rwsem = common dso_local global i32 0, align 4
@ehci_remove = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_pci_remove(%struct.pci_dev* %0) #0 {
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
  br label %55

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i64 @pci_dev_run_wake(%struct.pci_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = call i32 @pm_runtime_get_noresume(i32* %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = call i32 (...) @local_irq_disable()
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %20 = call i32 @usb_hcd_irq(i32 0, %struct.usb_hcd* %19)
  %21 = call i32 (...) @local_irq_enable()
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CL_EHCI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = call i32 @down_write(i32* @companions_rwsem)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %31 = load i32, i32* @ehci_remove, align 4
  %32 = call i32 @for_each_companion(%struct.pci_dev* %29, %struct.usb_hcd* %30, i32 %31)
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %34 = call i32 @usb_remove_hcd(%struct.usb_hcd* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = call i32 @dev_set_drvdata(i32* %36, i32* null)
  %38 = call i32 @up_write(i32* @companions_rwsem)
  br label %50

39:                                               ; preds = %17
  %40 = call i32 @down_read(i32* @companions_rwsem)
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %45 = call i32 @usb_remove_hcd(%struct.usb_hcd* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = call i32 @dev_set_drvdata(i32* %47, i32* null)
  %49 = call i32 @up_read(i32* @companions_rwsem)
  br label %50

50:                                               ; preds = %39, %27
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %52 = call i32 @usb_put_hcd(%struct.usb_hcd* %51)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %54 = call i32 @pci_disable_device(%struct.pci_dev* %53)
  br label %55

55:                                               ; preds = %50, %8
  ret void
}

declare dso_local %struct.usb_hcd* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @pci_dev_run_wake(%struct.pci_dev*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @usb_hcd_irq(i32, %struct.usb_hcd*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @for_each_companion(%struct.pci_dev*, %struct.usb_hcd*, i32) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
