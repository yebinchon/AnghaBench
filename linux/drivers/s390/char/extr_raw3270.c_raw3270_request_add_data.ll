; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_request_add_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_request_add_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_request = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw3270_request_add_data(%struct.raw3270_request* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.raw3270_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.raw3270_request* %0, %struct.raw3270_request** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %10 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %8, %12
  %14 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %15 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @E2BIG, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %23 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %26 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %24, %28
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @memcpy(i64 %29, i8* %30, i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %35 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, %33
  store i64 %38, i64* %36, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %21, %18
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
