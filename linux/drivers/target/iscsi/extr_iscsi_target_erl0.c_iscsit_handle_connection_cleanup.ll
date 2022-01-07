; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_handle_connection_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_handle_connection_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Performing cleanup for failed iSCSI Connection ID: %hu from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*)* @iscsit_handle_connection_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_handle_connection_cleanup(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %4 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %4, i32 0, i32 1
  %6 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  store %struct.iscsi_session* %6, %struct.iscsi_session** %3, align 8
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %14, i32 0, i32 2
  %16 = call i32 @atomic_read(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %19, i32 0, i32 1
  %21 = call i32 @atomic_read(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %25 = call i32 @iscsit_connection_recovery_transport_reset(%struct.iscsi_conn* %24)
  br label %38

26:                                               ; preds = %18, %13, %1
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %28 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34)
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %37 = call i32 @iscsit_close_connection(%struct.iscsi_conn* %36)
  br label %38

38:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @iscsit_connection_recovery_transport_reset(%struct.iscsi_conn*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @iscsit_close_connection(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
