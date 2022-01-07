; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_set_and_get_msix_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_set_and_get_msix_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i64, i32 (%struct.MPT3SAS_ADAPTER*, i32)* }
%struct.scsiio_tracker = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, i64)* @_base_set_and_get_msix_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_base_set_and_get_msix_index(%struct.MPT3SAS_ADAPTER* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsiio_tracker*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.scsiio_tracker* null, %struct.scsiio_tracker** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %9 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.scsiio_tracker* @_get_st_from_smid(%struct.MPT3SAS_ADAPTER* %13, i64 %14)
  store %struct.scsiio_tracker* %15, %struct.scsiio_tracker** %6, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %6, align 8
  %18 = icmp eq %struct.scsiio_tracker* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %21 = call i32 @_base_get_msix_index(%struct.MPT3SAS_ADAPTER* %20, i32* null)
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %16
  %23 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %24 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %23, i32 0, i32 1
  %25 = load i32 (%struct.MPT3SAS_ADAPTER*, i32)*, i32 (%struct.MPT3SAS_ADAPTER*, i32)** %24, align 8
  %26 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %27 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %6, align 8
  %28 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %25(%struct.MPT3SAS_ADAPTER* %26, i32 %29)
  %31 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %6, align 8
  %32 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %6, align 8
  %34 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %22, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.scsiio_tracker* @_get_st_from_smid(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @_base_get_msix_index(%struct.MPT3SAS_ADAPTER*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
