; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_wr_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_wr_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { %struct.nvme_rdma_queue* }
%struct.nvme_rdma_queue = type { %struct.nvme_rdma_ctrl* }
%struct.nvme_rdma_ctrl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_wc = type { i32, i32 }

@NVME_CTRL_LIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"%s for CQE 0x%p failed with status %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.ib_wc*, i8*)* @nvme_rdma_wr_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_rdma_wr_error(%struct.ib_cq* %0, %struct.ib_wc* %1, i8* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca %struct.ib_wc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nvme_rdma_queue*, align 8
  %8 = alloca %struct.nvme_rdma_ctrl*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %10 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %9, i32 0, i32 0
  %11 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %10, align 8
  store %struct.nvme_rdma_queue* %11, %struct.nvme_rdma_queue** %7, align 8
  %12 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %13 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %12, i32 0, i32 0
  %14 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %13, align 8
  store %struct.nvme_rdma_ctrl* %14, %struct.nvme_rdma_ctrl** %8, align 8
  %15 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %16 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NVME_CTRL_LIVE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %23 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %31 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ib_wc_status_msg(i32 %32)
  %34 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %35 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_info(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %29, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %21, %3
  %39 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %8, align 8
  %40 = call i32 @nvme_rdma_error_recovery(%struct.nvme_rdma_ctrl* %39)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ib_wc_status_msg(i32) #1

declare dso_local i32 @nvme_rdma_error_recovery(%struct.nvme_rdma_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
