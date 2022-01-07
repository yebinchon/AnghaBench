; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_wdt = type { i64, i32, i32 }

@SPRD_WDT_CTRL = common dso_local global i64 0, align 8
@SPRD_WDT_NEW_VER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_wdt*)* @sprd_wdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_wdt_enable(%struct.sprd_wdt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sprd_wdt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sprd_wdt* %0, %struct.sprd_wdt** %3, align 8
  %6 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %7 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @clk_prepare_enable(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %16 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_prepare_enable(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %23 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %14
  %28 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %29 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @sprd_wdt_unlock(i64 %30)
  %32 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %33 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SPRD_WDT_CTRL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @SPRD_WDT_NEW_VER_EN, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %43 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPRD_WDT_CTRL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 %41, i64 %46)
  %48 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %49 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @sprd_wdt_lock(i64 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %27, %21, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @sprd_wdt_unlock(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @sprd_wdt_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
