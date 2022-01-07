; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_be_mcc_queues_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_be_mcc_queues_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.be_queue_info, %struct.be_queue_info }
%struct.be_queue_info = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.be_dma_mem }
%struct.be_dma_mem = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MAX_MCC_CMD = common dso_local global i32 0, align 4
@MCC_TAG_STATE_RUNNING = common dso_local global i32 0, align 4
@MCC_TAG_STATE_TIMEOUT = common dso_local global i32 0, align 4
@MCC_STATUS_FAILED = common dso_local global i32 0, align 4
@CQE_VALID_MASK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QTYPE_MCCQ = common dso_local global i32 0, align 4
@QTYPE_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @be_mcc_queues_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_mcc_queues_destroy(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_ctrl_info*, align 8
  %4 = alloca %struct.be_dma_mem*, align 8
  %5 = alloca %struct.be_queue_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %9 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %8, i32 0, i32 0
  store %struct.be_ctrl_info* %9, %struct.be_ctrl_info** %3, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %struct.be_queue_info* %13, %struct.be_queue_info** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %122, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAX_MCC_CMD, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %125

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @MCC_TAG_STATE_RUNNING, align 4
  %22 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %23 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %21, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %122

32:                                               ; preds = %18
  %33 = load i32, i32* @MCC_TAG_STATE_TIMEOUT, align 4
  %34 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %35 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %33, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %32
  %44 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %45 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store %struct.be_dma_mem* %50, %struct.be_dma_mem** %4, align 8
  %51 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %52 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %43
  %56 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %57 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %61 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %64 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %67 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dma_free_coherent(i32* %59, i64 %62, i32 %65, i32 %68)
  %70 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %71 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %55, %43
  br label %122

73:                                               ; preds = %32
  %74 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %75 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i64 @waitqueue_active(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %121

82:                                               ; preds = %73
  %83 = load i32, i32* @MCC_STATUS_FAILED, align 4
  %84 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %85 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* @CQE_VALID_MASK, align 4
  %91 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %92 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %90
  store i32 %98, i32* %96, align 4
  %99 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %100 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @wake_up_interruptible(i32* %104)
  br label %106

106:                                              ; preds = %117, %82
  %107 = load i32, i32* @MCC_TAG_STATE_RUNNING, align 4
  %108 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %109 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = call i64 @test_bit(i32 %107, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load i32, i32* @HZ, align 4
  %119 = call i32 @schedule_timeout_uninterruptible(i32 %118)
  br label %106

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %73
  br label %122

122:                                              ; preds = %121, %72, %31
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %14

125:                                              ; preds = %14
  %126 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %127 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %132 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %133 = load i32, i32* @QTYPE_MCCQ, align 4
  %134 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %131, %struct.be_queue_info* %132, i32 %133)
  %135 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %136 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %137 = call i32 @be_queue_free(%struct.beiscsi_hba* %135, %struct.be_queue_info* %136)
  br label %138

138:                                              ; preds = %130, %125
  %139 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %140 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store %struct.be_queue_info* %142, %struct.be_queue_info** %5, align 8
  %143 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %144 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %138
  %148 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %149 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %150 = load i32, i32* @QTYPE_CQ, align 4
  %151 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %148, %struct.be_queue_info* %149, i32 %150)
  %152 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %153 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %154 = call i32 @be_queue_free(%struct.beiscsi_hba* %152, %struct.be_queue_info* %153)
  br label %155

155:                                              ; preds = %147, %138
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info*, %struct.be_queue_info*, i32) #1

declare dso_local i32 @be_queue_free(%struct.beiscsi_hba*, %struct.be_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
