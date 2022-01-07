; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_map_sgl_keyed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_map_sgl_keyed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_rsp = type { i32, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.rdma_cm_id* }
%struct.rdma_cm_id = type { i32, i32 }
%struct.nvme_keyed_sgl_desc = type { i32, i32, i32 }

@NVMET_RDMA_REQ_INVALIDATE_RKEY = common dso_local global i32 0, align 4
@NVME_SC_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_rdma_rsp*, %struct.nvme_keyed_sgl_desc*, i32)* @nvmet_rdma_map_sgl_keyed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_map_sgl_keyed(%struct.nvmet_rdma_rsp* %0, %struct.nvme_keyed_sgl_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvmet_rdma_rsp*, align 8
  %6 = alloca %struct.nvme_keyed_sgl_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdma_cm_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvmet_rdma_rsp* %0, %struct.nvmet_rdma_rsp** %5, align 8
  store %struct.nvme_keyed_sgl_desc* %1, %struct.nvme_keyed_sgl_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %13 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %15, align 8
  store %struct.rdma_cm_id* %16, %struct.rdma_cm_id** %8, align 8
  %17 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %6, align 8
  %18 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le64_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %6, align 8
  %22 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_unaligned_le32(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %6, align 8
  %26 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @get_unaligned_le24(i32 %27)
  %29 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %30 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %33 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

38:                                               ; preds = %3
  %39 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %40 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %39, i32 0, i32 1
  %41 = call i32 @nvmet_req_alloc_sgl(%struct.TYPE_5__* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %89

45:                                               ; preds = %38
  %46 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %47 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %46, i32 0, i32 4
  %48 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %8, align 8
  %49 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %8, align 8
  %52 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %55 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %59 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %65 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %64, i32 0, i32 1
  %66 = call i32 @nvmet_data_dir(%struct.TYPE_5__* %65)
  %67 = call i32 @rdma_rw_ctx_init(i32* %47, i32 %50, i32 %53, i32 %57, i32 %61, i32 0, i32 %62, i32 %63, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %45
  br label %89

71:                                               ; preds = %45
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %74 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %82 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @NVMET_RDMA_REQ_INVALIDATE_RKEY, align 4
  %84 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %85 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %79, %71
  store i32 0, i32* %4, align 4
  br label %94

89:                                               ; preds = %70, %44
  %90 = load %struct.nvmet_rdma_rsp*, %struct.nvmet_rdma_rsp** %5, align 8
  %91 = getelementptr inbounds %struct.nvmet_rdma_rsp, %struct.nvmet_rdma_rsp* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @NVME_SC_INTERNAL, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %88, %37
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

declare dso_local i64 @get_unaligned_le24(i32) #1

declare dso_local i32 @nvmet_req_alloc_sgl(%struct.TYPE_5__*) #1

declare dso_local i32 @rdma_rw_ctx_init(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nvmet_data_dir(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
