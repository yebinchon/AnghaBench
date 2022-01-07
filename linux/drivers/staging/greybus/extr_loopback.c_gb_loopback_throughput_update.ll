; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_throughput_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_throughput_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback = type { i32, i32, i32, i32 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_loopback*, i32)* @gb_loopback_throughput_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_loopback_throughput_update(%struct.gb_loopback* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_loopback*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gb_loopback* %0, %struct.gb_loopback** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 8, i32* %5, align 4
  %6 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %7 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %31 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %20
  ]

9:                                                ; preds = %2
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %12 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 4, %14
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %22 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add i64 8, %25
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %2
  br label %46

32:                                               ; preds = %20, %10, %9
  %33 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %34 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @USEC_PER_SEC, align 4
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.gb_loopback*, %struct.gb_loopback** %3, align 8
  %42 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %41, i32 0, i32 3
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @gb_loopback_update_stats_window(i32* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @gb_loopback_update_stats_window(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
