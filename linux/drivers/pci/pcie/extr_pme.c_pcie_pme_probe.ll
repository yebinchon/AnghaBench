; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pcie_pme_service_data = type { %struct.pcie_device*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcie_pme_work_fn = common dso_local global i32 0, align 4
@pcie_pme_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PCIe PME\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Signaling with IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_device*)* @pcie_pme_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_pme_probe(%struct.pcie_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pcie_pme_service_data*, align 8
  %6 = alloca i32, align 4
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.pcie_pme_service_data* @kzalloc(i32 16, i32 %7)
  store %struct.pcie_pme_service_data* %8, %struct.pcie_pme_service_data** %5, align 8
  %9 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %5, align 8
  %10 = icmp ne %struct.pcie_pme_service_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %5, align 8
  %16 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %5, align 8
  %19 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %18, i32 0, i32 1
  %20 = load i32, i32* @pcie_pme_work_fn, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %23 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %5, align 8
  %24 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %23, i32 0, i32 0
  store %struct.pcie_device* %22, %struct.pcie_device** %24, align 8
  %25 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %26 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %5, align 8
  %27 = call i32 @set_service_data(%struct.pcie_device* %25, %struct.pcie_pme_service_data* %26)
  %28 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %29 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %28, i32 0, i32 1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %29, align 8
  store %struct.pci_dev* %30, %struct.pci_dev** %4, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pcie_pme_interrupt_enable(%struct.pci_dev* %31, i32 0)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pcie_clear_root_pme_status(%struct.pci_dev* %33)
  %35 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %36 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @pcie_pme_irq, align 4
  %39 = load i32, i32* @IRQF_SHARED, align 4
  %40 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %41 = call i32 @request_irq(i32 %37, i32 %38, i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.pcie_device* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %14
  %45 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %5, align 8
  %46 = call i32 @kfree(%struct.pcie_pme_service_data* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %58

48:                                               ; preds = %14
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %51 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pci_info(%struct.pci_dev* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call i32 @pcie_pme_mark_devices(%struct.pci_dev* %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = call i32 @pcie_pme_interrupt_enable(%struct.pci_dev* %56, i32 1)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %48, %44, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.pcie_pme_service_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @set_service_data(%struct.pcie_device*, %struct.pcie_pme_service_data*) #1

declare dso_local i32 @pcie_pme_interrupt_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcie_clear_root_pme_status(%struct.pci_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.pcie_device*) #1

declare dso_local i32 @kfree(%struct.pcie_pme_service_data*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pcie_pme_mark_devices(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
