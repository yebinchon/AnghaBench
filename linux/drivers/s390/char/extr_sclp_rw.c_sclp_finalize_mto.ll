; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_finalize_mto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_finalize_mto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { %struct.msg_buf*, i64, i32*, i32, i32, %struct.sccb_header* }
%struct.msg_buf = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sccb_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sclp_buffer*)* @sclp_finalize_mto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_finalize_mto(%struct.sclp_buffer* %0) #0 {
  %2 = alloca %struct.sclp_buffer*, align 8
  %3 = alloca %struct.sccb_header*, align 8
  %4 = alloca %struct.msg_buf*, align 8
  store %struct.sclp_buffer* %0, %struct.sclp_buffer** %2, align 8
  %5 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %5, i32 0, i32 5
  %7 = load %struct.sccb_header*, %struct.sccb_header** %6, align 8
  store %struct.sccb_header* %7, %struct.sccb_header** %3, align 8
  %8 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %8, i32 0, i32 0
  %10 = load %struct.msg_buf*, %struct.msg_buf** %9, align 8
  store %struct.msg_buf* %10, %struct.msg_buf** %4, align 8
  %11 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.msg_buf*, %struct.msg_buf** %4, align 8
  %15 = getelementptr inbounds %struct.msg_buf, %struct.msg_buf* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %13
  store i64 %18, i64* %16, align 8
  %19 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.msg_buf*, %struct.msg_buf** %4, align 8
  %23 = getelementptr inbounds %struct.msg_buf, %struct.msg_buf* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %21
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %31 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.msg_buf*, %struct.msg_buf** %4, align 8
  %34 = getelementptr inbounds %struct.msg_buf, %struct.msg_buf* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %32
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load %struct.msg_buf*, %struct.msg_buf** %4, align 8
  %42 = getelementptr inbounds %struct.msg_buf, %struct.msg_buf* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sccb_header*, %struct.sccb_header** %3, align 8
  %46 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %52 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %56 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %59 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %65 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %67 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %69 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %68, i32 0, i32 0
  store %struct.msg_buf* null, %struct.msg_buf** %69, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
