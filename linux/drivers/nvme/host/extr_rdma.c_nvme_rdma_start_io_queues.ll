; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_start_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_start_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_ctrl = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_ctrl*)* @nvme_rdma_start_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_start_io_queues(%struct.nvme_rdma_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_rdma_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvme_rdma_ctrl* %0, %struct.nvme_rdma_ctrl** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @nvme_rdma_start_queue(%struct.nvme_rdma_ctrl* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %6

24:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %44

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %39, %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @nvme_rdma_stop_queue(i32* %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %24
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @nvme_rdma_start_queue(%struct.nvme_rdma_ctrl*, i32) #1

declare dso_local i32 @nvme_rdma_stop_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
