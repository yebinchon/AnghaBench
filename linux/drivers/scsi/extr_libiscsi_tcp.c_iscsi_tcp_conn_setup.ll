; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_conn_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_conn_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn*, i32 }
%struct.iscsi_tcp_conn = type { %struct.iscsi_tcp_conn*, %struct.iscsi_conn* }
%struct.iscsi_cls_session = type { i32 }

@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_conn* @iscsi_tcp_conn_setup(%struct.iscsi_cls_session* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_cls_conn*, align 8
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.iscsi_cls_conn*, align 8
  %10 = alloca %struct.iscsi_tcp_conn*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 16, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session* %11, i32 %15, i32 %16)
  store %struct.iscsi_cls_conn* %17, %struct.iscsi_cls_conn** %9, align 8
  %18 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %19 = icmp ne %struct.iscsi_cls_conn* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %4, align 8
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %23 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %22, i32 0, i32 0
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %23, align 8
  store %struct.iscsi_conn* %24, %struct.iscsi_conn** %8, align 8
  %25 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %29 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %28, i32 0, i32 0
  %30 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %29, align 8
  store %struct.iscsi_tcp_conn* %30, %struct.iscsi_tcp_conn** %10, align 8
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %32 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %10, align 8
  %33 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %32, i32 0, i32 1
  store %struct.iscsi_conn* %31, %struct.iscsi_conn** %33, align 8
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 0
  %36 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %35, align 8
  %37 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %36, i64 16
  %38 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %10, align 8
  %39 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %38, i32 0, i32 0
  store %struct.iscsi_tcp_conn* %37, %struct.iscsi_tcp_conn** %39, align 8
  %40 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  store %struct.iscsi_cls_conn* %40, %struct.iscsi_cls_conn** %4, align 8
  br label %41

41:                                               ; preds = %21, %20
  %42 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %4, align 8
  ret %struct.iscsi_cls_conn* %42
}

declare dso_local %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
