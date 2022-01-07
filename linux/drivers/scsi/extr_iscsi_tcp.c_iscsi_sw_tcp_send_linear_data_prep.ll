; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_send_linear_data_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_send_linear_data_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { %struct.TYPE_4__, %struct.ahash_request* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ahash_request = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"datalen=%zd %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"digest enabled\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"digest disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*, i8*, i64)* @iscsi_sw_tcp_send_linear_data_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_send_linear_data_prep(%struct.iscsi_conn* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iscsi_tcp_conn*, align 8
  %8 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %9 = alloca %struct.ahash_request*, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 1
  %13 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  store %struct.iscsi_tcp_conn* %13, %struct.iscsi_tcp_conn** %7, align 8
  %14 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %7, align 8
  %15 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %14, i32 0, i32 0
  %16 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %15, align 8
  store %struct.iscsi_sw_tcp_conn* %16, %struct.iscsi_sw_tcp_conn** %8, align 8
  store %struct.ahash_request* null, %struct.ahash_request** %9, align 8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %18, i8* %24)
  %26 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %8, align 8
  %27 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntoh24(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @iscsi_padded(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @iscsi_padded(i32 %36)
  %38 = icmp ne i64 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %8, align 8
  %47 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %46, i32 0, i32 1
  %48 = load %struct.ahash_request*, %struct.ahash_request** %47, align 8
  store %struct.ahash_request* %48, %struct.ahash_request** %9, align 8
  br label %49

49:                                               ; preds = %45, %3
  %50 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %8, align 8
  %51 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %56 = call i32 @iscsi_segment_init_linear(i32* %52, i8* %53, i64 %54, i32* null, %struct.ahash_request* %55)
  ret void
}

declare dso_local i32 @ISCSI_SW_TCP_DBG(%struct.iscsi_conn*, i8*, i64, i8*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @iscsi_padded(i32) #1

declare dso_local i32 @iscsi_segment_init_linear(i32*, i8*, i64, i32*, %struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
