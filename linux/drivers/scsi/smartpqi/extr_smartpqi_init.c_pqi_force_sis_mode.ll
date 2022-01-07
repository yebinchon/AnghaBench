; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_force_sis_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_force_sis_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SIS_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_force_sis_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_force_sis_mode(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %4 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %5 = call i32 @sis_is_firmware_running(%struct.pqi_ctrl_info* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENXIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %12 = call i64 @pqi_get_ctrl_mode(%struct.pqi_ctrl_info* %11)
  %13 = load i64, i64* @SIS_MODE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %27

16:                                               ; preds = %10
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %18 = call i64 @sis_is_kernel_up(%struct.pqi_ctrl_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %22 = load i64, i64* @SIS_MODE, align 8
  %23 = call i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info* %21, i64 %22)
  store i32 0, i32* %2, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %26 = call i32 @pqi_revert_to_sis_mode(%struct.pqi_ctrl_info* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %20, %15, %7
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @sis_is_firmware_running(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_get_ctrl_mode(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @sis_is_kernel_up(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info*, i64) #1

declare dso_local i32 @pqi_revert_to_sis_mode(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
