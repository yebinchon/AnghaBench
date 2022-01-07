; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_warpdrive.c_mpt3sas_get_num_volumes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_warpdrive.c_mpt3sas_get_num_volumes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_CONFIG_INVALID_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mpt3sas_get_num_volumes(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  store i64 0, i64* %6, align 8
  store i32 65535, i32* %5, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %10 = load i32, i32* @MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @mpt3sas_config_get_raid_volume_pg1(%struct.MPT3SAS_ADAPTER* %9, %struct.TYPE_6__* %4, %struct.TYPE_5__* %3, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  %19 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MPI2_IOCSTATUS_CONFIG_INVALID_PAGE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %31

25:                                               ; preds = %15
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %5, align 4
  br label %8

31:                                               ; preds = %24, %8
  %32 = load i64, i64* %6, align 8
  ret i64 %32
}

declare dso_local i32 @mpt3sas_config_get_raid_volume_pg1(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
