; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwreq.c_ccw_request_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwreq.c_ccw_request_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ccw_request }
%struct.ccw_request = type { i32, i32, i64, i64, i64, i32, i32, i64 }

@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_request_start(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.ccw_request*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ccw_request* %7, %struct.ccw_request** %3, align 8
  %8 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %9 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %14 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %13, i32 0, i32 0
  store i32 32896, i32* %14, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %17 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %20 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %15, %12
  %22 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %23 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %26 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %28 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %31 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lpm_adjust(i32 %29, i32 %32)
  %34 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %35 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %37 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %39 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %41 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %43 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %21
  br label %50

47:                                               ; preds = %21
  %48 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %49 = call i32 @ccwreq_do(%struct.ccw_device* %48)
  br label %55

50:                                               ; preds = %46
  %51 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %52 = load i32, i32* @EACCES, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 @ccwreq_stop(%struct.ccw_device* %51, i32 %53)
  br label %55

55:                                               ; preds = %50, %47
  ret void
}

declare dso_local i32 @lpm_adjust(i32, i32) #1

declare dso_local i32 @ccwreq_do(%struct.ccw_device*) #1

declare dso_local i32 @ccwreq_stop(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
