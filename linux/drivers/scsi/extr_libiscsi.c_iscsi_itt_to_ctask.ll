; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_itt_to_ctask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_itt_to_ctask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_conn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"task's session age %d, expected %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_task* @iscsi_itt_to_ctask(%struct.iscsi_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_task*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @iscsi_verify_itt(%struct.iscsi_conn* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.iscsi_task* null, %struct.iscsi_task** %3, align 8
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %13, i32 %14)
  store %struct.iscsi_task* %15, %struct.iscsi_task** %6, align 8
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %17 = icmp ne %struct.iscsi_task* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %12
  store %struct.iscsi_task* null, %struct.iscsi_task** %3, align 8
  br label %56

24:                                               ; preds = %18
  %25 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %26 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %30, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %24
  %38 = load i32, i32* @KERN_ERR, align 4
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @iscsi_session_printk(i32 %38, %struct.TYPE_6__* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %52)
  store %struct.iscsi_task* null, %struct.iscsi_task** %3, align 8
  br label %56

54:                                               ; preds = %24
  %55 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  store %struct.iscsi_task* %55, %struct.iscsi_task** %3, align 8
  br label %56

56:                                               ; preds = %54, %37, %23, %11
  %57 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  ret %struct.iscsi_task* %57
}

declare dso_local i64 @iscsi_verify_itt(%struct.iscsi_conn*, i32) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsi_session_printk(i32, %struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
