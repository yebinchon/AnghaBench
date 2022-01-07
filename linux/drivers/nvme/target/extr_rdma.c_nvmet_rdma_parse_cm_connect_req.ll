; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_parse_cm_connect_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_parse_cm_connect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_conn_param = type { i64, i64 }
%struct.nvmet_rdma_queue = type { i64, i64, i64 }
%struct.nvme_rdma_cm_req = type { i32, i32, i32, i32 }

@NVME_RDMA_CM_INVALID_LEN = common dso_local global i32 0, align 4
@NVME_RDMA_CM_FMT_1_0 = common dso_local global i64 0, align 8
@NVME_RDMA_CM_INVALID_RECFMT = common dso_local global i32 0, align 4
@NVME_AQ_DEPTH = common dso_local global i64 0, align 8
@NVME_RDMA_CM_INVALID_HSQSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_conn_param*, %struct.nvmet_rdma_queue*)* @nvmet_rdma_parse_cm_connect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_parse_cm_connect_req(%struct.rdma_conn_param* %0, %struct.nvmet_rdma_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_conn_param*, align 8
  %5 = alloca %struct.nvmet_rdma_queue*, align 8
  %6 = alloca %struct.nvme_rdma_cm_req*, align 8
  store %struct.rdma_conn_param* %0, %struct.rdma_conn_param** %4, align 8
  store %struct.nvmet_rdma_queue* %1, %struct.nvmet_rdma_queue** %5, align 8
  %7 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %8 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.nvme_rdma_cm_req*
  store %struct.nvme_rdma_cm_req* %10, %struct.nvme_rdma_cm_req** %6, align 8
  %11 = load %struct.nvme_rdma_cm_req*, %struct.nvme_rdma_cm_req** %6, align 8
  %12 = icmp ne %struct.nvme_rdma_cm_req* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %15 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @NVME_RDMA_CM_INVALID_LEN, align 4
  store i32 %19, i32* %3, align 4
  br label %62

20:                                               ; preds = %13
  %21 = load %struct.nvme_rdma_cm_req*, %struct.nvme_rdma_cm_req** %6, align 8
  %22 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le16_to_cpu(i32 %23)
  %25 = load i64, i64* @NVME_RDMA_CM_FMT_1_0, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @NVME_RDMA_CM_INVALID_RECFMT, align 4
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %20
  %30 = load %struct.nvme_rdma_cm_req*, %struct.nvme_rdma_cm_req** %6, align 8
  %31 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le16_to_cpu(i32 %32)
  %34 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %35 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.nvme_rdma_cm_req*, %struct.nvme_rdma_cm_req** %6, align 8
  %37 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le16_to_cpu(i32 %38)
  %40 = add nsw i64 %39, 1
  %41 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %42 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.nvme_rdma_cm_req*, %struct.nvme_rdma_cm_req** %6, align 8
  %44 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le16_to_cpu(i32 %45)
  %47 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %48 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %50 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %29
  %54 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %55 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NVME_AQ_DEPTH, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @NVME_RDMA_CM_INVALID_HSQSIZE, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %53, %29
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %27, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
