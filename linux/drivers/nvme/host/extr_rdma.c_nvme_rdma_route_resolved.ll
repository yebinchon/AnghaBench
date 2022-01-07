; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_route_resolved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_route_resolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { i32, %struct.nvme_rdma_ctrl*, i64, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.nvme_rdma_ctrl = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, %struct.nvme_rdma_cm_req*, i32, i32 }
%struct.nvme_rdma_cm_req = type { i64, i8*, i8*, i8* }

@NVME_RDMA_CM_FMT_1_0 = common dso_local global i64 0, align 8
@NVME_AQ_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"rdma_connect failed (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*)* @nvme_rdma_route_resolved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_route_resolved(%struct.nvme_rdma_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_rdma_queue*, align 8
  %4 = alloca %struct.nvme_rdma_ctrl*, align 8
  %5 = alloca %struct.rdma_conn_param, align 8
  %6 = alloca %struct.nvme_rdma_cm_req, align 8
  %7 = alloca i32, align 4
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %3, align 8
  %8 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %8, i32 0, i32 1
  %10 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %9, align 8
  store %struct.nvme_rdma_ctrl* %10, %struct.nvme_rdma_ctrl** %4, align 8
  %11 = bitcast %struct.rdma_conn_param* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = bitcast %struct.nvme_rdma_cm_req* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %13, i32 0, i32 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 6
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 1
  store i32 7, i32* %29, align 4
  %30 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 2
  store i32 7, i32* %30, align 8
  %31 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 4
  store %struct.nvme_rdma_cm_req* %6, %struct.nvme_rdma_cm_req** %31, align 8
  %32 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 3
  store i32 32, i32* %32, align 4
  %33 = load i64, i64* @NVME_RDMA_CM_FMT_1_0, align 8
  %34 = call i8* @cpu_to_le16(i64 %33)
  %35 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %6, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %37 = call i64 @nvme_rdma_queue_idx(%struct.nvme_rdma_queue* %36)
  %38 = call i8* @cpu_to_le16(i64 %37)
  %39 = ptrtoint i8* %38 to i64
  %40 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %6, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %6, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %1
  %45 = load i64, i64* @NVME_AQ_DEPTH, align 8
  %46 = call i8* @cpu_to_le16(i64 %45)
  %47 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %6, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load i64, i64* @NVME_AQ_DEPTH, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i8* @cpu_to_le16(i64 %49)
  %51 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %6, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  br label %66

52:                                               ; preds = %1
  %53 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %54 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @cpu_to_le16(i64 %55)
  %57 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %6, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  %58 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %59 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %58, i32 0, i32 1
  %60 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %59, align 8
  %61 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @cpu_to_le16(i64 %63)
  %65 = getelementptr inbounds %struct.nvme_rdma_cm_req, %struct.nvme_rdma_cm_req* %6, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %52, %44
  %67 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %68 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @rdma_connect(i32 %69, %struct.rdma_conn_param* %5)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %75 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %81

80:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %85

81:                                               ; preds = %73
  %82 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %83 = call i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %80
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @cpu_to_le16(i64) #2

declare dso_local i64 @nvme_rdma_queue_idx(%struct.nvme_rdma_queue*) #2

declare dso_local i32 @rdma_connect(i32, %struct.rdma_conn_param*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
