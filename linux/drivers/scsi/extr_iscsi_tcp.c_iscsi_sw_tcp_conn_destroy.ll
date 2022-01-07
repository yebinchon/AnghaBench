; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { i64, i64 }
%struct.crypto_ahash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_conn*)* @iscsi_sw_tcp_conn_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_conn_destroy(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca %struct.iscsi_cls_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_tcp_conn*, align 8
  %5 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %2, align 8
  %7 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %7, i32 0, i32 0
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %3, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  store %struct.iscsi_tcp_conn* %12, %struct.iscsi_tcp_conn** %4, align 8
  %13 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %13, i32 0, i32 0
  %15 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %14, align 8
  store %struct.iscsi_sw_tcp_conn* %15, %struct.iscsi_sw_tcp_conn** %5, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %17 = call i32 @iscsi_sw_tcp_release_conn(%struct.iscsi_conn* %16)
  %18 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ahash_request_free(i64 %20)
  %22 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %23 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %28 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(i64 %29)
  store %struct.crypto_ahash* %30, %struct.crypto_ahash** %6, align 8
  %31 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ahash_request_free(i64 %33)
  %35 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %36 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %35)
  br label %37

37:                                               ; preds = %26, %1
  %38 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %39 = call i32 @iscsi_tcp_conn_teardown(%struct.iscsi_cls_conn* %38)
  ret void
}

declare dso_local i32 @iscsi_sw_tcp_release_conn(%struct.iscsi_conn*) #1

declare dso_local i32 @ahash_request_free(i64) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(i64) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

declare dso_local i32 @iscsi_tcp_conn_teardown(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
