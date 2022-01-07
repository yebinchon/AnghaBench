; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_buffer_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_buffer_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { i64, i32*, %struct.sccb_header* }
%struct.sccb_header = type { i32 }

@MAX_SCCB_ROOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_buffer_space(%struct.sclp_buffer* %0) #0 {
  %2 = alloca %struct.sclp_buffer*, align 8
  %3 = alloca %struct.sccb_header*, align 8
  %4 = alloca i32, align 4
  store %struct.sclp_buffer* %0, %struct.sclp_buffer** %2, align 8
  %5 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %5, i32 0, i32 2
  %7 = load %struct.sccb_header*, %struct.sccb_header** %6, align 8
  store %struct.sccb_header* %7, %struct.sccb_header** %3, align 8
  %8 = load i32, i32* @MAX_SCCB_ROOM, align 4
  %9 = load %struct.sccb_header*, %struct.sccb_header** %3, align 8
  %10 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 4, %20
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %17, %1
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
