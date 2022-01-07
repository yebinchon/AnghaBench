; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_unmap_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_unmap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.request = type { i32 }
%struct.nvme_fc_fcp_op = type { i32, %struct.nvmefc_fcp_req }
%struct.nvmefc_fcp_req = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_ctrl*, %struct.request*, %struct.nvme_fc_fcp_op*)* @nvme_fc_unmap_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_unmap_data(%struct.nvme_fc_ctrl* %0, %struct.request* %1, %struct.nvme_fc_fcp_op* %2) #0 {
  %4 = alloca %struct.nvme_fc_ctrl*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.nvme_fc_fcp_op*, align 8
  %7 = alloca %struct.nvmefc_fcp_req*, align 8
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.nvme_fc_fcp_op* %2, %struct.nvme_fc_fcp_op** %6, align 8
  %8 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %6, align 8
  %9 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %8, i32 0, i32 1
  store %struct.nvmefc_fcp_req* %9, %struct.nvmefc_fcp_req** %7, align 8
  %10 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %11 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %22 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %6, align 8
  %26 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.request*, %struct.request** %5, align 8
  %29 = call i32 @rq_dma_dir(%struct.request* %28)
  %30 = call i32 @fc_dma_unmap_sg(i32 %20, i32 %24, i32 %27, i32 %29)
  %31 = load %struct.request*, %struct.request** %5, align 8
  %32 = call i32 @nvme_cleanup_cmd(%struct.request* %31)
  %33 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %34 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %33, i32 0, i32 1
  %35 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %36 = call i32 @sg_free_table_chained(%struct.TYPE_4__* %34, i32 %35)
  %37 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %38 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @fc_dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @rq_dma_dir(%struct.request*) #1

declare dso_local i32 @nvme_cleanup_cmd(%struct.request*) #1

declare dso_local i32 @sg_free_table_chained(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
