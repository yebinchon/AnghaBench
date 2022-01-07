; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.iscsi_conn* }

@iscsi_sw_tcp_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @iscsi_sw_tcp_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_data_ready(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_tcp_conn*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = call i32 @read_lock_bh(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 1
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  store %struct.iscsi_conn* %11, %struct.iscsi_conn** %3, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %13 = icmp ne %struct.iscsi_conn* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = call i32 @read_unlock_bh(i32* %16)
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %20, align 8
  store %struct.iscsi_tcp_conn* %21, %struct.iscsi_tcp_conn** %4, align 8
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.iscsi_conn* %22, %struct.iscsi_conn** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = load i32, i32* @iscsi_sw_tcp_recv, align 4
  %28 = call i32 @tcp_read_sock(%struct.sock* %26, %struct.TYPE_7__* %5, i32 %27)
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i32 @iscsi_sw_sk_state_check(%struct.sock* %29)
  %31 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @iscsi_tcp_segment_unmap(i32* %33)
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = call i32 @read_unlock_bh(i32* %36)
  br label %38

38:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @tcp_read_sock(%struct.sock*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @iscsi_sw_sk_state_check(%struct.sock*) #1

declare dso_local i32 @iscsi_tcp_segment_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
