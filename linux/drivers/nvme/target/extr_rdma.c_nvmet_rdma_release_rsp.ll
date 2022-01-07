; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_release_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_release_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_rsp = type { %struct.TYPE_7__, %struct.TYPE_6__*, i32, i64, %struct.nvmet_rdma_queue* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.nvmet_rdma_queue = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_rdma_rsp*)* @nvmet_rdma_release_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_rdma_release_rsp(%struct.nvmet_rdma_rsp* %0) #0 {
  %2 = alloca %struct.nvmet_rdma_rsp*, align 8
  %3 = alloca %struct.nvmet_rdma_queue*, align 8
  store %struct.nvmet_rdma_rsp* %0, %struct.nvmet_rdma_rsp** %2, align 8
  %4 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %5 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %4, i32 0, i32 4
  %6 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  store %struct.nvmet_rdma_queue* %6, %struct.nvmet_rdma_queue** %3, align 8
  %7 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %8 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 1, %9
  %11 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %12 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %11, i32 0, i32 2
  %13 = call i32 @atomic_add(i64 %10, i32* %12)
  %14 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %15 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %20 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %19, i32 0, i32 2
  %21 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %22 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %27 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %32 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %36 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %40 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %39, i32 0, i32 0
  %41 = call i32 @nvmet_data_dir(%struct.TYPE_7__* %40)
  %42 = call i32 @rdma_rw_ctx_destroy(i32* %20, i32 %25, i32 %30, i64 %34, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %18, %1
  %44 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %45 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %49 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %47, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %56 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %55, i32 0, i32 0
  %57 = call i32 @nvmet_req_free_sgl(%struct.TYPE_7__* %56)
  br label %58

58:                                               ; preds = %54, %43
  %59 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %60 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %59, i32 0, i32 0
  %61 = call i32 @list_empty_careful(i32* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %3, align 8
  %69 = call i32 @nvmet_rdma_process_wr_wait_list(%struct.nvmet_rdma_queue* %68)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %2, align 8
  %72 = call i32 @nvmet_rdma_put_rsp(%struct.nvmet_rdma_rsp* %71)
  ret void
}

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @rdma_rw_ctx_destroy(i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @nvmet_data_dir(%struct.TYPE_7__*) #1

declare dso_local i32 @nvmet_req_free_sgl(%struct.TYPE_7__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty_careful(i32*) #1

declare dso_local i32 @nvmet_rdma_process_wr_wait_list(%struct.nvmet_rdma_queue*) #1

declare dso_local i32 @nvmet_rdma_put_rsp(%struct.nvmet_rdma_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
