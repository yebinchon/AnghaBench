; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_session_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_session_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i64, i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ISCSI_STATE_TERMINATE = common dso_local global i64 0, align 8
@ISCSI_ERR_INVALID_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_session_failure(%struct.iscsi_session* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %10, i32 0, i32 2
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  store %struct.iscsi_conn* %12, %struct.iscsi_conn** %5, align 8
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ISCSI_STATE_TERMINATE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %20 = icmp ne %struct.iscsi_conn* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock_bh(i32* %23)
  br label %54

25:                                               ; preds = %18
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call %struct.device* @get_device(i32* %29)
  store %struct.device* %30, %struct.device** %6, align 8
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %32 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = icmp ne %struct.device* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %54

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ISCSI_ERR_INVALID_HOST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @iscsi_conn_error_event(%struct.TYPE_2__* %44, i32 %45)
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 @put_device(%struct.device* %52)
  br label %54

54:                                               ; preds = %51, %36, %21
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.device* @get_device(i32*) #1

declare dso_local i32 @iscsi_conn_error_event(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
