; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_queue_connect_fail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_queue_connect_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }
%struct.nvmet_rdma_queue = type { i64, i32, i32, i32 }

@NVMET_RDMA_Q_CONNECTING = common dso_local global i64 0, align 8
@nvmet_rdma_queue_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to connect queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*, %struct.nvmet_rdma_queue*)* @nvmet_rdma_queue_connect_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_rdma_queue_connect_fail(%struct.rdma_cm_id* %0, %struct.nvmet_rdma_queue* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.nvmet_rdma_queue*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.nvmet_rdma_queue* %1, %struct.nvmet_rdma_queue** %4, align 8
  %5 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %6 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NVMET_RDMA_Q_CONNECTING, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = call i32 @mutex_lock(i32* @nvmet_rdma_queue_mutex)
  %13 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %14 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %13, i32 0, i32 3
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %19 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %18, i32 0, i32 3
  %20 = call i32 @list_del_init(i32* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = call i32 @mutex_unlock(i32* @nvmet_rdma_queue_mutex)
  %23 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %24 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %28 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %27, i32 0, i32 1
  %29 = call i32 @schedule_work(i32* %28)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
