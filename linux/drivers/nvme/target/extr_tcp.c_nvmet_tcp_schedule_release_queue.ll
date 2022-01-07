; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_schedule_release_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_schedule_release_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i64, i32, i32 }

@NVMET_TCP_Q_DISCONNECTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_tcp_queue*)* @nvmet_tcp_schedule_release_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_tcp_schedule_release_queue(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca %struct.nvmet_tcp_queue*, align 8
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %2, align 8
  %3 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %4 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %3, i32 0, i32 1
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NVMET_TCP_Q_DISCONNECTING, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i64, i64* @NVMET_TCP_Q_DISCONNECTING, align 8
  %13 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %14 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %16 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %15, i32 0, i32 2
  %17 = call i32 @schedule_work(i32* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %2, align 8
  %20 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
