; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.nvme_queue*, %struct.TYPE_2__* }
%struct.nvme_queue = type { i32, %struct.nvme_dev* }
%struct.nvme_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { i32 }
%struct.blk_mq_queue_data = type { i32, %struct.request* }
%struct.request = type { i32 }
%struct.nvme_iod = type { i32, i64, i64 }
%struct.nvme_command = type { i32 }

@NVMEQ_ENABLED = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @nvme_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvme_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.nvme_queue*, align 8
  %8 = alloca %struct.nvme_dev*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.nvme_iod*, align 8
  %11 = alloca %struct.nvme_command, align 4
  %12 = alloca i64, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %13 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nvme_ns*, %struct.nvme_ns** %16, align 8
  store %struct.nvme_ns* %17, %struct.nvme_ns** %6, align 8
  %18 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %18, i32 0, i32 0
  %20 = load %struct.nvme_queue*, %struct.nvme_queue** %19, align 8
  store %struct.nvme_queue* %20, %struct.nvme_queue** %7, align 8
  %21 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %22 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %21, i32 0, i32 1
  %23 = load %struct.nvme_dev*, %struct.nvme_dev** %22, align 8
  store %struct.nvme_dev* %23, %struct.nvme_dev** %8, align 8
  %24 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %25 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %24, i32 0, i32 1
  %26 = load %struct.request*, %struct.request** %25, align 8
  store %struct.request* %26, %struct.request** %9, align 8
  %27 = load %struct.request*, %struct.request** %9, align 8
  %28 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %27)
  store %struct.nvme_iod* %28, %struct.nvme_iod** %10, align 8
  %29 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %30 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %32 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %34 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @NVMEQ_ENABLED, align 4
  %36 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %37 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %36, i32 0, i32 0
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i64, i64* @BLK_STS_IOERR, align 8
  store i64 %45, i64* %3, align 8
  br label %95

46:                                               ; preds = %2
  %47 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %48 = load %struct.request*, %struct.request** %9, align 8
  %49 = call i64 @nvme_setup_cmd(%struct.nvme_ns* %47, %struct.request* %48, %struct.nvme_command* %11)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* %12, align 8
  store i64 %53, i64* %3, align 8
  br label %95

54:                                               ; preds = %46
  %55 = load %struct.request*, %struct.request** %9, align 8
  %56 = call i64 @blk_rq_nr_phys_segments(%struct.request* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %60 = load %struct.request*, %struct.request** %9, align 8
  %61 = call i64 @nvme_map_data(%struct.nvme_dev* %59, %struct.request* %60, %struct.nvme_command* %11)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %91

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %54
  %67 = load %struct.request*, %struct.request** %9, align 8
  %68 = call i64 @blk_integrity_rq(%struct.request* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %72 = load %struct.request*, %struct.request** %9, align 8
  %73 = call i64 @nvme_map_metadata(%struct.nvme_dev* %71, %struct.request* %72, %struct.nvme_command* %11)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %87

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %66
  %79 = load %struct.request*, %struct.request** %9, align 8
  %80 = call i32 @blk_mq_start_request(%struct.request* %79)
  %81 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %82 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %83 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @nvme_submit_cmd(%struct.nvme_queue* %81, %struct.nvme_command* %11, i32 %84)
  %86 = load i64, i64* @BLK_STS_OK, align 8
  store i64 %86, i64* %3, align 8
  br label %95

87:                                               ; preds = %76
  %88 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %89 = load %struct.request*, %struct.request** %9, align 8
  %90 = call i32 @nvme_unmap_data(%struct.nvme_dev* %88, %struct.request* %89)
  br label %91

91:                                               ; preds = %87, %64
  %92 = load %struct.request*, %struct.request** %9, align 8
  %93 = call i32 @nvme_cleanup_cmd(%struct.request* %92)
  %94 = load i64, i64* %12, align 8
  store i64 %94, i64* %3, align 8
  br label %95

95:                                               ; preds = %91, %78, %52, %44
  %96 = load i64, i64* %3, align 8
  ret i64 %96
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @nvme_setup_cmd(%struct.nvme_ns*, %struct.request*, %struct.nvme_command*) #1

declare dso_local i64 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local i64 @nvme_map_data(%struct.nvme_dev*, %struct.request*, %struct.nvme_command*) #1

declare dso_local i64 @blk_integrity_rq(%struct.request*) #1

declare dso_local i64 @nvme_map_metadata(%struct.nvme_dev*, %struct.request*, %struct.nvme_command*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @nvme_submit_cmd(%struct.nvme_queue*, %struct.nvme_command*, i32) #1

declare dso_local i32 @nvme_unmap_data(%struct.nvme_dev*, %struct.request*) #1

declare dso_local i32 @nvme_cleanup_cmd(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
