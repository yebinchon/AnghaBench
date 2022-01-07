; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_add_to_raid_bypass_retry_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_add_to_raid_bypass_retry_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32 }
%struct.pqi_io_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_io_request*, i32)* @pqi_add_to_raid_bypass_retry_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_add_to_raid_bypass_retry_list(%struct.pqi_ctrl_info* %0, %struct.pqi_io_request* %1, i32 %2) #0 {
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca %struct.pqi_io_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store %struct.pqi_io_request* %1, %struct.pqi_io_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %9 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.pqi_io_request*, %struct.pqi_io_request** %5, align 8
  %16 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %15, i32 0, i32 0
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %18 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %17, i32 0, i32 1
  %19 = call i32 @list_add(i32* %16, i32* %18)
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.pqi_io_request*, %struct.pqi_io_request** %5, align 8
  %22 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %21, i32 0, i32 0
  %23 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %24 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %23, i32 0, i32 1
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %28 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
