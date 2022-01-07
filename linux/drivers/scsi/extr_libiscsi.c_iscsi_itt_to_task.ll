; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_itt_to_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_itt_to_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32 }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, %struct.iscsi_task**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iscsi_conn*, i32, i32*, i32*)* }

@RESERVED_ITT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_session*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 0
  %10 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  store %struct.iscsi_session* %10, %struct.iscsi_session** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RESERVED_ITT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.iscsi_task* null, %struct.iscsi_task** %3, align 8
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.iscsi_conn*, i32, i32*, i32*)*, i32 (%struct.iscsi_conn*, i32, i32*, i32*)** %19, align 8
  %21 = icmp ne i32 (%struct.iscsi_conn*, i32, i32*, i32*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.iscsi_conn*, i32, i32*, i32*)*, i32 (%struct.iscsi_conn*, i32, i32*, i32*)** %26, align 8
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 %27(%struct.iscsi_conn* %28, i32 %29, i32* %7, i32* null)
  br label %34

31:                                               ; preds = %15
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @get_itt(i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %37 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.iscsi_task* null, %struct.iscsi_task** %3, align 8
  br label %49

41:                                               ; preds = %34
  %42 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %42, i32 0, i32 1
  %44 = load %struct.iscsi_task**, %struct.iscsi_task*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.iscsi_task*, %struct.iscsi_task** %44, i64 %46
  %48 = load %struct.iscsi_task*, %struct.iscsi_task** %47, align 8
  store %struct.iscsi_task* %48, %struct.iscsi_task** %3, align 8
  br label %49

49:                                               ; preds = %41, %40, %14
  %50 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  ret %struct.iscsi_task* %50
}

declare dso_local i32 @get_itt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
