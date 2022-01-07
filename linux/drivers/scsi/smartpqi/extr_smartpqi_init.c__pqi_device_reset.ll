; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c__pqi_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c__pqi_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_scsi_dev = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@PQI_LUN_RESET_RETRIES = common dso_local global i32 0, align 4
@PQI_LUN_RESET_RETRY_INTERVAL_MSECS = common dso_local global i32 0, align 4
@PQI_LUN_RESET_PENDING_IO_TIMEOUT_SECS = common dso_local global i64 0, align 8
@NO_TIMEOUT = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @_pqi_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pqi_device_reset(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %10 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %11 = call i32 @pqi_lun_reset(%struct.pqi_ctrl_info* %9, %struct.pqi_scsi_dev* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @PQI_LUN_RESET_RETRIES, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %8
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @PQI_LUN_RESET_RETRY_INTERVAL_MSECS, align 4
  %24 = call i32 @msleep(i32 %23)
  br label %8

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @PQI_LUN_RESET_PENDING_IO_TIMEOUT_SECS, align 8
  br label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @NO_TIMEOUT, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* %7, align 8
  %34 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %35 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @pqi_device_wait_for_pending_io(%struct.pqi_ctrl_info* %34, %struct.pqi_scsi_dev* %35, i64 %36)
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @SUCCESS, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @FAILED, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  ret i32 %47
}

declare dso_local i32 @pqi_lun_reset(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pqi_device_wait_for_pending_io(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
