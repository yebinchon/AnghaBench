; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_process_mcc_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_process_mcc_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i32 }
%struct.be_mcc_compl = type { i32 }

@CQE_FLAGS_VALID_MASK = common dso_local global i32 0, align 4
@CQE_FLAGS_ASYNC_MASK = common dso_local global i32 0, align 4
@CQE_FLAGS_COMPLETED_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_process_mcc_cq(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_queue_info*, align 8
  %4 = alloca %struct.be_mcc_compl*, align 8
  %5 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %7 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.be_queue_info* %9, %struct.be_queue_info** %3, align 8
  %10 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %11 = call %struct.be_mcc_compl* @queue_tail_node(%struct.be_queue_info* %10)
  store %struct.be_mcc_compl* %11, %struct.be_mcc_compl** %4, align 8
  %12 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %13 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le32_to_cpu(i32 %14)
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %18 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %65, %1
  %20 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %21 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CQE_FLAGS_VALID_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %19
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %28 = call i64 @beiscsi_hba_in_error(%struct.beiscsi_hba* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %91

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp uge i32 %32, 32
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %36 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %37 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @hwi_ring_cq_db(%struct.beiscsi_hba* %35, i32 %38, i32 %39, i32 0)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %31
  %42 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %43 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CQE_FLAGS_ASYNC_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %50 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %51 = call i32 @beiscsi_process_async_event(%struct.beiscsi_hba* %49, %struct.be_mcc_compl* %50)
  br label %65

52:                                               ; preds = %41
  %53 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %54 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CQE_FLAGS_COMPLETED_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %61 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %60, i32 0, i32 0
  %62 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %63 = call i32 @beiscsi_process_mcc_compl(%struct.TYPE_4__* %61, %struct.be_mcc_compl* %62)
  br label %64

64:                                               ; preds = %59, %52
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %67 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %69 = call i32 @queue_tail_inc(%struct.be_queue_info* %68)
  %70 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %71 = call %struct.be_mcc_compl* @queue_tail_node(%struct.be_queue_info* %70)
  store %struct.be_mcc_compl* %71, %struct.be_mcc_compl** %4, align 8
  %72 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %73 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @le32_to_cpu(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %78 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %19

81:                                               ; preds = %19
  %82 = load i32, i32* %5, align 4
  %83 = icmp ugt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %86 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %87 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @hwi_ring_cq_db(%struct.beiscsi_hba* %85, i32 %88, i32 %89, i32 1)
  br label %91

91:                                               ; preds = %30, %84, %81
  ret void
}

declare dso_local %struct.be_mcc_compl* @queue_tail_node(%struct.be_queue_info*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @beiscsi_hba_in_error(%struct.beiscsi_hba*) #1

declare dso_local i32 @hwi_ring_cq_db(%struct.beiscsi_hba*, i32, i32, i32) #1

declare dso_local i32 @beiscsi_process_async_event(%struct.beiscsi_hba*, %struct.be_mcc_compl*) #1

declare dso_local i32 @beiscsi_process_mcc_compl(%struct.TYPE_4__*, %struct.be_mcc_compl*) #1

declare dso_local i32 @queue_tail_inc(%struct.be_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
