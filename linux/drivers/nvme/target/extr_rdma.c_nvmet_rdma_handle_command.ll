; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_handle_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_queue = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.nvmet_rdma_rsp = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@nvmet_rdma_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_rdma_queue*, %struct.nvmet_rdma_rsp*)* @nvmet_rdma_handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_rdma_handle_command(%struct.nvmet_rdma_queue* %0, %struct.nvmet_rdma_rsp* %1) #0 {
  %3 = alloca %struct.nvmet_rdma_queue*, align 8
  %4 = alloca %struct.nvmet_rdma_rsp*, align 8
  %5 = alloca i64, align 8
  store %struct.nvmet_rdma_queue* %0, %struct.nvmet_rdma_queue** %3, align 8
  store %struct.nvmet_rdma_rsp* %1, %struct.nvmet_rdma_rsp** %4, align 8
  %6 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %7 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %6, i32 0, i32 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %4, align 8
  %12 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %4, align 8
  %20 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @ib_dma_sync_single_for_cpu(i32 %10, i32 %18, i32 %26, i32 %27)
  %29 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %30 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %29, i32 0, i32 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %4, align 8
  %35 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %4, align 8
  %39 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @ib_dma_sync_single_for_cpu(i32 %33, i32 %37, i32 %41, i32 %42)
  %44 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %4, align 8
  %45 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %44, i32 0, i32 0
  %46 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %47 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %46, i32 0, i32 3
  %48 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %49 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %48, i32 0, i32 2
  %50 = call i32 @nvmet_req_init(i32* %45, i32* %47, i32* %49, i32* @nvmet_rdma_ops)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %2
  br label %85

53:                                               ; preds = %2
  %54 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %4, align 8
  %55 = call i64 @nvmet_rdma_map_sgl(%struct.nvmet_rdma_rsp* %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %80

59:                                               ; preds = %53
  %60 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %4, align 8
  %61 = call i32 @nvmet_rdma_execute_command(%struct.nvmet_rdma_rsp* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %59
  %68 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %69 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %68, i32 0, i32 0
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %4, align 8
  %72 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %71, i32 0, i32 1
  %73 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %74 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %73, i32 0, i32 1
  %75 = call i32 @list_add_tail(i32* %72, i32* %74)
  %76 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %77 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock(i32* %77)
  br label %79

79:                                               ; preds = %67, %59
  br label %85

80:                                               ; preds = %58
  %81 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %4, align 8
  %82 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %81, i32 0, i32 0
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @nvmet_req_complete(i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %80, %79, %52
  ret void
}

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @nvmet_req_init(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @nvmet_rdma_map_sgl(%struct.nvmet_rdma_rsp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvmet_rdma_execute_command(%struct.nvmet_rdma_rsp*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nvmet_req_complete(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
