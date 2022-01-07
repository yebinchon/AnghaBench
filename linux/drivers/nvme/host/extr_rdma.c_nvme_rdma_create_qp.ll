; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_create_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { i32, %struct.TYPE_4__*, i32, i32, %struct.nvme_rdma_device* }
%struct.TYPE_4__ = type { i32 }
%struct.nvme_rdma_device = type { i32, i64 }
%struct.ib_qp_init_attr = type { i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@nvme_rdma_qp_event = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*, i32)* @nvme_rdma_create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_create_qp(%struct.nvme_rdma_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_rdma_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_rdma_device*, align 8
  %6 = alloca %struct.ib_qp_init_attr, align 8
  %7 = alloca i32, align 4
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %8, i32 0, i32 4
  %10 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %9, align 8
  store %struct.nvme_rdma_device* %10, %struct.nvme_rdma_device** %5, align 8
  %11 = call i32 @memset(%struct.ib_qp_init_attr* %6, i32 0, i32 48)
  %12 = load i32, i32* @nvme_rdma_qp_event, align 4
  %13 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 5
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %5, align 8
  %31 = getelementptr inbounds %struct.nvme_rdma_device, %struct.nvme_rdma_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 1, %32
  %34 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %37 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @IB_QPT_RC, align 4
  %39 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %49 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %5, align 8
  %52 = getelementptr inbounds %struct.nvme_rdma_device, %struct.nvme_rdma_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @rdma_create_qp(%struct.TYPE_4__* %50, i32 %53, %struct.ib_qp_init_attr* %6)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %61 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_4__*, i32, %struct.ib_qp_init_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
