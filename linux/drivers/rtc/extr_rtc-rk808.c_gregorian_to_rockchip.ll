; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_gregorian_to_rockchip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rk808.c_gregorian_to_rockchip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*)* @gregorian_to_rockchip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gregorian_to_rockchip(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %5 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %6 = call i32 @nov2dec_transitions(%struct.rtc_time* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %8 = call i32 @rtc_tm_to_time64(%struct.rtc_time* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, 86400
  %12 = sub nsw i32 %9, %11
  %13 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %14 = call i32 @rtc_time64_to_tm(i32 %12, %struct.rtc_time* %13)
  %15 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %16 = call i32 @nov2dec_transitions(%struct.rtc_time* %15)
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp eq i32 %23, 11
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %38

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 1
  %34 = mul nsw i32 %33, 86400
  %35 = sub nsw i32 %31, %34
  %36 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %37 = call i32 @rtc_time64_to_tm(i32 %35, %struct.rtc_time* %36)
  br label %38

38:                                               ; preds = %30, %25
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @nov2dec_transitions(%struct.rtc_time*) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
