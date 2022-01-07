; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_calculate_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_calculate_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback = type { i64, i64, i64, i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_loopback*, i32)* @gb_loopback_calculate_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_loopback_calculate_stats(%struct.gb_loopback* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_loopback*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gb_loopback* %0, %struct.gb_loopback** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %12 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %16 = call i32 @gb_loopback_calculate_latency_stats(%struct.gb_loopback* %15)
  br label %17

17:                                               ; preds = %10, %2
  %18 = call i32 (...) @ktime_get()
  store i32 %18, i32* %7, align 4
  %19 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %20 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @gb_loopback_calc_latency(i32 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @NSEC_PER_SEC, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %17
  %28 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %29 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %32 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %27, %17
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @gb_loopback_nsec_to_usec_latency(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @gb_loopback_throughput_update(%struct.gb_loopback* %38, i32 %39)
  %41 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @gb_loopback_requests_update(%struct.gb_loopback* %41, i32 %42)
  %44 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %45 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %48 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %35
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %54 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %56 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %35
  br label %58

58:                                               ; preds = %57, %27
  ret void
}

declare dso_local i32 @gb_loopback_calculate_latency_stats(%struct.gb_loopback*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @gb_loopback_calc_latency(i32, i32) #1

declare dso_local i32 @gb_loopback_nsec_to_usec_latency(i64) #1

declare dso_local i32 @gb_loopback_throughput_update(%struct.gb_loopback*, i32) #1

declare dso_local i32 @gb_loopback_requests_update(%struct.gb_loopback*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
