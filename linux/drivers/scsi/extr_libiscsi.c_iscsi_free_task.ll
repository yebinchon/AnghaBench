; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_free_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_free_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.scsi_cmnd*, i32, %struct.iscsi_conn* }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.iscsi_conn = type { %struct.iscsi_task*, %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.iscsi_task*)* }

@.str = private unnamed_addr constant [38 x i8] c"freeing task itt 0x%x state %d sc %p\0A\00", align 1
@ISCSI_TASK_FREE = common dso_local global i32 0, align 4
@ISCSI_TASK_REQUEUE_SCSIQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task*)* @iscsi_free_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_free_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %7 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %7, i32 0, i32 3
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %3, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 1
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  store %struct.iscsi_session* %12, %struct.iscsi_session** %4, align 8
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %13, i32 0, i32 1
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %5, align 8
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %20 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %21 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %24 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %27 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %26, i32 0, i32 1
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %27, align 8
  %29 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, %struct.scsi_cmnd* %28)
  %30 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.iscsi_task*)*, i32 (%struct.iscsi_task*)** %33, align 8
  %35 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %36 = call i32 %34(%struct.iscsi_task* %35)
  %37 = load i32, i32* @ISCSI_TASK_FREE, align 4
  %38 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %39 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %41 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %40, i32 0, i32 1
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %41, align 8
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 0
  %44 = load %struct.iscsi_task*, %struct.iscsi_task** %43, align 8
  %45 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %46 = icmp eq %struct.iscsi_task* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  br label %70

48:                                               ; preds = %1
  %49 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = bitcast %struct.iscsi_task** %2 to i8*
  %53 = call i32 @kfifo_in(i32* %51, i8* %52, i32 8)
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %55 = icmp ne %struct.scsi_cmnd* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @ISCSI_TASK_REQUEUE_SCSIQ, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 0
  %66 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %65, align 8
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %68 = call i32 %66(%struct.scsi_cmnd* %67)
  br label %69

69:                                               ; preds = %63, %56
  br label %70

70:                                               ; preds = %47, %69, %48
  ret void
}

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.iscsi_session*, i8*, i32, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
