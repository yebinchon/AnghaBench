; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_remove_processed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_remove_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sccb_header = type { i64 }
%struct.evbuf_header = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_remove_processed(%struct.sccb_header* %0) #0 {
  %2 = alloca %struct.sccb_header*, align 8
  %3 = alloca %struct.evbuf_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.sccb_header* %0, %struct.sccb_header** %2, align 8
  %6 = load %struct.sccb_header*, %struct.sccb_header** %2, align 8
  %7 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %6, i64 1
  %8 = bitcast %struct.sccb_header* %7 to %struct.evbuf_header*
  store %struct.evbuf_header* %8, %struct.evbuf_header** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.sccb_header*, %struct.sccb_header** %2, align 8
  %10 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %11, 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %55, %1
  %14 = load i64, i64* %5, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = load %struct.evbuf_header*, %struct.evbuf_header** %3, align 8
  %18 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub nsw i64 %20, %19
  store i64 %21, i64* %5, align 8
  %22 = load %struct.evbuf_header*, %struct.evbuf_header** %3, align 8
  %23 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %16
  %28 = load %struct.evbuf_header*, %struct.evbuf_header** %3, align 8
  %29 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sccb_header*, %struct.sccb_header** %2, align 8
  %32 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load %struct.evbuf_header*, %struct.evbuf_header** %3, align 8
  %36 = load %struct.evbuf_header*, %struct.evbuf_header** %3, align 8
  %37 = ptrtoint %struct.evbuf_header* %36 to i64
  %38 = load %struct.evbuf_header*, %struct.evbuf_header** %3, align 8
  %39 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @memcpy(%struct.evbuf_header* %35, i8* %42, i64 %43)
  br label %55

45:                                               ; preds = %16
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = load %struct.evbuf_header*, %struct.evbuf_header** %3, align 8
  %49 = ptrtoint %struct.evbuf_header* %48 to i64
  %50 = load %struct.evbuf_header*, %struct.evbuf_header** %3, align 8
  %51 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = inttoptr i64 %53 to %struct.evbuf_header*
  store %struct.evbuf_header* %54, %struct.evbuf_header** %3, align 8
  br label %55

55:                                               ; preds = %45, %27
  br label %13

56:                                               ; preds = %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @memcpy(%struct.evbuf_header*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
