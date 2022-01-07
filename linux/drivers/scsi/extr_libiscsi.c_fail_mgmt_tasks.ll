; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_fail_mgmt_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_fail_mgmt_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.iscsi_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.iscsi_task** }
%struct.iscsi_task = type { i64, i32, i64 }

@ISCSI_TASK_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"failing mgmt itt 0x%x state %d\0A\00", align 1
@ISCSI_TASK_ABRT_SESS_RECOV = common dso_local global i32 0, align 4
@ISCSI_TASK_PENDING = common dso_local global i64 0, align 8
@ISCSI_TASK_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*, %struct.iscsi_conn*)* @fail_mgmt_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_mgmt_tasks(%struct.iscsi_session* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %3, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %67, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.iscsi_task**, %struct.iscsi_task*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iscsi_task*, %struct.iscsi_task** %21, i64 %23
  %25 = load %struct.iscsi_task*, %struct.iscsi_task** %24, align 8
  store %struct.iscsi_task* %25, %struct.iscsi_task** %5, align 8
  %26 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %67

31:                                               ; preds = %16
  %32 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %33 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ISCSI_TASK_FREE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %67

38:                                               ; preds = %31
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %43 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ISCSI_DBG_SESSION(%struct.TYPE_2__* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %47)
  %49 = load i32, i32* @ISCSI_TASK_ABRT_SESS_RECOV, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %51 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ISCSI_TASK_PENDING, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %38
  %58 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %59 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @iscsi_complete_task(%struct.iscsi_task* %61, i32 %62)
  %64 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %65 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  br label %67

67:                                               ; preds = %57, %37, %30
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %8

70:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.TYPE_2__*, i8*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iscsi_complete_task(%struct.iscsi_task*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
