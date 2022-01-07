; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_queue_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_queue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_request = type { i32, %struct.nvme_tcp_queue* }
%struct.nvme_tcp_queue = type { i32, i32, i32, i32 }

@nvme_tcp_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_tcp_request*)* @nvme_tcp_queue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_queue_request(%struct.nvme_tcp_request* %0) #0 {
  %2 = alloca %struct.nvme_tcp_request*, align 8
  %3 = alloca %struct.nvme_tcp_queue*, align 8
  store %struct.nvme_tcp_request* %0, %struct.nvme_tcp_request** %2, align 8
  %4 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %4, i32 0, i32 1
  %6 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %5, align 8
  store %struct.nvme_tcp_queue* %6, %struct.nvme_tcp_queue** %3, align 8
  %7 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %7, i32 0, i32 2
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %10, i32 0, i32 0
  %12 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %12, i32 0, i32 3
  %14 = call i32 @list_add_tail(i32* %11, i32* %13)
  %15 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %15, i32 0, i32 2
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @nvme_tcp_wq, align 4
  %22 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %22, i32 0, i32 0
  %24 = call i32 @queue_work_on(i32 %20, i32 %21, i32* %23)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
