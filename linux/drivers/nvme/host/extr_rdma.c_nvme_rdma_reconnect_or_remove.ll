; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_reconnect_or_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_reconnect_or_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_ctrl = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@NVME_CTRL_CONNECTING = common dso_local global i64 0, align 8
@NVME_CTRL_NEW = common dso_local global i64 0, align 8
@NVME_CTRL_LIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Reconnecting in %d seconds...\0A\00", align 1
@nvme_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_rdma_ctrl*)* @nvme_rdma_reconnect_or_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_rdma_reconnect_or_remove(%struct.nvme_rdma_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_rdma_ctrl*, align 8
  store %struct.nvme_rdma_ctrl* %0, %struct.nvme_rdma_ctrl** %2, align 8
  %3 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NVME_CTRL_CONNECTING, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NVME_CTRL_NEW, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %2, align 8
  %18 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NVME_CTRL_LIVE, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %16, %9
  %24 = phi i1 [ true, %9 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  br label %60

27:                                               ; preds = %1
  %28 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %2, align 8
  %29 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %28, i32 0, i32 0
  %30 = call i64 @nvmf_should_reconnect(%struct.TYPE_5__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %2, align 8
  %34 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %2, align 8
  %38 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_info(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @nvme_wq, align 4
  %45 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %2, align 8
  %46 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %45, i32 0, i32 1
  %47 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %2, align 8
  %48 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @queue_delayed_work(i32 %44, i32* %46, i32 %54)
  br label %60

56:                                               ; preds = %27
  %57 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %2, align 8
  %58 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %57, i32 0, i32 0
  %59 = call i32 @nvme_delete_ctrl(%struct.TYPE_5__* %58)
  br label %60

60:                                               ; preds = %23, %56, %32
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @nvmf_should_reconnect(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @nvme_delete_ctrl(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
