; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tcp_conn = type { i32 }
%struct.iscsi_segment = type { i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"copied %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"copying %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*, i8*, i32)* @iscsi_tcp_segment_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_tcp_segment_recv(%struct.iscsi_tcp_conn* %0, %struct.iscsi_segment* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_tcp_conn*, align 8
  %6 = alloca %struct.iscsi_segment*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_tcp_conn* %0, %struct.iscsi_tcp_conn** %5, align 8
  store %struct.iscsi_segment* %1, %struct.iscsi_segment** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %28, %4
  %12 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %5, align 8
  %13 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @iscsi_tcp_segment_done(%struct.iscsi_tcp_conn* %12, %struct.iscsi_segment* %13, i32 1, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %61

18:                                               ; preds = %11
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ISCSI_DBG_TCP(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %61

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub i32 %29, %30
  %32 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %33 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %36 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = call i32 @min(i32 %31, i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ISCSI_DBG_TCP(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %46 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.iscsi_segment*, %struct.iscsi_segment** %6, align 8
  %49 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @memcpy(i64 %51, i8* %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %11

61:                                               ; preds = %22, %11
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i32 @iscsi_tcp_segment_done(%struct.iscsi_tcp_conn*, %struct.iscsi_segment*, i32, i32) #1

declare dso_local i32 @ISCSI_DBG_TCP(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
