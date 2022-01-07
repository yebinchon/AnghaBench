; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_subtract_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_subtract_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i64, i64, i64 }
%struct.rtc_time = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_device*, %struct.rtc_time*)* @rtc_subtract_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_subtract_offset(%struct.rtc_device* %0, %struct.rtc_time* %1) #0 {
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
  br label %34

11:                                               ; preds = %2
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %16 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %22 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %34

26:                                               ; preds = %19, %11
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %29 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = call i32 @rtc_time64_to_tm(i64 %31, %struct.rtc_time* %32)
  br label %34

34:                                               ; preds = %26, %25, %10
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
