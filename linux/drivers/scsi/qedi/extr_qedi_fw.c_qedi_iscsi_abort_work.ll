; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_iscsi_abort_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_iscsi_abort_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_conn = type { i32, %struct.qedi_ctx* }
%struct.qedi_ctx = type { i32, i32 }
%struct.iscsi_task = type { i64, i64 }
%struct.iscsi_tm = type { i32 }
%struct.qedi_cmd = type { i32, %struct.iscsi_task*, i32, i32 }

@ISCSI_FLAG_TM_FUNC_MASK = common dso_local global i32 0, align 4
@ISCSI_TM_FUNC_ABORT_TASK = common dso_local global i32 0, align 4
@CLEANUP_WAIT = common dso_local global i32 0, align 4
@qedi_tmf_work = common dso_local global i32 0, align 4
@ISCSI_TM_FUNC_LOGICAL_UNIT_RESET = common dso_local global i32 0, align 4
@ISCSI_TM_FUNC_TARGET_WARM_RESET = common dso_local global i32 0, align 4
@ISCSI_TM_FUNC_TARGET_COLD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid tid, cid=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid tmf, cid=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedi_iscsi_abort_work(%struct.qedi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.qedi_ctx*, align 8
  %7 = alloca %struct.iscsi_tm*, align 8
  %8 = alloca %struct.qedi_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.qedi_conn* %0, %struct.qedi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %10 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %11 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %10, i32 0, i32 1
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  store %struct.qedi_ctx* %12, %struct.qedi_ctx** %6, align 8
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.qedi_cmd*
  store %struct.qedi_cmd* %16, %struct.qedi_cmd** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.iscsi_tm*
  store %struct.iscsi_tm* %20, %struct.iscsi_tm** %7, align 8
  %21 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %22 = load %struct.qedi_cmd*, %struct.qedi_cmd** %8, align 8
  %23 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %22, i32 0, i32 1
  store %struct.iscsi_task* %21, %struct.iscsi_task** %23, align 8
  %24 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %25 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ISCSI_FLAG_TM_FUNC_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @ISCSI_TM_FUNC_ABORT_TASK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %2
  %32 = load i32, i32* @CLEANUP_WAIT, align 4
  %33 = load %struct.qedi_cmd*, %struct.qedi_cmd** %8, align 8
  %34 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qedi_cmd*, %struct.qedi_cmd** %8, align 8
  %36 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %35, i32 0, i32 2
  %37 = load i32, i32* @qedi_tmf_work, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qedi_cmd*, %struct.qedi_cmd** %8, align 8
  %43 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %42, i32 0, i32 2
  %44 = call i32 @queue_work(i32 %41, i32* %43)
  br label %98

45:                                               ; preds = %2
  %46 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %47 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ISCSI_FLAG_TM_FUNC_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @ISCSI_TM_FUNC_LOGICAL_UNIT_RESET, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %45
  %54 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %55 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ISCSI_FLAG_TM_FUNC_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @ISCSI_TM_FUNC_TARGET_WARM_RESET, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %63 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ISCSI_FLAG_TM_FUNC_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @ISCSI_TM_FUNC_TARGET_COLD_RESET, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %61, %53, %45
  %70 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %71 = call i32 @qedi_get_task_idx(%struct.qedi_ctx* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %76 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %75, i32 0, i32 0
  %77 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %78 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @QEDI_ERR(i32* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %79)
  store i32 -1, i32* %3, align 4
  br label %99

81:                                               ; preds = %69
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.qedi_cmd*, %struct.qedi_cmd** %8, align 8
  %84 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %86 = load %struct.qedi_cmd*, %struct.qedi_cmd** %8, align 8
  %87 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %86, i32 0, i32 1
  %88 = load %struct.iscsi_task*, %struct.iscsi_task** %87, align 8
  %89 = call i32 @qedi_send_iscsi_tmf(%struct.qedi_conn* %85, %struct.iscsi_task* %88)
  br label %97

90:                                               ; preds = %61
  %91 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %92 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %91, i32 0, i32 0
  %93 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %94 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @QEDI_ERR(i32* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  store i32 -1, i32* %3, align 4
  br label %99

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %31
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %90, %74
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @qedi_get_task_idx(%struct.qedi_ctx*) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*, i32) #1

declare dso_local i32 @qedi_send_iscsi_tmf(%struct.qedi_conn*, %struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
