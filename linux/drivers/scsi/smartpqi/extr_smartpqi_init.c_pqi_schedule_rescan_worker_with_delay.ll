; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_schedule_rescan_worker_with_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_schedule_rescan_worker_with_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, i64)* @pqi_schedule_rescan_worker_with_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_schedule_rescan_worker_with_delay(%struct.pqi_ctrl_info* %0, i64 %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %6 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %19

9:                                                ; preds = %2
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %11 = call i64 @pqi_ctrl_in_ofa(%struct.pqi_ctrl_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %19

14:                                               ; preds = %9
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %16 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @schedule_delayed_work(i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %14, %13, %8
  ret void
}

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_in_ofa(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
