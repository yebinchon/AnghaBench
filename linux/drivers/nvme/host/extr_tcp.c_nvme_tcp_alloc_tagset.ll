; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_alloc_tagset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_alloc_tagset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i32, i32, i32, i32, %struct.nvme_tcp_ctrl*, i32, i8*, i64, i32* }
%struct.nvme_tcp_ctrl = type { %struct.blk_mq_tag_set, %struct.blk_mq_tag_set }
%struct.nvme_ctrl = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@nvme_tcp_admin_mq_ops = common dso_local global i32 0, align 4
@NVME_AQ_MQ_TAG_DEPTH = common dso_local global i64 0, align 8
@NUMA_NO_NODE = common dso_local global i8* null, align 8
@ADMIN_TIMEOUT = common dso_local global i32 0, align 4
@nvme_tcp_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@NVME_IO_TIMEOUT = common dso_local global i32 0, align 4
@HCTX_MAX_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blk_mq_tag_set* (%struct.nvme_ctrl*, i32)* @nvme_tcp_alloc_tagset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blk_mq_tag_set* @nvme_tcp_alloc_tagset(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_tcp_ctrl*, align 8
  %7 = alloca %struct.blk_mq_tag_set*, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %10 = call %struct.nvme_tcp_ctrl* @to_tcp_ctrl(%struct.nvme_ctrl* %9)
  store %struct.nvme_tcp_ctrl* %10, %struct.nvme_tcp_ctrl** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %15 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %14, i32 0, i32 1
  store %struct.blk_mq_tag_set* %15, %struct.blk_mq_tag_set** %7, align 8
  %16 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %17 = call i32 @memset(%struct.blk_mq_tag_set* %16, i32 0, i32 64)
  %18 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %19 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %18, i32 0, i32 9
  store i32* @nvme_tcp_admin_mq_ops, i32** %19, align 8
  %20 = load i64, i64* @NVME_AQ_MQ_TAG_DEPTH, align 8
  %21 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %22 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %21, i32 0, i32 8
  store i64 %20, i64* %22, align 8
  %23 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %24 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %23, i32 0, i32 0
  store i32 2, i32* %24, align 8
  %25 = load i8*, i8** @NUMA_NO_NODE, align 8
  %26 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %27 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %29 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %28, i32 0, i32 1
  store i32 4, i32* %29, align 4
  %30 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %31 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %32 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %31, i32 0, i32 5
  store %struct.nvme_tcp_ctrl* %30, %struct.nvme_tcp_ctrl** %32, align 8
  %33 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %34 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* @ADMIN_TIMEOUT, align 4
  %36 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %37 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  br label %86

38:                                               ; preds = %2
  %39 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %40 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %39, i32 0, i32 0
  store %struct.blk_mq_tag_set* %40, %struct.blk_mq_tag_set** %7, align 8
  %41 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %42 = call i32 @memset(%struct.blk_mq_tag_set* %41, i32 0, i32 64)
  %43 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %44 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %43, i32 0, i32 9
  store i32* @nvme_tcp_mq_ops, i32** %44, align 8
  %45 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %46 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %50 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %49, i32 0, i32 8
  store i64 %48, i64* %50, align 8
  %51 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %52 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i8*, i8** @NUMA_NO_NODE, align 8
  %54 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %55 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %57 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %58 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %60 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %59, i32 0, i32 1
  store i32 4, i32* %60, align 4
  %61 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %62 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %63 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %62, i32 0, i32 5
  store %struct.nvme_tcp_ctrl* %61, %struct.nvme_tcp_ctrl** %63, align 8
  %64 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %65 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %69 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @NVME_IO_TIMEOUT, align 4
  %71 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %72 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %74 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %38
  %80 = load i32, i32* @HCTX_MAX_TYPES, align 4
  br label %82

81:                                               ; preds = %38
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 2, %81 ]
  %84 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %85 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %13
  %87 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %88 = call i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = call %struct.blk_mq_tag_set* @ERR_PTR(i32 %92)
  store %struct.blk_mq_tag_set* %93, %struct.blk_mq_tag_set** %3, align 8
  br label %96

94:                                               ; preds = %86
  %95 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  store %struct.blk_mq_tag_set* %95, %struct.blk_mq_tag_set** %3, align 8
  br label %96

96:                                               ; preds = %94, %91
  %97 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  ret %struct.blk_mq_tag_set* %97
}

declare dso_local %struct.nvme_tcp_ctrl* @to_tcp_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @memset(%struct.blk_mq_tag_set*, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set*) #1

declare dso_local %struct.blk_mq_tag_set* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
