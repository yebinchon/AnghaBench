; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_config_dma_addressing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_config_dma_addressing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i64, i32, i32, i32*, i64 }
%struct.pci_dev = type { i32 }
%struct.sysinfo = type { i32 }

@MPI2_VERSION = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@_base_add_sg_single_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%d BIT PCI BUS DMA ADDRESSING SUPPORTED, total mem (%ld kB)\0A\00", align 1
@_base_add_sg_single_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, %struct.pci_dev*)* @_base_config_dma_addressing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_base_config_dma_addressing(%struct.MPT3SAS_ADAPTER* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sysinfo, align 4
  %9 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %10 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %11 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MPI2_VERSION, align 8
  %14 = icmp sgt i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 63, i32 64
  store i32 %16, i32* %9, align 4
  %17 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %18 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 @dma_get_required_mask(i32* %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @DMA_BIT_MASK(i32 32)
  %30 = call i64 @dma_set_mask_and_coherent(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %52

35:                                               ; preds = %26
  %36 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %37 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %36, i32 0, i32 3
  store i32* @_base_add_sg_single_32, i32** %37, align 8
  %38 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %39 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %38, i32 0, i32 2
  store i32 4, i32* %39, align 4
  %40 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %41 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %40, i32 0, i32 1
  store i32 32, i32* %41, align 8
  br label %42

42:                                               ; preds = %35
  %43 = call i32 @si_meminfo(%struct.sysinfo* %8)
  %44 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %45 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %46 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @convert_to_kb(i32 %49)
  %51 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %32
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dma_get_required_mask(i32*) #1

declare dso_local i64 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i32, i32) #1

declare dso_local i32 @convert_to_kb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
