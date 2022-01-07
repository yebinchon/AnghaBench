; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32, %struct.pci_dev*, %struct.device }
%struct.pci_dev = type { i32 }
%struct.device = type { i32 }
%struct.aer_rpc = type { %struct.pci_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aer_irq = common dso_local global i32 0, align 4
@aer_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"aerdrv\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"request AER IRQ %d failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"enabled with IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_device*)* @aer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aer_probe(%struct.pcie_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aer_rpc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  %8 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %9 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %8, i32 0, i32 2
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %7, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.aer_rpc* @devm_kzalloc(%struct.device* %13, i32 8, i32 %14)
  store %struct.aer_rpc* %15, %struct.aer_rpc** %5, align 8
  %16 = load %struct.aer_rpc*, %struct.aer_rpc** %5, align 8
  %17 = icmp ne %struct.aer_rpc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %54

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = load %struct.aer_rpc*, %struct.aer_rpc** %5, align 8
  %24 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %23, i32 0, i32 0
  store %struct.pci_dev* %22, %struct.pci_dev** %24, align 8
  %25 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %26 = load %struct.aer_rpc*, %struct.aer_rpc** %5, align 8
  %27 = call i32 @set_service_data(%struct.pcie_device* %25, %struct.aer_rpc* %26)
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %30 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @aer_irq, align 4
  %33 = load i32, i32* @aer_isr, align 4
  %34 = load i32, i32* @IRQF_SHARED, align 4
  %35 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %36 = call i32 @devm_request_threaded_irq(%struct.device* %28, i32 %31, i32 %32, i32 %33, i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.pcie_device* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %21
  %40 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %41 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %42 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pci_err(%struct.pci_dev* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %21
  %47 = load %struct.aer_rpc*, %struct.aer_rpc** %5, align 8
  %48 = call i32 @aer_enable_rootport(%struct.aer_rpc* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %51 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pci_info(%struct.pci_dev* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %46, %39, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.aer_rpc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @set_service_data(%struct.pcie_device*, %struct.aer_rpc*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i8*, %struct.pcie_device*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @aer_enable_rootport(%struct.aer_rpc*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
