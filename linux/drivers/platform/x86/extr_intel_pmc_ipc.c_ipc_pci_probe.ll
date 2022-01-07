; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_ipc_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_ipc_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pmc_ipc_dev = type { i32*, i32, i32, i32, i32 }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }

@ipcdev = common dso_local global %struct.intel_pmc_ipc_dev zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@IPC_TRIGGER_MODE_IRQ = common dso_local global i32 0, align 4
@ioc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"intel_pmc_ipc\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to request irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ipc_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.intel_pmc_ipc_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.intel_pmc_ipc_dev* @ipcdev, %struct.intel_pmc_ipc_dev** %6, align 8
  %8 = load %struct.intel_pmc_ipc_dev*, %struct.intel_pmc_ipc_dev** %6, align 8
  %9 = getelementptr inbounds %struct.intel_pmc_ipc_dev, %struct.intel_pmc_ipc_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load i32, i32* @IPC_TRIGGER_MODE_IRQ, align 4
  %17 = load %struct.intel_pmc_ipc_dev*, %struct.intel_pmc_ipc_dev** %6, align 8
  %18 = getelementptr inbounds %struct.intel_pmc_ipc_dev, %struct.intel_pmc_ipc_dev* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.intel_pmc_ipc_dev, %struct.intel_pmc_ipc_dev* @ipcdev, i32 0, i32 3))
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pcim_enable_device(%struct.pci_dev* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %15
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_name(%struct.pci_dev* %28)
  %30 = call i32 @pcim_iomap_regions(%struct.pci_dev* %27, i32 1, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %68

35:                                               ; preds = %26
  %36 = load %struct.intel_pmc_ipc_dev*, %struct.intel_pmc_ipc_dev** %6, align 8
  %37 = getelementptr inbounds %struct.intel_pmc_ipc_dev, %struct.intel_pmc_ipc_dev* %36, i32 0, i32 2
  %38 = call i32 @init_completion(i32* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32* @pcim_iomap_table(%struct.pci_dev* %39)
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.intel_pmc_ipc_dev*, %struct.intel_pmc_ipc_dev** %6, align 8
  %44 = getelementptr inbounds %struct.intel_pmc_ipc_dev, %struct.intel_pmc_ipc_dev* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ioc, align 4
  %51 = load %struct.intel_pmc_ipc_dev*, %struct.intel_pmc_ipc_dev** %6, align 8
  %52 = call i32 @devm_request_irq(i32* %46, i32 %49, i32 %50, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.intel_pmc_ipc_dev* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %35
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %68

60:                                               ; preds = %35
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load %struct.intel_pmc_ipc_dev*, %struct.intel_pmc_ipc_dev** %6, align 8
  %64 = getelementptr inbounds %struct.intel_pmc_ipc_dev, %struct.intel_pmc_ipc_dev* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = load %struct.intel_pmc_ipc_dev*, %struct.intel_pmc_ipc_dev** %6, align 8
  %67 = call i32 @pci_set_drvdata(%struct.pci_dev* %65, %struct.intel_pmc_ipc_dev* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %55, %33, %24, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.intel_pmc_ipc_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.intel_pmc_ipc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
