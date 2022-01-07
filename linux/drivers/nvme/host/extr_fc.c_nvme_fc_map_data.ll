; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_map_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.request = type { i32 }
%struct.nvme_fc_fcp_op = type { i32, %struct.nvmefc_fcp_req }
%struct.nvmefc_fcp_req = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*, %struct.request*, %struct.nvme_fc_fcp_op*)* @nvme_fc_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_map_data(%struct.nvme_fc_ctrl* %0, %struct.request* %1, %struct.nvme_fc_fcp_op* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_fc_ctrl*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.nvme_fc_fcp_op*, align 8
  %8 = alloca %struct.nvmefc_fcp_req*, align 8
  %9 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.nvme_fc_fcp_op* %2, %struct.nvme_fc_fcp_op** %7, align 8
  %10 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %7, align 8
  %11 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %10, i32 0, i32 1
  store %struct.nvmefc_fcp_req* %11, %struct.nvmefc_fcp_req** %8, align 8
  %12 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %13 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = call i32 @blk_rq_nr_phys_segments(%struct.request* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

18:                                               ; preds = %3
  %19 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %20 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %23 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %26 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %25, i32 0, i32 1
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = call i32 @blk_rq_nr_phys_segments(%struct.request* %27)
  %29 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %30 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %34 = call i32 @sg_alloc_table_chained(%struct.TYPE_5__* %26, i32 %28, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %18
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %94

40:                                               ; preds = %18
  %41 = load %struct.request*, %struct.request** %6, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.request*, %struct.request** %6, align 8
  %45 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %46 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @blk_rq_map_sg(i32 %43, %struct.request* %44, i32 %48)
  %50 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %7, align 8
  %51 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %7, align 8
  %53 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.request*, %struct.request** %6, align 8
  %56 = call i32 @blk_rq_nr_phys_segments(%struct.request* %55)
  %57 = icmp sgt i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  %60 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %61 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %66 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %7, align 8
  %70 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.request*, %struct.request** %6, align 8
  %73 = call i32 @rq_dma_dir(%struct.request* %72)
  %74 = call i64 @fc_dma_map_sg(i32 %64, i32 %68, i32 %71, i32 %73)
  %75 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %76 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %78 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sle i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %40
  %85 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %86 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %85, i32 0, i32 1
  %87 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %88 = call i32 @sg_free_table_chained(%struct.TYPE_5__* %86, i32 %87)
  %89 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %90 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @EFAULT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %84, %37, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local i32 @sg_alloc_table_chained(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @blk_rq_map_sg(i32, %struct.request*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @fc_dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @rq_dma_dir(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_free_table_chained(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
