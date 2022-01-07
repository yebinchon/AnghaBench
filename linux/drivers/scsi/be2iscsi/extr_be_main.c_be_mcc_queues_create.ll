; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_be_mcc_queues_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_be_mcc_queues_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64, %struct.be_ctrl_info, %struct.TYPE_4__* }
%struct.be_ctrl_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.be_queue_info, %struct.be_queue_info }
%struct.be_queue_info = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.hwi_context_memory = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MCC_CQ_LEN = common dso_local global i32 0, align 4
@MCC_Q_LEN = common dso_local global i32 0, align 4
@QTYPE_CQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.hwi_context_memory*)* @be_mcc_queues_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mcc_queues_create(%struct.beiscsi_hba* %0, %struct.hwi_context_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.hwi_context_memory*, align 8
  %6 = alloca %struct.be_queue_info*, align 8
  %7 = alloca %struct.be_queue_info*, align 8
  %8 = alloca %struct.be_ctrl_info*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.hwi_context_memory* %1, %struct.hwi_context_memory** %5, align 8
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %10 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %9, i32 0, i32 1
  store %struct.be_ctrl_info* %10, %struct.be_ctrl_info** %8, align 8
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %12 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store %struct.be_queue_info* %14, %struct.be_queue_info** %7, align 8
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %16 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %17 = load i32, i32* @MCC_CQ_LEN, align 4
  %18 = call i64 @be_queue_alloc(%struct.beiscsi_hba* %15, %struct.be_queue_info* %16, i32 %17, i32 4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %87

21:                                               ; preds = %2
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %30 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %31 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %32 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %35 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i64 @beiscsi_cmd_cq_create(%struct.be_ctrl_info* %29, %struct.be_queue_info* %30, i32* %38, i32 0, i32 1, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %83

42:                                               ; preds = %28
  br label %55

43:                                               ; preds = %21
  %44 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %45 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %46 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %47 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i64 @beiscsi_cmd_cq_create(%struct.be_ctrl_info* %44, %struct.be_queue_info* %45, i32* %50, i32 0, i32 1, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %83

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %57 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store %struct.be_queue_info* %59, %struct.be_queue_info** %6, align 8
  %60 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %61 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %62 = load i32, i32* @MCC_Q_LEN, align 4
  %63 = call i64 @be_queue_alloc(%struct.beiscsi_hba* %60, %struct.be_queue_info* %61, i32 %62, i32 4)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %78

66:                                               ; preds = %55
  %67 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %68 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %69 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %70 = call i64 @beiscsi_cmd_mccq_create(%struct.beiscsi_hba* %67, %struct.be_queue_info* %68, %struct.be_queue_info* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %90

74:                                               ; preds = %72
  %75 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %76 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %77 = call i32 @be_queue_free(%struct.beiscsi_hba* %75, %struct.be_queue_info* %76)
  br label %78

78:                                               ; preds = %74, %65
  %79 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %80 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %81 = load i32, i32* @QTYPE_CQ, align 4
  %82 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %79, %struct.be_queue_info* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %53, %41
  %84 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %85 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %86 = call i32 @be_queue_free(%struct.beiscsi_hba* %84, %struct.be_queue_info* %85)
  br label %87

87:                                               ; preds = %83, %20
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %73
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @be_queue_alloc(%struct.beiscsi_hba*, %struct.be_queue_info*, i32, i32) #1

declare dso_local i64 @beiscsi_cmd_cq_create(%struct.be_ctrl_info*, %struct.be_queue_info*, i32*, i32, i32, i32) #1

declare dso_local i64 @beiscsi_cmd_mccq_create(%struct.beiscsi_hba*, %struct.be_queue_info*, %struct.be_queue_info*) #1

declare dso_local i32 @be_queue_free(%struct.beiscsi_hba*, %struct.be_queue_info*) #1

declare dso_local i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info*, %struct.be_queue_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
