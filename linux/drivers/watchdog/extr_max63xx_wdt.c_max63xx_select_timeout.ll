; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_max63xx_wdt.c_max63xx_select_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_max63xx_wdt.c_max63xx_select_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max63xx_timeout = type { i32, i64 }

@nodelay = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max63xx_timeout* (%struct.max63xx_timeout*, i32)* @max63xx_select_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max63xx_timeout* @max63xx_select_timeout(%struct.max63xx_timeout* %0, i32 %1) #0 {
  %3 = alloca %struct.max63xx_timeout*, align 8
  %4 = alloca %struct.max63xx_timeout*, align 8
  %5 = alloca i32, align 4
  store %struct.max63xx_timeout* %0, %struct.max63xx_timeout** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = load %struct.max63xx_timeout*, %struct.max63xx_timeout** %4, align 8
  %8 = getelementptr inbounds %struct.max63xx_timeout, %struct.max63xx_timeout* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.max63xx_timeout*, %struct.max63xx_timeout** %4, align 8
  %14 = getelementptr inbounds %struct.max63xx_timeout, %struct.max63xx_timeout* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load i64, i64* @nodelay, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.max63xx_timeout*, %struct.max63xx_timeout** %4, align 8
  %22 = getelementptr inbounds %struct.max63xx_timeout, %struct.max63xx_timeout* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load %struct.max63xx_timeout*, %struct.max63xx_timeout** %4, align 8
  store %struct.max63xx_timeout* %26, %struct.max63xx_timeout** %3, align 8
  br label %37

27:                                               ; preds = %20, %17
  %28 = load i64, i64* @nodelay, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load %struct.max63xx_timeout*, %struct.max63xx_timeout** %4, align 8
  store %struct.max63xx_timeout* %31, %struct.max63xx_timeout** %3, align 8
  br label %37

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.max63xx_timeout*, %struct.max63xx_timeout** %4, align 8
  %35 = getelementptr inbounds %struct.max63xx_timeout, %struct.max63xx_timeout* %34, i32 1
  store %struct.max63xx_timeout* %35, %struct.max63xx_timeout** %4, align 8
  br label %6

36:                                               ; preds = %6
  store %struct.max63xx_timeout* null, %struct.max63xx_timeout** %3, align 8
  br label %37

37:                                               ; preds = %36, %30, %25
  %38 = load %struct.max63xx_timeout*, %struct.max63xx_timeout** %3, align 8
  ret %struct.max63xx_timeout* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
