; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32 }
%struct.aer_rpc = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.aer_err_source = type { i32, i32 }

@PCI_ERR_ROOT_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_ROOT_UNCOR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_COR_RCV = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_ERR_SRC = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aer_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aer_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcie_device*, align 8
  %7 = alloca %struct.aer_rpc*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.aer_err_source, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pcie_device*
  store %struct.pcie_device* %12, %struct.pcie_device** %6, align 8
  %13 = load %struct.pcie_device*, %struct.pcie_device** %6, align 8
  %14 = call %struct.aer_rpc* @get_service_data(%struct.pcie_device* %13)
  store %struct.aer_rpc* %14, %struct.aer_rpc** %7, align 8
  %15 = load %struct.aer_rpc*, %struct.aer_rpc** %7, align 8
  %16 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %15, i32 0, i32 1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %8, align 8
  %18 = bitcast %struct.aer_err_source* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %26 = add nsw i64 %24, %25
  %27 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %9, i32 0, i32 0
  %28 = call i32 @pci_read_config_dword(%struct.pci_dev* %22, i64 %26, i32* %27)
  %29 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PCI_ERR_ROOT_UNCOR_RCV, align 4
  %32 = load i32, i32* @PCI_ERR_ROOT_COR_RCV, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %2
  %39 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @PCI_ERR_ROOT_ERR_SRC, align 8
  %43 = add nsw i64 %41, %42
  %44 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %9, i32 0, i32 1
  %45 = call i32 @pci_read_config_dword(%struct.pci_dev* %39, i64 %43, i32* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %50 = add nsw i64 %48, %49
  %51 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pci_write_config_dword(%struct.pci_dev* %46, i64 %50, i32 %52)
  %54 = load %struct.aer_rpc*, %struct.aer_rpc** %7, align 8
  %55 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %54, i32 0, i32 0
  %56 = bitcast %struct.aer_err_source* %9 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = call i32 @kfifo_put(i32* %55, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %38
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %38
  %63 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60, %36
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.aer_rpc* @get_service_data(%struct.pcie_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @kfifo_put(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
