; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_execute_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_execute_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_rsp = type { i32, i32, i32, i64, %struct.nvmet_rdma_queue* }
%struct.nvmet_rdma_queue = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"IB send queue full (needed %d): queue %u cntlid %u\0A\00", align 1
@NVME_SC_DATA_XFER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_rdma_rsp*)* @nvmet_rdma_execute_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_execute_command(%struct.nvmet_rdma_rsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_rdma_rsp*, align 8
  %4 = alloca %struct.nvmet_rdma_queue*, align 8
  store %struct.nvmet_rdma_rsp* %0, %struct.nvmet_rdma_rsp** %3, align 8
  %5 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %3, align 8
  %6 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %5, i32 0, i32 4
  %7 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %6, align 8
  store %struct.nvmet_rdma_queue* %7, %struct.nvmet_rdma_queue** %4, align 8
  %8 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %3, align 8
  %9 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 1, %10
  %12 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %13 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %12, i32 0, i32 1
  %14 = call i64 @atomic_sub_return(i64 %11, i32* %13)
  %15 = icmp slt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %3, align 8
  %21 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 1, %22
  %24 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %25 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %28 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %26, i32 %32)
  %34 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %3, align 8
  %35 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 1, %36
  %38 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %39 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %38, i32 0, i32 1
  %40 = call i32 @atomic_add(i64 %37, i32* %39)
  store i32 0, i32* %2, align 4
  br label %73

41:                                               ; preds = %1
  %42 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %3, align 8
  %43 = call i64 @nvmet_rdma_need_data_in(%struct.nvmet_rdma_rsp* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %3, align 8
  %47 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %46, i32 0, i32 2
  %48 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %49 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %4, align 8
  %54 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %3, align 8
  %59 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %58, i32 0, i32 1
  %60 = call i64 @rdma_rw_ctx_post(i32* %47, i32 %52, i32 %57, i32* %59, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %45
  %63 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %3, align 8
  %64 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %63, i32 0, i32 0
  %65 = load i32, i32* @NVME_SC_DATA_XFER_ERROR, align 4
  %66 = call i32 @nvmet_req_complete(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %45
  br label %72

68:                                               ; preds = %41
  %69 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %3, align 8
  %70 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %69, i32 0, i32 0
  %71 = call i32 @nvmet_req_execute(i32* %70)
  br label %72

72:                                               ; preds = %68, %67
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %19
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_sub_return(i64, i32*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i64 @nvmet_rdma_need_data_in(%struct.nvmet_rdma_rsp*) #1

declare dso_local i64 @rdma_rw_ctx_post(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @nvmet_req_complete(i32*, i32) #1

declare dso_local i32 @nvmet_req_execute(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
