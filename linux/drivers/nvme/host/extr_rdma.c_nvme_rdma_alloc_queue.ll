; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_ctrl = type { %struct.TYPE_4__, i32, i32, %struct.nvme_rdma_queue* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_rdma_queue = type { i32, i64, i32, i32, i32, i32, %struct.nvme_rdma_ctrl* }
%struct.sockaddr = type { i32 }

@init_net = common dso_local global i32 0, align 4
@nvme_rdma_cm_handler = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create CM ID: %ld\0A\00", align 1
@NVMF_OPT_HOST_TRADDR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@NVME_RDMA_CONNECT_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"rdma_resolve_addr failed (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"rdma connection establishment failed (%d)\0A\00", align 1
@NVME_RDMA_Q_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_ctrl*, i32, i64)* @nvme_rdma_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_alloc_queue(%struct.nvme_rdma_ctrl* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_rdma_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvme_rdma_queue*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  store %struct.nvme_rdma_ctrl* %0, %struct.nvme_rdma_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %9, align 8
  %11 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %11, i32 0, i32 3
  %13 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %13, i64 %15
  store %struct.nvme_rdma_queue* %16, %struct.nvme_rdma_queue** %8, align 8
  %17 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %5, align 8
  %18 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %19 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %18, i32 0, i32 6
  store %struct.nvme_rdma_ctrl* %17, %struct.nvme_rdma_ctrl** %19, align 8
  %20 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %21 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %20, i32 0, i32 5
  %22 = call i32 @init_completion(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %5, align 8
  %27 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %29, 16
  %31 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %32 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %36

33:                                               ; preds = %3
  %34 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %35 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %34, i32 0, i32 0
  store i32 4, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %39 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @nvme_rdma_cm_handler, align 4
  %41 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %42 = load i32, i32* @RDMA_PS_TCP, align 4
  %43 = load i32, i32* @IB_QPT_RC, align 4
  %44 = call i32 @rdma_create_id(i32* @init_net, i32 %40, %struct.nvme_rdma_queue* %41, i32 %42, i32 %43)
  %45 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %46 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %48 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %36
  %53 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %5, align 8
  %54 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %58 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  %61 = call i32 @dev_info(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %63 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %4, align 4
  br label %128

66:                                               ; preds = %36
  %67 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %5, align 8
  %68 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NVMF_OPT_HOST_TRADDR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %5, align 8
  %78 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %77, i32 0, i32 2
  %79 = bitcast i32* %78 to %struct.sockaddr*
  store %struct.sockaddr* %79, %struct.sockaddr** %9, align 8
  br label %80

80:                                               ; preds = %76, %66
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  %83 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %84 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %86 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %89 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %5, align 8
  %90 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %89, i32 0, i32 1
  %91 = bitcast i32* %90 to %struct.sockaddr*
  %92 = load i32, i32* @NVME_RDMA_CONNECT_TIMEOUT_MS, align 4
  %93 = call i32 @rdma_resolve_addr(i32 %87, %struct.sockaddr* %88, %struct.sockaddr* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %80
  %97 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %5, align 8
  %98 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @dev_info(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %120

103:                                              ; preds = %80
  %104 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %105 = call i32 @nvme_rdma_wait_for_cm(%struct.nvme_rdma_queue* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %5, align 8
  %110 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @dev_info(i32 %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %120

115:                                              ; preds = %103
  %116 = load i32, i32* @NVME_RDMA_Q_ALLOCATED, align 4
  %117 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %118 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %117, i32 0, i32 3
  %119 = call i32 @set_bit(i32 %116, i32* %118)
  store i32 0, i32* %4, align 4
  br label %128

120:                                              ; preds = %108, %96
  %121 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %122 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @rdma_destroy_id(i32 %123)
  %125 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %8, align 8
  %126 = call i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue* %125)
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %120, %115, %52
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @rdma_create_id(i32*, i32, %struct.nvme_rdma_queue*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @rdma_resolve_addr(i32, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @nvme_rdma_wait_for_cm(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rdma_destroy_id(i32) #1

declare dso_local i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
