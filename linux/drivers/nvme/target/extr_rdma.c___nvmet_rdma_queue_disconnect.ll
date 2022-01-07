; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c___nvmet_rdma_queue_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c___nvmet_rdma_queue_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_queue = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"cm_id= %p queue->state= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_rdma_queue*)* @__nvmet_rdma_queue_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvmet_rdma_queue_disconnect(%struct.nvmet_rdma_queue* %0) #0 {
  %2 = alloca %struct.nvmet_rdma_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.nvmet_rdma_queue* %0, %struct.nvmet_rdma_queue** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %6 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %9 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %13 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %12, i32 0, i32 3
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %17 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %23 [
    i32 130, label %19
    i32 128, label %19
    i32 129, label %22
  ]

19:                                               ; preds = %1, %1
  %20 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %21 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %20, i32 0, i32 0
  store i32 129, i32* %21, align 4
  store i32 1, i32* %3, align 4
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %1, %22, %19
  %24 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %25 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %24, i32 0, i32 3
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %32 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rdma_disconnect(i32 %33)
  %35 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %36 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %35, i32 0, i32 1
  %37 = call i32 @schedule_work(i32* %36)
  br label %38

38:                                               ; preds = %30, %23
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
