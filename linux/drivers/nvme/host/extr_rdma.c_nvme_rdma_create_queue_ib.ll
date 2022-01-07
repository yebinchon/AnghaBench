; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_create_queue_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_create_queue_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"no client data found!\0A\00", align 1
@ECONNREFUSED = common dso_local global i32 0, align 4
@IB_POLL_DIRECT = common dso_local global i32 0, align 4
@IB_POLL_SOFTIRQ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to initialize MR pool sized %d for QID %d\0A\00", align 1
@NVME_RDMA_Q_TR_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*)* @nvme_rdma_create_queue_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_create_queue_ib(%struct.nvme_rdma_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_rdma_queue*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %3, align 8
  store i32 3, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %12 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %13 = call i32 @nvme_rdma_queue_idx(%struct.nvme_rdma_queue* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %14, i32 0, i32 3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = call %struct.TYPE_15__* @nvme_rdma_find_get_device(%struct.TYPE_14__* %16)
  %18 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %18, i32 0, i32 1
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %19, align 8
  %20 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %1
  %25 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %25, i32 0, i32 3
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ECONNREFUSED, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %165

36:                                               ; preds = %1
  %37 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %38 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.ib_device*, %struct.ib_device** %40, align 8
  store %struct.ib_device* %41, %struct.ib_device** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %45, %44 ], [ %48, %46 ]
  store i32 %50, i32* %7, align 4
  %51 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %52 = call i64 @nvme_rdma_poll_queue(%struct.nvme_rdma_queue* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @IB_POLL_DIRECT, align 4
  store i32 %55, i32* %9, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @IB_POLL_SOFTIRQ, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %60 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %61 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %62 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 4, %63
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ib_alloc_cq(%struct.ib_device* %59, %struct.nvme_rdma_queue* %60, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %70 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %72 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %58
  %77 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %78 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %10, align 4
  br label %159

81:                                               ; preds = %58
  %82 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %83 = call i32 @nvme_rdma_create_qp(%struct.nvme_rdma_queue* %82, i32 3)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %154

87:                                               ; preds = %81
  %88 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %89 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %90 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %93 = call i32 @nvme_rdma_alloc_ring(%struct.ib_device* %88, i32 %91, i32 4, i32 %92)
  %94 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %95 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %97 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %87
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %10, align 4
  br label %149

103:                                              ; preds = %87
  %104 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %105 = call i32 @nvme_rdma_get_max_fr_pages(%struct.ib_device* %104)
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %108 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %107, i32 0, i32 7
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %111 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %110, i32 0, i32 7
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %115 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @ib_mr_pool_init(%struct.TYPE_16__* %109, i32* %113, i32 %116, i32 %117, i32 %118, i32 0)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %103
  %123 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %124 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %123, i32 0, i32 6
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %130 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (i32, i8*, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132)
  br label %139

134:                                              ; preds = %103
  %135 = load i32, i32* @NVME_RDMA_Q_TR_READY, align 4
  %136 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %137 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %136, i32 0, i32 5
  %138 = call i32 @set_bit(i32 %135, i32* %137)
  store i32 0, i32* %2, align 4
  br label %165

139:                                              ; preds = %122
  %140 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %141 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %142 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %145 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %148 = call i32 @nvme_rdma_free_ring(%struct.ib_device* %140, i32 %143, i32 %146, i32 4, i32 %147)
  br label %149

149:                                              ; preds = %139, %100
  %150 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %151 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %150, i32 0, i32 3
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = call i32 @rdma_destroy_qp(%struct.TYPE_14__* %152)
  br label %154

154:                                              ; preds = %149, %86
  %155 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %156 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ib_free_cq(i32 %157)
  br label %159

159:                                              ; preds = %154, %76
  %160 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %161 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %160, i32 0, i32 1
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = call i32 @nvme_rdma_dev_put(%struct.TYPE_15__* %162)
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %159, %134, %24
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @nvme_rdma_queue_idx(%struct.nvme_rdma_queue*) #1

declare dso_local %struct.TYPE_15__* @nvme_rdma_find_get_device(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @nvme_rdma_poll_queue(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @ib_alloc_cq(%struct.ib_device*, %struct.nvme_rdma_queue*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @nvme_rdma_create_qp(%struct.nvme_rdma_queue*, i32) #1

declare dso_local i32 @nvme_rdma_alloc_ring(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @nvme_rdma_get_max_fr_pages(%struct.ib_device*) #1

declare dso_local i32 @ib_mr_pool_init(%struct.TYPE_16__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nvme_rdma_free_ring(%struct.ib_device*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_destroy_qp(%struct.TYPE_14__*) #1

declare dso_local i32 @ib_free_cq(i32) #1

declare dso_local i32 @nvme_rdma_dev_put(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
