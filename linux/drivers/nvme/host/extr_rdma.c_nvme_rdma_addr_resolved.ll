; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_addr_resolved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_addr_resolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvme_ctrl }
%struct.nvme_ctrl = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@NVME_RDMA_CONNECT_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"rdma_resolve_route failed (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*)* @nvme_rdma_addr_resolved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_addr_resolved(%struct.nvme_rdma_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_rdma_queue*, align 8
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %3, align 8
  %6 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.nvme_ctrl* %9, %struct.nvme_ctrl** %4, align 8
  %10 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %11 = call i32 @nvme_rdma_create_queue_ib(%struct.nvme_rdma_queue* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @rdma_set_service_type(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %23, %16
  %34 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NVME_RDMA_CONNECT_TIMEOUT_MS, align 4
  %38 = call i32 @rdma_resolve_route(i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %50

49:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %54

50:                                               ; preds = %41
  %51 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %52 = call i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %49, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @nvme_rdma_create_queue_ib(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @rdma_set_service_type(i32, i64) #1

declare dso_local i32 @rdma_resolve_route(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
