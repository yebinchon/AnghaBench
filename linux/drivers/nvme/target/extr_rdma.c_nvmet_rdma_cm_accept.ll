; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_cm_accept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_cm_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }
%struct.nvmet_rdma_queue = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rdma_conn_param = type { i32, i32, i32, %struct.nvme_rdma_cm_rep*, i32 }
%struct.nvme_rdma_cm_rep = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@NVME_RDMA_CM_FMT_1_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"rdma_accept failed (error code = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.nvmet_rdma_queue*, %struct.rdma_conn_param*)* @nvmet_rdma_cm_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_cm_accept(%struct.rdma_cm_id* %0, %struct.nvmet_rdma_queue* %1, %struct.rdma_conn_param* %2) #0 {
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.nvmet_rdma_queue*, align 8
  %6 = alloca %struct.rdma_conn_param*, align 8
  %7 = alloca %struct.rdma_conn_param, align 8
  %8 = alloca %struct.nvme_rdma_cm_rep, align 8
  %9 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.nvmet_rdma_queue* %1, %struct.nvmet_rdma_queue** %5, align 8
  store %struct.rdma_conn_param* %2, %struct.rdma_conn_param** %6, align 8
  %10 = bitcast %struct.rdma_conn_param* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = bitcast %struct.nvme_rdma_cm_rep* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %7, i32 0, i32 0
  store i32 7, i32* %14, align 8
  %15 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %7, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @u8, align 4
  %17 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %6, align 8
  %18 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %21 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @min_t(i32 %16, i32 %19, i32 %27)
  %29 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %7, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %7, i32 0, i32 3
  store %struct.nvme_rdma_cm_rep* %8, %struct.nvme_rdma_cm_rep** %30, align 8
  %31 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %7, i32 0, i32 2
  store i32 16, i32* %31, align 8
  %32 = load i32, i32* @NVME_RDMA_CM_FMT_1_0, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = getelementptr inbounds %struct.nvme_rdma_cm_rep, %struct.nvme_rdma_cm_rep* %8, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %36 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = getelementptr inbounds %struct.nvme_rdma_cm_rep, %struct.nvme_rdma_cm_rep* %8, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %41 = call i32 @rdma_accept(%struct.rdma_cm_id* %40, %struct.rdma_conn_param* %7)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %3
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @min_t(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @rdma_accept(%struct.rdma_cm_id*, %struct.rdma_conn_param*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
