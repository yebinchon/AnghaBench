; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_get_msix_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_get_msix_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32*, i64, i32, i64 }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*)* @_base_get_msix_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_base_get_msix_index(%struct.MPT3SAS_ADAPTER* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %6 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %7 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %12 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %17 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %16, i32 0, i32 2
  %18 = call i32 @atomic64_add_return(i32 1, i32* %17)
  %19 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %20 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @base_mod64(i32 %18, i64 %21)
  br label %24

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ %22, %15 ], [ 0, %23 ]
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %28 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 (...) @raw_smp_processor_id()
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %24
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @base_mod64(i32, i64) #1

declare dso_local i32 @atomic64_add_return(i32, i32*) #1

declare dso_local i64 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
