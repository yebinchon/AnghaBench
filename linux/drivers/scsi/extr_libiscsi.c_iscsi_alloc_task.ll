; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_alloc_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_alloc_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, i32, i8*, i8*, %struct.scsi_cmnd*, %struct.iscsi_conn*, i32, i32 }
%struct.iscsi_conn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }

@ISCSI_TASK_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_task* (%struct.iscsi_conn*, %struct.scsi_cmnd*)* @iscsi_alloc_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_task* @iscsi_alloc_task(%struct.iscsi_conn* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.iscsi_task*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = bitcast %struct.iscsi_task** %6 to i8*
  %13 = call i32 @kfifo_out(i32* %11, i8* %12, i32 8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.iscsi_task* null, %struct.iscsi_task** %3, align 8
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %26 = bitcast %struct.iscsi_task* %25 to i8*
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %31 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %30, i32 0, i32 8
  %32 = call i32 @refcount_set(i32* %31, i32 1)
  %33 = load i32, i32* @ISCSI_TASK_PENDING, align 4
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %37 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %38 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %37, i32 0, i32 6
  store %struct.iscsi_conn* %36, %struct.iscsi_conn** %38, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %40 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %41 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %40, i32 0, i32 5
  store %struct.scsi_cmnd* %39, %struct.scsi_cmnd** %41, align 8
  %42 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i8*, i8** @jiffies, align 8
  %45 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %46 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @jiffies, align 8
  %48 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %49 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %51 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %53 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %52, i32 0, i32 2
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  store %struct.iscsi_task* %55, %struct.iscsi_task** %3, align 8
  br label %56

56:                                               ; preds = %16, %15
  %57 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  ret %struct.iscsi_task* %57
}

declare dso_local i32 @kfifo_out(i32*, i8*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
