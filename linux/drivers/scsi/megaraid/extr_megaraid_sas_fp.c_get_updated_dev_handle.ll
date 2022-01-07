; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_get_updated_dev_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_get_updated_dev_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32 }
%struct.LD_LOAD_BALANCE_INFO = type { i32* }
%struct.IO_REQUEST_INFO = type { i32 }
%struct.MR_DRV_RAID_MAP_ALL = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_updated_dev_handle(%struct.megasas_instance* %0, %struct.LD_LOAD_BALANCE_INFO* %1, %struct.IO_REQUEST_INFO* %2, %struct.MR_DRV_RAID_MAP_ALL* %3) #0 {
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca %struct.LD_LOAD_BALANCE_INFO*, align 8
  %7 = alloca %struct.IO_REQUEST_INFO*, align 8
  %8 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %5, align 8
  store %struct.LD_LOAD_BALANCE_INFO* %1, %struct.LD_LOAD_BALANCE_INFO** %6, align 8
  store %struct.IO_REQUEST_INFO* %2, %struct.IO_REQUEST_INFO** %7, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %3, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %12 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %6, align 8
  %13 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %14 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %15 = call i64 @megasas_get_best_arm_pd(%struct.megasas_instance* %11, %struct.LD_LOAD_BALANCE_INFO* %12, %struct.IO_REQUEST_INFO* %13, %struct.MR_DRV_RAID_MAP_ALL* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %18 = call i32 @MR_PdDevHandleGet(i64 %16, %struct.MR_DRV_RAID_MAP_ALL* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %8, align 8
  %21 = call i32 @MR_PdInterfaceTypeGet(i64 %19, %struct.MR_DRV_RAID_MAP_ALL* %20)
  %22 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %7, align 8
  %23 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %6, align 8
  %25 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @atomic_inc(i32* %28)
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local i64 @megasas_get_best_arm_pd(%struct.megasas_instance*, %struct.LD_LOAD_BALANCE_INFO*, %struct.IO_REQUEST_INFO*, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_PdDevHandleGet(i64, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @MR_PdInterfaceTypeGet(i64, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
