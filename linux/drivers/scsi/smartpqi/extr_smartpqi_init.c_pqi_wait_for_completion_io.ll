; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_wait_for_completion_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_wait_for_completion_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.completion = type { i32 }

@PQI_WAIT_FOR_COMPLETION_IO_TIMEOUT_SECS = common dso_local global i32 0, align 4
@PQI_HZ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.completion*)* @pqi_wait_for_completion_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_wait_for_completion_io(%struct.pqi_ctrl_info* %0, %struct.completion* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.completion*, align 8
  %5 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.completion* %1, %struct.completion** %4, align 8
  br label %6

6:                                                ; preds = %2, %23
  %7 = load %struct.completion*, %struct.completion** %4, align 8
  %8 = load i32, i32* @PQI_WAIT_FOR_COMPLETION_IO_TIMEOUT_SECS, align 4
  %9 = load i32, i32* @PQI_HZ, align 4
  %10 = mul nsw i32 %8, %9
  %11 = call i64 @wait_for_completion_io_timeout(%struct.completion* %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %24

14:                                               ; preds = %6
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %16 = call i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info* %15)
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %18 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %24

23:                                               ; preds = %14
  br label %6

24:                                               ; preds = %20, %13
  %25 = load i32, i32* %5, align 4
  ret i32 %25
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
