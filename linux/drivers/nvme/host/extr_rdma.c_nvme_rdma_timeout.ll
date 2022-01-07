; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.nvme_rdma_request = type { %struct.nvme_rdma_queue* }
%struct.nvme_rdma_queue = type { %struct.nvme_rdma_ctrl* }
%struct.nvme_rdma_ctrl = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"I/O %d QID %d timeout\0A\00", align 1
@NVME_CTRL_RESETTING = common dso_local global i64 0, align 8
@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@NVME_CTRL_LIVE = common dso_local global i64 0, align 8
@BLK_EH_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"starting error recovery\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i32)* @nvme_rdma_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_timeout(%struct.request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_rdma_request*, align 8
  %7 = alloca %struct.nvme_rdma_queue*, align 8
  %8 = alloca %struct.nvme_rdma_ctrl*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = call %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request* %9)
  store %struct.nvme_rdma_request* %10, %struct.nvme_rdma_request** %6, align 8
  %11 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %6, align 8
  %12 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %11, i32 0, i32 0
  %13 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %12, align 8
  store %struct.nvme_rdma_queue* %13, %struct.nvme_rdma_queue** %7, align 8
  %14 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %15 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %14, i32 0, i32 0
  %16 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %15, align 8
  store %struct.nvme_rdma_ctrl* %16, %struct.nvme_rdma_ctrl** %8, align 8
  %17 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %18 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %25 = call i32 @nvme_rdma_queue_idx(%struct.nvme_rdma_queue* %24)
  %26 = call i32 (i32, i8*, ...) @dev_warn(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  %27 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %28 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NVME_CTRL_RESETTING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %34, i32* %3, align 4
  br label %60

35:                                               ; preds = %2
  %36 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %37 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NVME_CTRL_LIVE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %44 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %43, i32 0, i32 1
  %45 = call i32 @flush_work(i32* %44)
  %46 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %47 = call i32 @nvme_rdma_teardown_io_queues(%struct.nvme_rdma_ctrl* %46, i32 0)
  %48 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %49 = call i32 @nvme_rdma_teardown_admin_queue(%struct.nvme_rdma_ctrl* %48, i32 0)
  %50 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %50, i32* %3, align 4
  br label %60

51:                                               ; preds = %35
  %52 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %53 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @dev_warn(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %58 = call i32 @nvme_rdma_error_recovery(%struct.nvme_rdma_ctrl* %57)
  %59 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %42, %33
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @nvme_rdma_queue_idx(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @nvme_rdma_teardown_io_queues(%struct.nvme_rdma_ctrl*, i32) #1

declare dso_local i32 @nvme_rdma_teardown_admin_queue(%struct.nvme_rdma_ctrl*, i32) #1

declare dso_local i32 @nvme_rdma_error_recovery(%struct.nvme_rdma_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
