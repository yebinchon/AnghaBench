; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { {}* }

@.str = private unnamed_addr constant [19 x i8] c"iscsi_write_space\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @iscsi_sw_tcp_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_tcp_conn*, align 8
  %5 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %6 = alloca void (%struct.sock*)*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = call i32 @read_lock_bh(i32* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 1
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  store %struct.iscsi_conn* %12, %struct.iscsi_conn** %3, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %14 = icmp ne %struct.iscsi_conn* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = call i32 @read_unlock_bh(i32* %17)
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %21, align 8
  store %struct.iscsi_tcp_conn* %22, %struct.iscsi_tcp_conn** %4, align 8
  %23 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %23, i32 0, i32 0
  %25 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %24, align 8
  store %struct.iscsi_sw_tcp_conn* %25, %struct.iscsi_sw_tcp_conn** %5, align 8
  %26 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to void (%struct.sock*)**
  %29 = load void (%struct.sock*)*, void (%struct.sock*)** %28, align 8
  store void (%struct.sock*)* %29, void (%struct.sock*)** %6, align 8
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = call i32 @read_unlock_bh(i32* %31)
  %33 = load void (%struct.sock*)*, void (%struct.sock*)** %6, align 8
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  call void %33(%struct.sock* %34)
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %36 = call i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %38 = call i32 @iscsi_conn_queue_work(%struct.iscsi_conn* %37)
  br label %39

39:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn*, i8*) #1

declare dso_local i32 @iscsi_conn_queue_work(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
