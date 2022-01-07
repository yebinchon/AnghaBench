; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_make_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_make_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { i16, i16, i64, i32*, i64, i64, i64, %struct.sccb_header* }
%struct.sccb_header = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sclp_buffer* @sclp_make_buffer(i8* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.sclp_buffer*, align 8
  %8 = alloca %struct.sccb_header*, align 8
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sccb_header*
  store %struct.sccb_header* %10, %struct.sccb_header** %8, align 8
  %11 = load %struct.sccb_header*, %struct.sccb_header** %8, align 8
  %12 = ptrtoint %struct.sccb_header* %11 to i64
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = add nsw i64 %12, %13
  %15 = inttoptr i64 %14 to %struct.sclp_buffer*
  %16 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %15, i64 -1
  store %struct.sclp_buffer* %16, %struct.sclp_buffer** %7, align 8
  %17 = load %struct.sccb_header*, %struct.sccb_header** %8, align 8
  %18 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %18, i32 0, i32 7
  store %struct.sccb_header* %17, %struct.sccb_header** %19, align 8
  %20 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %23 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %25 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %27 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i16, i16* %5, align 2
  %31 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %32 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %31, i32 0, i32 0
  store i16 %30, i16* %32, align 8
  %33 = load i16, i16* %6, align 2
  %34 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %34, i32 0, i32 1
  store i16 %33, i16* %35, align 2
  %36 = load %struct.sccb_header*, %struct.sccb_header** %8, align 8
  %37 = call i32 @memset(%struct.sccb_header* %36, i32 0, i32 4)
  %38 = load %struct.sccb_header*, %struct.sccb_header** %8, align 8
  %39 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %38, i32 0, i32 0
  store i32 4, i32* %39, align 4
  %40 = load %struct.sclp_buffer*, %struct.sclp_buffer** %7, align 8
  ret %struct.sclp_buffer* %40
}

declare dso_local i32 @memset(%struct.sccb_header*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
