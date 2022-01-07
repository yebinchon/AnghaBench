; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_retry_raid_bypass_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_retry_raid_bypass_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_io_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_retry_raid_bypass_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_retry_raid_bypass_requests(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_io_request*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %6 = call i32 @pqi_ctrl_busy(%struct.pqi_ctrl_info* %5)
  br label %7

7:                                                ; preds = %1, %29
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %9 = call i64 @pqi_ctrl_blocked(%struct.pqi_ctrl_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %30

12:                                               ; preds = %7
  %13 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %14 = call %struct.pqi_io_request* @pqi_next_queued_raid_bypass_request(%struct.pqi_ctrl_info* %13)
  store %struct.pqi_io_request* %14, %struct.pqi_io_request** %4, align 8
  %15 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %16 = icmp ne %struct.pqi_io_request* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %30

18:                                               ; preds = %12
  %19 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %20 = call i32 @pqi_retry_raid_bypass(%struct.pqi_io_request* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %25 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %26 = call i32 @pqi_add_to_raid_bypass_retry_list(%struct.pqi_ctrl_info* %24, %struct.pqi_io_request* %25, i32 1)
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %28 = call i32 @pqi_schedule_bypass_retry(%struct.pqi_ctrl_info* %27)
  br label %30

29:                                               ; preds = %18
  br label %7

30:                                               ; preds = %23, %17, %11
  %31 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %32 = call i32 @pqi_ctrl_unbusy(%struct.pqi_ctrl_info* %31)
  ret void
}

declare dso_local i32 @pqi_ctrl_busy(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_blocked(%struct.pqi_ctrl_info*) #1

declare dso_local %struct.pqi_io_request* @pqi_next_queued_raid_bypass_request(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_retry_raid_bypass(%struct.pqi_io_request*) #1

declare dso_local i32 @pqi_add_to_raid_bypass_retry_list(%struct.pqi_ctrl_info*, %struct.pqi_io_request*, i32) #1

declare dso_local i32 @pqi_schedule_bypass_retry(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ctrl_unbusy(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
