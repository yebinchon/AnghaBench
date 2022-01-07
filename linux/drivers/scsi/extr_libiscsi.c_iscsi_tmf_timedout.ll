; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_tmf_timedout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_tmf_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.timer_list = type { i32 }

@tmf_timer = common dso_local global i32 0, align 4
@TMF_QUEUED = common dso_local global i64 0, align 8
@TMF_TIMEDOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"tmf timedout\0A\00", align 1
@conn = common dso_local global %struct.iscsi_conn* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @iscsi_tmf_timedout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_tmf_timedout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %6 = ptrtoint %struct.iscsi_conn* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @tmf_timer, align 4
  %9 = call %struct.iscsi_conn* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %3, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 2
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  store %struct.iscsi_session* %12, %struct.iscsi_session** %4, align 8
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TMF_QUEUED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i64, i64* @TMF_TIMEDOUT, align 8
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %26 = call i32 @ISCSI_DBG_EH(%struct.iscsi_session* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %28 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %27, i32 0, i32 1
  %29 = call i32 @wake_up(i32* %28)
  br label %30

30:                                               ; preds = %21, %1
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  ret void
}

declare dso_local %struct.iscsi_conn* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ISCSI_DBG_EH(%struct.iscsi_session*, i8*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
