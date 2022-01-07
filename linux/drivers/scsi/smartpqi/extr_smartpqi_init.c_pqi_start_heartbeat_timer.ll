; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_start_heartbeat_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_start_heartbeat_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@PQI_HEARTBEAT_TIMER_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_start_heartbeat_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_start_heartbeat_timer(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %3 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %4 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %10 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %9, i32 0, i32 2
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %13 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %15 = call i32 @pqi_read_heartbeat_counter(%struct.pqi_ctrl_info* %14)
  %16 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %17 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @PQI_HEARTBEAT_TIMER_INTERVAL, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %22 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %25 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %24, i32 0, i32 0
  %26 = call i32 @add_timer(%struct.TYPE_2__* %25)
  br label %27

27:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pqi_read_heartbeat_counter(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
