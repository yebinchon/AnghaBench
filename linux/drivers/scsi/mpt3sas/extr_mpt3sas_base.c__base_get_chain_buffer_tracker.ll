; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_get_chain_buffer_tracker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_get_chain_buffer_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chain_tracker = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.chain_tracker* }
%struct.scsi_cmnd = type { i32 }
%struct.scsiio_tracker = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.chain_tracker* (%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*)* @_base_get_chain_buffer_tracker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.chain_tracker* @_base_get_chain_buffer_tracker(%struct.MPT3SAS_ADAPTER* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.chain_tracker*, align 8
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.chain_tracker*, align 8
  %7 = alloca %struct.scsiio_tracker*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = call %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd* %10)
  store %struct.scsiio_tracker* %11, %struct.scsiio_tracker** %7, align 8
  %12 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %7, align 8
  %13 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %16 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @atomic_read(i32* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %26 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store %struct.chain_tracker* null, %struct.chain_tracker** %3, align 8
  br label %52

30:                                               ; preds = %2
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %32 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.chain_tracker*, %struct.chain_tracker** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.chain_tracker, %struct.chain_tracker* %39, i64 %40
  store %struct.chain_tracker* %41, %struct.chain_tracker** %6, align 8
  %42 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %43 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @atomic_inc(i32* %49)
  %51 = load %struct.chain_tracker*, %struct.chain_tracker** %6, align 8
  store %struct.chain_tracker* %51, %struct.chain_tracker** %3, align 8
  br label %52

52:                                               ; preds = %30, %29
  %53 = load %struct.chain_tracker*, %struct.chain_tracker** %3, align 8
  ret %struct.chain_tracker* %53
}

declare dso_local %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
