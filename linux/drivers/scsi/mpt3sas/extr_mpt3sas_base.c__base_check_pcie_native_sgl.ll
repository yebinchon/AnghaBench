; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_check_pcie_native_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_check_pcie_native_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct._pcie_device = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"scsi_dma_map failed: request for %d bytes!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, i32*, i32, %struct.scsi_cmnd*, %struct._pcie_device*)* @_base_check_pcie_native_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_base_check_pcie_native_sgl(%struct.MPT3SAS_ADAPTER* %0, i32* %1, i32 %2, %struct.scsi_cmnd* %3, %struct._pcie_device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca %struct._pcie_device*, align 8
  %12 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.scsi_cmnd* %3, %struct.scsi_cmnd** %10, align 8
  store %struct._pcie_device* %4, %struct._pcie_device** %11, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %14 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %23 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %22)
  %24 = call i32 @sdev_printk(i32 %18, i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 1, i32* %6, align 4
  br label %43

25:                                               ; preds = %5
  %26 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %27 = load %struct._pcie_device*, %struct._pcie_device** %11, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @base_is_prp_possible(%struct.MPT3SAS_ADAPTER* %26, %struct._pcie_device* %27, %struct.scsi_cmnd* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %40

33:                                               ; preds = %25
  %34 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @base_make_prp_nvme(%struct.MPT3SAS_ADAPTER* %34, %struct.scsi_cmnd* %35, i32* %36, i32 %37, i32 %38)
  store i32 0, i32* %6, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %42 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %41)
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %33, %17
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i32 @sdev_printk(i32, i32, i8*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @base_is_prp_possible(%struct.MPT3SAS_ADAPTER*, %struct._pcie_device*, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @base_make_prp_nvme(%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*, i32*, i32, i32) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
