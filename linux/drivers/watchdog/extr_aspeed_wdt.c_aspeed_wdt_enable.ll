; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_aspeed_wdt.c_aspeed_wdt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_aspeed_wdt.c_aspeed_wdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_wdt = type { i32, i64 }

@WDT_CTRL_ENABLE = common dso_local global i32 0, align 4
@WDT_CTRL = common dso_local global i64 0, align 8
@WDT_RELOAD_VALUE = common dso_local global i64 0, align 8
@WDT_RESTART_MAGIC = common dso_local global i32 0, align 4
@WDT_RESTART = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_wdt*, i32)* @aspeed_wdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_wdt_enable(%struct.aspeed_wdt* %0, i32 %1) #0 {
  %3 = alloca %struct.aspeed_wdt*, align 8
  %4 = alloca i32, align 4
  store %struct.aspeed_wdt* %0, %struct.aspeed_wdt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @WDT_CTRL_ENABLE, align 4
  %6 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %3, align 8
  %7 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %3, align 8
  %11 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WDT_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 0, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %3, align 8
  %18 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WDT_RELOAD_VALUE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load i32, i32* @WDT_RESTART_MAGIC, align 4
  %24 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %3, align 8
  %25 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WDT_RESTART, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %3, align 8
  %31 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %3, align 8
  %34 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WDT_CTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
