; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_wdt = type { i32, i32, i64 }

@SPRD_WDT_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sprd_wdt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_wdt_disable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sprd_wdt*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sprd_wdt*
  store %struct.sprd_wdt* %5, %struct.sprd_wdt** %3, align 8
  %6 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %7 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @sprd_wdt_unlock(i64 %8)
  %10 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %11 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SPRD_WDT_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 0, i64 %14)
  %16 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %17 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @sprd_wdt_lock(i64 %18)
  %20 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %21 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  %24 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %25 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  ret void
}

declare dso_local i32 @sprd_wdt_unlock(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @sprd_wdt_lock(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
