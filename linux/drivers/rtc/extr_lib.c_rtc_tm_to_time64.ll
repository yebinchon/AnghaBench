; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_lib.c_rtc_tm_to_time64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_lib.c_rtc_tm_to_time64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_tm_to_time64(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %3 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %4 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 1900
  %8 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %9 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  %12 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mktime64(i32 %7, i64 %11, i32 %14, i32 %17, i32 %20, i32 %23)
  ret i32 %24
}

declare dso_local i32 @mktime64(i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
