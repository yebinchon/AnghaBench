; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_device_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_device_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, {}*, %struct.scsi_device* }
%struct.scsi_device = type { %struct.visordisk_info* }
%struct.visordisk_info = type { i32, i32 }

@VISORHBA_ERROR_COUNT = common dso_local global i64 0, align 8
@IOS_ERROR_THRESHOLD = common dso_local global i32 0, align 4
@TASK_MGMT_LUN_RESET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @visorhba_device_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorhba_device_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.visordisk_info*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 2
  %8 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  store %struct.scsi_device* %8, %struct.scsi_device** %3, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 0
  %11 = load %struct.visordisk_info*, %struct.visordisk_info** %10, align 8
  store %struct.visordisk_info* %11, %struct.visordisk_info** %4, align 8
  %12 = load %struct.visordisk_info*, %struct.visordisk_info** %4, align 8
  %13 = getelementptr inbounds %struct.visordisk_info, %struct.visordisk_info* %12, i32 0, i32 1
  %14 = call i64 @atomic_read(i32* %13)
  %15 = load i64, i64* @VISORHBA_ERROR_COUNT, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.visordisk_info*, %struct.visordisk_info** %4, align 8
  %19 = getelementptr inbounds %struct.visordisk_info, %struct.visordisk_info* %18, i32 0, i32 1
  %20 = call i32 @atomic_inc(i32* %19)
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.visordisk_info*, %struct.visordisk_info** %4, align 8
  %23 = getelementptr inbounds %struct.visordisk_info, %struct.visordisk_info* %22, i32 0, i32 0
  %24 = load i32, i32* @IOS_ERROR_THRESHOLD, align 4
  %25 = call i32 @atomic_set(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* @TASK_MGMT_LUN_RESET, align 4
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = call i32 @forward_taskmgmt_command(i32 %27, %struct.scsi_device* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i32, i32* @DID_RESET, align 4
  %35 = shl i32 %34, 16
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 1
  %40 = bitcast {}** %39 to i32 (%struct.scsi_cmnd*)**
  %41 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %40, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %43 = call i32 %41(%struct.scsi_cmnd* %42)
  br label %44

44:                                               ; preds = %33, %26
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @forward_taskmgmt_command(i32, %struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
