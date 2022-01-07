; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_set_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_set_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32, i32, i32, i32, %struct.iscsi_conn* }

@iscsi_sw_tcp_data_ready = common dso_local global i32 0, align 4
@iscsi_sw_tcp_state_change = common dso_local global i32 0, align 4
@iscsi_sw_tcp_write_space = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*)* @iscsi_sw_tcp_conn_set_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_conn_set_callbacks(%struct.iscsi_conn* %0) #0 {
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
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 4
  store %struct.iscsi_conn* %20, %struct.iscsi_conn** %22, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @iscsi_sw_tcp_data_ready, align 4
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @iscsi_sw_tcp_state_change, align 4
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @iscsi_sw_tcp_write_space, align 4
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = call i32 @write_unlock_bh(i32* %48)
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
