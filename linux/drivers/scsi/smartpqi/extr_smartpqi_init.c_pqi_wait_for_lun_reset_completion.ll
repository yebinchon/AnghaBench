; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_wait_for_lun_reset_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_wait_for_lun_reset_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_scsi_dev = type { i32 }
%struct.completion = type { i32 }

@PQI_LUN_RESET_TIMEOUT_SECS = common dso_local global i32 0, align 4
@PQI_HZ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, %struct.completion*)* @pqi_wait_for_lun_reset_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_wait_for_lun_reset_completion(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1, %struct.completion* %2) #0 {
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca %struct.pqi_scsi_dev*, align 8
  %6 = alloca %struct.completion*, align 8
  %7 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %5, align 8
  store %struct.completion* %2, %struct.completion** %6, align 8
  br label %8

8:                                                ; preds = %3, %25
  %9 = load %struct.completion*, %struct.completion** %6, align 8
  %10 = load i32, i32* @PQI_LUN_RESET_TIMEOUT_SECS, align 4
  %11 = load i32, i32* @PQI_HZ, align 4
  %12 = mul nsw i32 %10, %11
  %13 = call i64 @wait_for_completion_io_timeout(%struct.completion* %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %26

16:                                               ; preds = %8
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %18 = call i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info* %17)
  %19 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %20 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %26

25:                                               ; preds = %16
  br label %8

26:                                               ; preds = %22, %15
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i64 @wait_for_completion_io_timeout(%struct.completion*, i32) #1

declare dso_local i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
