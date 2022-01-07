; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_config.c_mpt3sas_config_set_iounit_pg1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_config.c_mpt3sas_config_set_iounit_pg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 (%struct.MPT3SAS_ADAPTER*, i32*)* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_IO_UNIT = common dso_local global i32 0, align 4
@MPI2_IOUNITPAGE1_PAGEVERSION = common dso_local global i32 0, align 4
@MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_WRITE_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt3sas_config_set_iounit_pg1(%struct.MPT3SAS_ADAPTER* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 24)
  %10 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @MPI2_CONFIG_PAGETYPE_IO_UNIT, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @MPI2_IOUNITPAGE1_PAGEVERSION, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %23 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %22, i32 0, i32 0
  %24 = load i32 (%struct.MPT3SAS_ADAPTER*, i32*)*, i32 (%struct.MPT3SAS_ADAPTER*, i32*)** %23, align 8
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %27 = call i32 %24(%struct.MPT3SAS_ADAPTER* %25, i32* %26)
  %28 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %31 = call i32 @_config_request(%struct.MPT3SAS_ADAPTER* %28, %struct.TYPE_6__* %7, i32* %29, i32 %30, i32* null, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %43

35:                                               ; preds = %3
  %36 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_WRITE_CURRENT, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @_config_request(%struct.MPT3SAS_ADAPTER* %38, %struct.TYPE_6__* %7, i32* %39, i32 %40, i32* %41, i32 4)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %35, %34
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @_config_request(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_6__*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
