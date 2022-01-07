; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_start_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_start_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_ctrl = type { %struct.TYPE_3__, %struct.nvme_rdma_queue* }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_rdma_queue = type { i32 }

@NVME_RDMA_Q_LIVE = common dso_local global i32 0, align 4
@NVME_RDMA_Q_ALLOCATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to connect queue: %d ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_ctrl*, i32)* @nvme_rdma_start_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_start_queue(%struct.nvme_rdma_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_rdma_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_rdma_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvme_rdma_ctrl* %0, %struct.nvme_rdma_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %8, i32 0, i32 1
  %10 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %10, i64 %12
  store %struct.nvme_rdma_queue* %13, %struct.nvme_rdma_queue** %5, align 8
  %14 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %15 = call i32 @nvme_rdma_poll_queue(%struct.nvme_rdma_queue* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @nvmf_connect_io_queue(%struct.TYPE_3__* %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %25, i32 0, i32 0
  %27 = call i32 @nvmf_connect_admin_queue(%struct.TYPE_3__* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @NVME_RDMA_Q_LIVE, align 4
  %33 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %34 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  br label %53

36:                                               ; preds = %28
  %37 = load i32, i32* @NVME_RDMA_Q_ALLOCATED, align 4
  %38 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %39 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %44 = call i32 @__nvme_rdma_stop_queue(%struct.nvme_rdma_queue* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %47 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_info(i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %31
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @nvme_rdma_poll_queue(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @nvmf_connect_io_queue(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @nvmf_connect_admin_queue(%struct.TYPE_3__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__nvme_rdma_stop_queue(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
