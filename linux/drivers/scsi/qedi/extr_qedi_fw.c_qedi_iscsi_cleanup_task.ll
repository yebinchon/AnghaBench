; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_iscsi_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_iscsi_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, %struct.qedi_cmd*, %struct.iscsi_conn* }
%struct.qedi_cmd = type { i32, i32 }
%struct.iscsi_conn = type { %struct.qedi_conn* }
%struct.qedi_conn = type { %struct.qedi_endpoint*, i32, %struct.TYPE_2__* }
%struct.qedi_endpoint = type { %struct.iscsi_task_params* }
%struct.iscsi_task_params = type { i32, %struct.iscsi_task_params* }
%struct.TYPE_2__ = type { i32 }

@QEDI_LOG_SCSI_TM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"issue cleanup tid=0x%x itt=0x%x task_state=%d cmd_state=0%x cid=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedi_iscsi_cleanup_task(%struct.iscsi_task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_task_params, align 8
  %7 = alloca %struct.qedi_endpoint*, align 8
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.qedi_conn*, align 8
  %10 = alloca %struct.qedi_cmd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %13, i32 0, i32 3
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %8, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 0
  %18 = load %struct.qedi_conn*, %struct.qedi_conn** %17, align 8
  store %struct.qedi_conn* %18, %struct.qedi_conn** %9, align 8
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %19, i32 0, i32 2
  %21 = load %struct.qedi_cmd*, %struct.qedi_cmd** %20, align 8
  store %struct.qedi_cmd* %21, %struct.qedi_cmd** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %23 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @QEDI_LOG_SCSI_TM, align 4
  %27 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %28 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @get_itt(i32 %32)
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %38 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %41 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @QEDI_INFO(i32* %25, i32 %26, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33, i32 %36, i32 %39, i32 %42)
  %44 = call i32 @memset(%struct.iscsi_task_params* %6, i32 0, i32 16)
  %45 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %46 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %45, i32 0, i32 0
  %47 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %46, align 8
  store %struct.qedi_endpoint* %47, %struct.qedi_endpoint** %7, align 8
  %48 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %49 = call i64 @qedi_get_wqe_idx(%struct.qedi_conn* %48)
  store i64 %49, i64* %11, align 8
  %50 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %7, align 8
  %51 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %50, i32 0, i32 0
  %52 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %52, i64 %53
  %55 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %6, i32 0, i32 1
  store %struct.iscsi_task_params* %54, %struct.iscsi_task_params** %55, align 8
  %56 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %6, i32 0, i32 1
  %57 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %56, align 8
  %58 = call i32 @memset(%struct.iscsi_task_params* %57, i32 0, i32 4)
  %59 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %60 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %6, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = call i32 @init_cleanup_task(%struct.iscsi_task_params* %6)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %2
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %3, align 4
  br label %71

68:                                               ; preds = %2
  %69 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %70 = call i32 @qedi_ring_doorbell(%struct.qedi_conn* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %66
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_itt(i32) #1

declare dso_local i32 @memset(%struct.iscsi_task_params*, i32, i32) #1

declare dso_local i64 @qedi_get_wqe_idx(%struct.qedi_conn*) #1

declare dso_local i32 @init_cleanup_task(%struct.iscsi_task_params*) #1

declare dso_local i32 @qedi_ring_doorbell(%struct.qedi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
