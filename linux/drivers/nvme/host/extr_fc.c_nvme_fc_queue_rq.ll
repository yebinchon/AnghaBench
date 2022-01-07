; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.nvme_fc_queue*, %struct.TYPE_4__* }
%struct.nvme_fc_queue = type { %struct.nvme_fc_ctrl*, i32 }
%struct.nvme_fc_ctrl = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }
%struct.nvme_fc_fcp_op = type { %struct.nvme_fc_cmd_iu }
%struct.nvme_fc_cmd_iu = type { %struct.nvme_command }
%struct.nvme_command = type { i32 }

@NVME_FC_Q_LIVE = common dso_local global i32 0, align 4
@FC_OBJSTATE_ONLINE = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@NVMEFC_FCP_WRITE = common dso_local global i32 0, align 4
@NVMEFC_FCP_READ = common dso_local global i32 0, align 4
@NVMEFC_FCP_NODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @nvme_fc_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvme_fc_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.nvme_fc_queue*, align 8
  %8 = alloca %struct.nvme_fc_ctrl*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.nvme_fc_fcp_op*, align 8
  %11 = alloca %struct.nvme_fc_cmd_iu*, align 8
  %12 = alloca %struct.nvme_command*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.nvme_ns*, %struct.nvme_ns** %20, align 8
  store %struct.nvme_ns* %21, %struct.nvme_ns** %6, align 8
  %22 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %22, i32 0, i32 0
  %24 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %23, align 8
  store %struct.nvme_fc_queue* %24, %struct.nvme_fc_queue** %7, align 8
  %25 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %7, align 8
  %26 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %25, i32 0, i32 0
  %27 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %26, align 8
  store %struct.nvme_fc_ctrl* %27, %struct.nvme_fc_ctrl** %8, align 8
  %28 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %29 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %28, i32 0, i32 0
  %30 = load %struct.request*, %struct.request** %29, align 8
  store %struct.request* %30, %struct.request** %9, align 8
  %31 = load %struct.request*, %struct.request** %9, align 8
  %32 = call %struct.nvme_fc_fcp_op* @blk_mq_rq_to_pdu(%struct.request* %31)
  store %struct.nvme_fc_fcp_op* %32, %struct.nvme_fc_fcp_op** %10, align 8
  %33 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %10, align 8
  %34 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %33, i32 0, i32 0
  store %struct.nvme_fc_cmd_iu* %34, %struct.nvme_fc_cmd_iu** %11, align 8
  %35 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %11, align 8
  %36 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %35, i32 0, i32 0
  store %struct.nvme_command* %36, %struct.nvme_command** %12, align 8
  %37 = load i32, i32* @NVME_FC_Q_LIVE, align 4
  %38 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %7, align 8
  %39 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %38, i32 0, i32 1
  %40 = call i32 @test_bit(i32 %37, i32* %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %8, align 8
  %42 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FC_OBJSTATE_ONLINE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %2
  %50 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %7, align 8
  %51 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %50, i32 0, i32 0
  %52 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %51, align 8
  %53 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %52, i32 0, i32 0
  %54 = load %struct.request*, %struct.request** %9, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @nvmf_check_ready(i32* %53, %struct.request* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %49, %2
  %59 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %7, align 8
  %60 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %59, i32 0, i32 0
  %61 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %60, align 8
  %62 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %61, i32 0, i32 0
  %63 = load %struct.request*, %struct.request** %9, align 8
  %64 = call i64 @nvmf_fail_nonready_command(i32* %62, %struct.request* %63)
  store i64 %64, i64* %3, align 8
  br label %100

65:                                               ; preds = %49
  %66 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %67 = load %struct.request*, %struct.request** %9, align 8
  %68 = load %struct.nvme_command*, %struct.nvme_command** %12, align 8
  %69 = call i64 @nvme_setup_cmd(%struct.nvme_ns* %66, %struct.request* %67, %struct.nvme_command* %68)
  store i64 %69, i64* %16, align 8
  %70 = load i64, i64* %16, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i64, i64* %16, align 8
  store i64 %73, i64* %3, align 8
  br label %100

74:                                               ; preds = %65
  %75 = load %struct.request*, %struct.request** %9, align 8
  %76 = call i64 @blk_rq_nr_phys_segments(%struct.request* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load %struct.request*, %struct.request** %9, align 8
  %80 = call i64 @blk_rq_payload_bytes(%struct.request* %79)
  store i64 %80, i64* %15, align 8
  %81 = load %struct.request*, %struct.request** %9, align 8
  %82 = call i64 @rq_data_dir(%struct.request* %81)
  %83 = load i64, i64* @WRITE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @NVMEFC_FCP_WRITE, align 4
  br label %89

87:                                               ; preds = %78
  %88 = load i32, i32* @NVMEFC_FCP_READ, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %13, align 4
  br label %93

91:                                               ; preds = %74
  store i64 0, i64* %15, align 8
  %92 = load i32, i32* @NVMEFC_FCP_NODATA, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %8, align 8
  %95 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %7, align 8
  %96 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %10, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @nvme_fc_start_fcp_op(%struct.nvme_fc_ctrl* %94, %struct.nvme_fc_queue* %95, %struct.nvme_fc_fcp_op* %96, i64 %97, i32 %98)
  store i64 %99, i64* %3, align 8
  br label %100

100:                                              ; preds = %93, %72, %58
  %101 = load i64, i64* %3, align 8
  ret i64 %101
}

declare dso_local %struct.nvme_fc_fcp_op* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nvmf_check_ready(i32*, %struct.request*, i32) #1

declare dso_local i64 @nvmf_fail_nonready_command(i32*, %struct.request*) #1

declare dso_local i64 @nvme_setup_cmd(%struct.nvme_ns*, %struct.request*, %struct.nvme_command*) #1

declare dso_local i64 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local i64 @blk_rq_payload_bytes(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @nvme_fc_start_fcp_op(%struct.nvme_fc_ctrl*, %struct.nvme_fc_queue*, %struct.nvme_fc_fcp_op*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
