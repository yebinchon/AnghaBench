; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_check_task_reassign_expdatasn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_check_task_reassign_expdatasn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tmr_req = type { i64, %struct.iscsi_cmd* }
%struct.iscsi_cmd = type { i64, i64, i64, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_conn = type { i32 }

@ISCSI_OP_SCSI_CMD = common dso_local global i64 0, align 8
@SCF_SENT_CHECK_CONDITION = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [97 x i8] c"Received ExpDataSN: 0x%08x for READ in TMR TASK_REASSIGN greater than command's DataSN: 0x%08x.\0A\00", align 1
@ICF_GOT_DATACK_SNACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [117 x i8] c"Received ExpDataSN: 0x%08x for READ in TMR TASK_REASSIGN for previously acknowledged DataIN: 0x%08x, protocol error\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [97 x i8] c"Received ExpDataSN: 0x%08x for WRITE in TMR TASK_REASSIGN greater than command's R2TSN: 0x%08x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unknown iSCSI data_direction: 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_check_task_reassign_expdatasn(%struct.iscsi_tmr_req* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_tmr_req*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  store %struct.iscsi_tmr_req* %0, %struct.iscsi_tmr_req** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  %7 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %7, i32 0, i32 1
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %8, align 8
  store %struct.iscsi_cmd* %9, %struct.iscsi_cmd** %6, align 8
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ISCSI_OP_SCSI_CMD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

16:                                               ; preds = %2
  %17 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SCF_SENT_CHECK_CONDITION, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %112

25:                                               ; preds = %16
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMA_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %112

32:                                               ; preds = %25
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %32
  %39 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %52)
  store i32 -1, i32* %3, align 4
  br label %112

54:                                               ; preds = %38
  %55 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ICF_GOT_DATACK_SNACK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %54
  %62 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %63 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp sle i64 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %71 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %75)
  store i32 -1, i32* %3, align 4
  br label %112

77:                                               ; preds = %61, %54
  %78 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %79 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %80 = call i32 @iscsit_task_reassign_prepare_read(%struct.iscsi_tmr_req* %78, %struct.iscsi_conn* %79)
  store i32 %80, i32* %3, align 4
  br label %112

81:                                               ; preds = %32
  %82 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %83 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DMA_TO_DEVICE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %89 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %92 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %97 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %100 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i64 %98, i64 %101)
  store i32 -1, i32* %3, align 4
  br label %112

103:                                              ; preds = %87
  %104 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %4, align 8
  %105 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %106 = call i32 @iscsit_task_reassign_prepare_write(%struct.iscsi_tmr_req* %104, %struct.iscsi_conn* %105)
  store i32 %106, i32* %3, align 4
  br label %112

107:                                              ; preds = %81
  %108 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %109 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %110)
  store i32 -1, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %103, %95, %77, %69, %46, %31, %24, %15
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @iscsit_task_reassign_prepare_read(%struct.iscsi_tmr_req*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_task_reassign_prepare_write(%struct.iscsi_tmr_req*, %struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
