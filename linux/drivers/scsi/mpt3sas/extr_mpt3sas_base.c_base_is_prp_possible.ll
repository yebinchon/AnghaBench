; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_base_is_prp_possible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c_base_is_prp_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._pcie_device = type { i32 }
%struct.scsi_cmnd = type { i32 }

@NVME_PRP_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, %struct._pcie_device*, %struct.scsi_cmnd*, i32)* @base_is_prp_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_is_prp_possible(%struct.MPT3SAS_ADAPTER* %0, %struct._pcie_device* %1, %struct.scsi_cmnd* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %7 = alloca %struct._pcie_device*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %6, align 8
  store %struct._pcie_device* %1, %struct._pcie_device** %7, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %13 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct._pcie_device*, %struct._pcie_device** %7, align 8
  %15 = icmp ne %struct._pcie_device* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct._pcie_device*, %struct._pcie_device** %7, align 8
  %18 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @mpt3sas_scsih_is_pcie_scsi_device(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %35

24:                                               ; preds = %16, %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @NVME_PRP_PAGE_SIZE, align 4
  %27 = mul nsw i32 %26, 4
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp sle i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %29, %24
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %22
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @mpt3sas_scsih_is_pcie_scsi_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
