; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32 }
%struct.rtc_timer = type { i8*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_timer_start(%struct.rtc_device* %0, %struct.rtc_timer* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.rtc_device*, align 8
  %6 = alloca %struct.rtc_timer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %5, align 8
  store %struct.rtc_timer* %1, %struct.rtc_timer** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %11 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.rtc_timer*, %struct.rtc_timer** %6, align 8
  %14 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %19 = load %struct.rtc_timer*, %struct.rtc_timer** %6, align 8
  %20 = call i32 @rtc_timer_remove(%struct.rtc_device* %18, %struct.rtc_timer* %19)
  br label %21

21:                                               ; preds = %17, %4
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.rtc_timer*, %struct.rtc_timer** %6, align 8
  %24 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.rtc_timer*, %struct.rtc_timer** %6, align 8
  %28 = getelementptr inbounds %struct.rtc_timer, %struct.rtc_timer* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %30 = load %struct.rtc_timer*, %struct.rtc_timer** %6, align 8
  %31 = call i32 @rtc_timer_enqueue(%struct.rtc_device* %29, %struct.rtc_timer* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtc_timer_remove(%struct.rtc_device*, %struct.rtc_timer*) #1

declare dso_local i32 @rtc_timer_enqueue(%struct.rtc_device*, %struct.rtc_timer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
