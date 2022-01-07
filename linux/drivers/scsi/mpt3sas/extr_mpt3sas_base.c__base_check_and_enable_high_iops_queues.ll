; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_check_and_enable_high_iops_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_check_and_enable_high_iops_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i64, i64, i32 }

@perf_mode = common dso_local global i64 0, align 8
@MPT_PERF_MODE_IOPS = common dso_local global i64 0, align 8
@MPT_PERF_MODE_LATENCY = common dso_local global i64 0, align 8
@MPT_PERF_MODE_DEFAULT = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_CLS = common dso_local global i32 0, align 4
@reset_devices = common dso_local global i32 0, align 4
@MPT3SAS_GEN35_MAX_MSIX_QUEUES = common dso_local global i32 0, align 4
@MPT3SAS_HIGH_IOPS_REPLY_QUEUES = common dso_local global i64 0, align 8
@max_msix_vectors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i32)* @_base_check_and_enable_high_iops_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_base_check_and_enable_high_iops_queues(%struct.MPT3SAS_ADAPTER* %0, i32 %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @perf_mode, align 8
  %8 = load i64, i64* @MPT_PERF_MODE_IOPS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @perf_mode, align 8
  %12 = load i64, i64* @MPT_PERF_MODE_LATENCY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %16 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %62

17:                                               ; preds = %10
  %18 = load i64, i64* @perf_mode, align 8
  %19 = load i64, i64* @MPT_PERF_MODE_DEFAULT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %23 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %26 = call i32 @pcie_capability_read_word(i32 %24, i32 %25, i32* %5)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PCI_EXP_LNKSTA_CLS, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %34 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %62

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* @reset_devices, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %41 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MPT3SAS_GEN35_MAX_MSIX_QUEUES, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = call i64 (...) @num_online_cpus()
  %50 = load i64, i64* @MPT3SAS_HIGH_IOPS_REPLY_QUEUES, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @max_msix_vectors, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* @MPT3SAS_HIGH_IOPS_REPLY_QUEUES, align 8
  %57 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %58 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %62

59:                                               ; preds = %52, %48, %44, %39, %36
  %60 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %61 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %14, %32, %59, %55
  ret void
}

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i64 @num_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
