; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_restore_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_restore_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32, i64, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*)* @iscsi_sw_tcp_conn_restore_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_conn_restore_callbacks(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.iscsi_tcp_conn*, align 8
  %4 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %6 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %6, i32 0, i32 0
  %8 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %7, align 8
  store %struct.iscsi_tcp_conn* %8, %struct.iscsi_tcp_conn** %3, align 8
  %9 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %9, i32 0, i32 0
  %11 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %10, align 8
  store %struct.iscsi_sw_tcp_conn* %11, %struct.iscsi_sw_tcp_conn** %4, align 8
  %12 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = call i32 @write_lock_bh(i32* %18)
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %4, align 8
  %23 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = call i32 @write_unlock_bh(i32* %40)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
