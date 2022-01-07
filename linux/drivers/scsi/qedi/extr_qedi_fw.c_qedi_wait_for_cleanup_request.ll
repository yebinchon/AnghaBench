; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_wait_for_cleanup_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_wait_for_cleanup_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32 }
%struct.qedi_conn = type { i32, i32 }
%struct.iscsi_task = type { i64 }
%struct.qedi_cmd = type { i64, i64, i32 }
%struct.qedi_work_map = type { i32 }

@CLEANUP_RECV = common dso_local global i64 0, align 8
@TYPEIO = common dso_local global i64 0, align 8
@RESPONSE_RECEIVED = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@CLEANUP_WAIT_FAILED = common dso_local global i64 0, align 8
@QEDI_LOG_SCSI_TM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Cleanup timedout tid=0x%x, issue connection recovery, cid=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, %struct.qedi_conn*, %struct.iscsi_task*, %struct.qedi_cmd*, %struct.qedi_work_map*)* @qedi_wait_for_cleanup_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_wait_for_cleanup_request(%struct.qedi_ctx* %0, %struct.qedi_conn* %1, %struct.iscsi_task* %2, %struct.qedi_cmd* %3, %struct.qedi_work_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedi_ctx*, align 8
  %8 = alloca %struct.qedi_conn*, align 8
  %9 = alloca %struct.iscsi_task*, align 8
  %10 = alloca %struct.qedi_cmd*, align 8
  %11 = alloca %struct.qedi_work_map*, align 8
  %12 = alloca %struct.qedi_cmd*, align 8
  %13 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %7, align 8
  store %struct.qedi_conn* %1, %struct.qedi_conn** %8, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %9, align 8
  store %struct.qedi_cmd* %3, %struct.qedi_cmd** %10, align 8
  store %struct.qedi_work_map* %4, %struct.qedi_work_map** %11, align 8
  %14 = load %struct.iscsi_task*, %struct.iscsi_task** %9, align 8
  %15 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.qedi_cmd*
  store %struct.qedi_cmd* %17, %struct.qedi_cmd** %12, align 8
  %18 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %19 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %22 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CLEANUP_RECV, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %40, label %26

26:                                               ; preds = %5
  %27 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %28 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TYPEIO, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.qedi_cmd*, %struct.qedi_cmd** %12, align 8
  %34 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RESPONSE_RECEIVED, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i1 [ false, %26 ], [ %37, %32 ]
  br label %40

40:                                               ; preds = %38, %5
  %41 = phi i1 [ true, %5 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @HZ, align 4
  %44 = mul nsw i32 5, %43
  %45 = call i32 @wait_event_interruptible_timeout(i32 %20, i32 %42, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* @CLEANUP_WAIT_FAILED, align 8
  %50 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %51 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* @QEDI_LOG_SCSI_TM, align 4
  %55 = load %struct.qedi_cmd*, %struct.qedi_cmd** %12, align 8
  %56 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  %59 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @QEDI_INFO(i32* %53, i32 %54, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  store i32 -1, i32* %6, align 4
  br label %63

62:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
