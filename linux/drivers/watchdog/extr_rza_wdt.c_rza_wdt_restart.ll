; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rza_wdt.c_rza_wdt_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rza_wdt.c_rza_wdt_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.rza_wdt = type { i64 }

@WTCSR_MAGIC = common dso_local global i32 0, align 4
@WTCSR = common dso_local global i64 0, align 8
@WRCSR = common dso_local global i64 0, align 8
@WRCSR_CLEAR_WOVF = common dso_local global i32 0, align 4
@WRCSR_MAGIC = common dso_local global i32 0, align 4
@WRCSR_RSTE = common dso_local global i32 0, align 4
@WTCNT_MAGIC = common dso_local global i32 0, align 4
@WTCNT = common dso_local global i64 0, align 8
@WTSCR_WT = common dso_local global i32 0, align 4
@WTSCR_TME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i64, i8*)* @rza_wdt_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza_wdt_restart(%struct.watchdog_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rza_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %9 = call %struct.rza_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %8)
  store %struct.rza_wdt* %9, %struct.rza_wdt** %7, align 8
  %10 = load i32, i32* @WTCSR_MAGIC, align 4
  %11 = load %struct.rza_wdt*, %struct.rza_wdt** %7, align 8
  %12 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WTCSR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writew(i32 %10, i64 %15)
  %17 = load %struct.rza_wdt*, %struct.rza_wdt** %7, align 8
  %18 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WRCSR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readb(i64 %21)
  %23 = load i32, i32* @WRCSR_CLEAR_WOVF, align 4
  %24 = load %struct.rza_wdt*, %struct.rza_wdt** %7, align 8
  %25 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WRCSR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writew(i32 %23, i64 %28)
  %30 = load i32, i32* @WRCSR_MAGIC, align 4
  %31 = load i32, i32* @WRCSR_RSTE, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.rza_wdt*, %struct.rza_wdt** %7, align 8
  %34 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WRCSR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writew(i32 %32, i64 %37)
  %39 = load i32, i32* @WTCNT_MAGIC, align 4
  %40 = or i32 %39, 255
  %41 = load %struct.rza_wdt*, %struct.rza_wdt** %7, align 8
  %42 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WTCNT, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writew(i32 %40, i64 %45)
  %47 = load i32, i32* @WTCSR_MAGIC, align 4
  %48 = load i32, i32* @WTSCR_WT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @WTSCR_TME, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.rza_wdt*, %struct.rza_wdt** %7, align 8
  %53 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @WTCSR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writew(i32 %51, i64 %56)
  %58 = call i32 (...) @wmb()
  %59 = call i32 @udelay(i32 20)
  ret i32 0
}

declare dso_local %struct.rza_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
