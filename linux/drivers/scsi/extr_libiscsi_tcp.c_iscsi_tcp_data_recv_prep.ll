; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_data_recv_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_data_recv_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tcp_conn = type { %struct.TYPE_6__, %struct.ahash_request*, %struct.iscsi_conn* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ahash_request = type { i32 }
%struct.iscsi_conn = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CAP_DIGEST_OFFLOAD = common dso_local global i32 0, align 4
@iscsi_tcp_data_recv_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_tcp_conn*)* @iscsi_tcp_data_recv_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_tcp_data_recv_prep(%struct.iscsi_tcp_conn* %0) #0 {
  %2 = alloca %struct.iscsi_tcp_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  store %struct.iscsi_tcp_conn* %0, %struct.iscsi_tcp_conn** %2, align 8
  %5 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %5, i32 0, i32 2
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_conn* %7, %struct.iscsi_conn** %3, align 8
  store %struct.ahash_request* null, %struct.ahash_request** %4, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CAP_DIGEST_OFFLOAD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %2, align 8
  %25 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %24, i32 0, i32 1
  %26 = load %struct.ahash_request*, %struct.ahash_request** %25, align 8
  store %struct.ahash_request* %26, %struct.ahash_request** %4, align 8
  br label %27

27:                                               ; preds = %23, %12, %1
  %28 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %2, align 8
  %29 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %2, align 8
  %35 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @iscsi_tcp_data_recv_done, align 4
  %39 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %40 = call i32 @iscsi_segment_init_linear(i32* %30, i32 %33, i32 %37, i32 %38, %struct.ahash_request* %39)
  ret void
}

declare dso_local i32 @iscsi_segment_init_linear(i32*, i32, i32, i32, %struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
