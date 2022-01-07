; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_add_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_add_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i64, i64, i64, i64 }
%struct.rtc_time = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_device*, %struct.rtc_time*)* @rtc_add_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_add_offset(%struct.rtc_device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.rtc_device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i64, align 8
  store %struct.rtc_device* %0, %struct.rtc_device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %7 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %58

11:                                               ; preds = %2
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %15 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %18 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %24 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %49, label %27

27:                                               ; preds = %21, %11
  %28 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %29 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %32 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %38 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %41 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %45 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = icmp sle i64 %36, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35, %21
  br label %58

50:                                               ; preds = %35, %27
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %53 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = call i32 @rtc_time64_to_tm(i64 %55, %struct.rtc_time* %56)
  br label %58

58:                                               ; preds = %50, %49, %10
  ret void
}

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @rtc_time64_to_tm(i64, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
