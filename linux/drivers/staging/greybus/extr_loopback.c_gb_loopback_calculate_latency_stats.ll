; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_calculate_latency_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_calculate_latency_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_loopback*)* @gb_loopback_calculate_latency_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_loopback_calculate_latency_stats(%struct.gb_loopback* %0) #0 {
  %2 = alloca %struct.gb_loopback*, align 8
  %3 = alloca i32, align 4
  store %struct.gb_loopback* %0, %struct.gb_loopback** %2, align 8
  %4 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %5 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @gb_loopback_nsec_to_usec_latency(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %9 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %8, i32 0, i32 5
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @gb_loopback_update_stats(i32* %9, i32 %10)
  %12 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %13 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %12, i32 0, i32 4
  %14 = bitcast i32* %3 to i8*
  %15 = call i32 @kfifo_in(i32* %13, i8* %14, i32 4)
  %16 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %17 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %16, i32 0, i32 3
  %18 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %19 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gb_loopback_update_stats(i32* %17, i32 %20)
  %22 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %23 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %22, i32 0, i32 1
  %24 = load %struct.gb_loopback*, %struct.gb_loopback** %2, align 8
  %25 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gb_loopback_update_stats(i32* %23, i32 %26)
  ret void
}

declare dso_local i32 @gb_loopback_nsec_to_usec_latency(i32) #1

declare dso_local i32 @gb_loopback_update_stats(i32*, i32) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
