; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_build_zero_len_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_build_zero_len_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 (i8*, i32, i32)* }

@MPI2_SGE_FLAGS_LAST_ELEMENT = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_END_OF_BUFFER = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i8*)* @_base_build_zero_len_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_base_build_zero_len_sge(%struct.MPT3SAS_ADAPTER* %0, i8* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @MPI2_SGE_FLAGS_LAST_ELEMENT, align 4
  %7 = load i32, i32* @MPI2_SGE_FLAGS_END_OF_BUFFER, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MPI2_SGE_FLAGS_END_OF_LIST, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MPI2_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MPI2_SGE_FLAGS_SHIFT, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %16 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %15, i32 0, i32 0
  %17 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 %17(i8* %18, i32 %19, i32 -1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
