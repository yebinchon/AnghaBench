; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_map_sg_fr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_map_sg_fr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.nvme_rdma_request = type { %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.nvme_command = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.nvme_keyed_sgl_desc }
%struct.nvme_keyed_sgl_desc = type { i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nvme_rdma_memreg_done = common dso_local global i32 0, align 4
@IB_WR_REG_MR = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@NVME_KEY_SGL_FMT_DATA_DESC = common dso_local global i32 0, align 4
@NVME_SGL_FMT_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*, %struct.nvme_rdma_request*, %struct.nvme_command*, i32)* @nvme_rdma_map_sg_fr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_map_sg_fr(%struct.nvme_rdma_queue* %0, %struct.nvme_rdma_request* %1, %struct.nvme_command* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_rdma_queue*, align 8
  %7 = alloca %struct.nvme_rdma_request*, align 8
  %8 = alloca %struct.nvme_command*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvme_keyed_sgl_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %6, align 8
  store %struct.nvme_rdma_request* %1, %struct.nvme_rdma_request** %7, align 8
  store %struct.nvme_command* %2, %struct.nvme_command** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nvme_command*, %struct.nvme_command** %8, align 8
  %13 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store %struct.nvme_keyed_sgl_desc* %15, %struct.nvme_keyed_sgl_desc** %10, align 8
  %16 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %17 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %20 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = call %struct.TYPE_19__* @ib_mr_pool_get(%struct.TYPE_20__* %18, i32* %22)
  %24 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %25 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %24, i32 0, i32 0
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %25, align 8
  %26 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %27 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = icmp ne %struct.TYPE_19__* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %162

37:                                               ; preds = %4
  %38 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %39 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %38, i32 0, i32 0
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %42 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SZ_4K, align 4
  %47 = call i32 @ib_map_mr_sg(%struct.TYPE_19__* %40, i32 %44, i32 %45, i32* null, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %37
  %55 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %56 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %55, i32 0, i32 0
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %59 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %58, i32 0, i32 0
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %63 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %62, i32 0, i32 0
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = call i32 @ib_mr_pool_put(%struct.TYPE_20__* %57, i32* %61, %struct.TYPE_19__* %64)
  %66 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %67 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %66, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %162

72:                                               ; preds = %54
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %162

75:                                               ; preds = %37
  %76 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %77 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %76, i32 0, i32 0
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %80 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ib_inc_rkey(i32 %83)
  %85 = call i32 @ib_update_fast_reg_key(%struct.TYPE_19__* %78, i32 %84)
  %86 = load i32, i32* @nvme_rdma_memreg_done, align 4
  %87 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %88 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %91 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %90, i32 0, i32 1
  %92 = call i32 @memset(%struct.TYPE_18__* %91, i32 0, i32 40)
  %93 = load i32, i32* @IB_WR_REG_MR, align 4
  %94 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %95 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  store i32 %93, i32* %97, align 8
  %98 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %99 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %98, i32 0, i32 2
  %100 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %101 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %103, align 8
  %104 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %105 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %109 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %108, i32 0, i32 0
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %112 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 2
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %113, align 8
  %114 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %115 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %114, i32 0, i32 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %120 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %123 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %128 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %131 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %130, i32 0, i32 0
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cpu_to_le64(i32 %134)
  %136 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %10, align 8
  %137 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %139 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %138, i32 0, i32 0
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %10, align 8
  %144 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @put_unaligned_le24(i32 %142, i32 %145)
  %147 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %7, align 8
  %148 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %147, i32 0, i32 0
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %10, align 8
  %153 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @put_unaligned_le32(i32 %151, i32 %154)
  %156 = load i32, i32* @NVME_KEY_SGL_FMT_DATA_DESC, align 4
  %157 = shl i32 %156, 4
  %158 = load i32, i32* @NVME_SGL_FMT_INVALIDATE, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %10, align 8
  %161 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %75, %72, %70, %34
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local %struct.TYPE_19__* @ib_mr_pool_get(%struct.TYPE_20__*, i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ib_map_mr_sg(%struct.TYPE_19__*, i32, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ib_mr_pool_put(%struct.TYPE_20__*, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ib_update_fast_reg_key(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ib_inc_rkey(i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @put_unaligned_le24(i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
