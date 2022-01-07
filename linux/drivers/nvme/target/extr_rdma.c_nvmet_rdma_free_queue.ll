; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_free_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_queue = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"freeing queue %d\0A\00", align 1
@nvmet_rdma_queue_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_rdma_queue*)* @nvmet_rdma_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_rdma_free_queue(%struct.nvmet_rdma_queue* %0) #0 {
  %2 = alloca %struct.nvmet_rdma_queue*, align 8
  store %struct.nvmet_rdma_queue* %0, %struct.nvmet_rdma_queue** %2, align 8
  %3 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %4 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %8 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %7, i32 0, i32 5
  %9 = call i32 @nvmet_sq_destroy(i32* %8)
  %10 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %11 = call i32 @nvmet_rdma_destroy_queue_ib(%struct.nvmet_rdma_queue* %10)
  %12 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %13 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %1
  %19 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %20 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %23 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %26 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %29 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @nvmet_rdma_free_cmds(%struct.TYPE_2__* %21, i32 %24, i32 %27, i32 %33)
  br label %35

35:                                               ; preds = %18, %1
  %36 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %37 = call i32 @nvmet_rdma_free_rsps(%struct.nvmet_rdma_queue* %36)
  %38 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %39 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ida_simple_remove(i32* @nvmet_rdma_queue_ida, i32 %40)
  %42 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %2, align 8
  %43 = call i32 @kfree(%struct.nvmet_rdma_queue* %42)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @nvmet_sq_destroy(i32*) #1

declare dso_local i32 @nvmet_rdma_destroy_queue_ib(%struct.nvmet_rdma_queue*) #1

declare dso_local i32 @nvmet_rdma_free_cmds(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @nvmet_rdma_free_rsps(%struct.nvmet_rdma_queue*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nvmet_rdma_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
