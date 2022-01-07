; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rza_wdt.c_rza_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rza_wdt.c_rza_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.rza_wdt = type { i32, i64, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @rza_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.rza_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.rza_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.rza_wdt* %5, %struct.rza_wdt** %3, align 8
  %6 = load i32, i32* @WTCSR_MAGIC, align 4
  %7 = load %struct.rza_wdt*, %struct.rza_wdt** %3, align 8
  %8 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @WTCSR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writew(i32 %6, i64 %11)
  %13 = load %struct.rza_wdt*, %struct.rza_wdt** %3, align 8
  %14 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WRCSR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readb(i64 %17)
  %19 = load i32, i32* @WRCSR_CLEAR_WOVF, align 4
  %20 = load %struct.rza_wdt*, %struct.rza_wdt** %3, align 8
  %21 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WRCSR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writew(i32 %19, i64 %24)
  %26 = load %struct.rza_wdt*, %struct.rza_wdt** %3, align 8
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %28 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rza_wdt_calc_timeout(%struct.rza_wdt* %26, i32 %29)
  %31 = load i32, i32* @WRCSR_MAGIC, align 4
  %32 = load i32, i32* @WRCSR_RSTE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.rza_wdt*, %struct.rza_wdt** %3, align 8
  %35 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WRCSR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writew(i32 %33, i64 %38)
  %40 = load i32, i32* @WTCNT_MAGIC, align 4
  %41 = load %struct.rza_wdt*, %struct.rza_wdt** %3, align 8
  %42 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %40, %43
  %45 = load %struct.rza_wdt*, %struct.rza_wdt** %3, align 8
  %46 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WTCNT, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writew(i32 %44, i64 %49)
  %51 = load i32, i32* @WTCSR_MAGIC, align 4
  %52 = load i32, i32* @WTSCR_WT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @WTSCR_TME, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.rza_wdt*, %struct.rza_wdt** %3, align 8
  %57 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @WTSCR_CKS(i32 %58)
  %60 = or i32 %55, %59
  %61 = load %struct.rza_wdt*, %struct.rza_wdt** %3, align 8
  %62 = getelementptr inbounds %struct.rza_wdt, %struct.rza_wdt* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WTCSR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writew(i32 %60, i64 %65)
  ret i32 0
}

declare dso_local %struct.rza_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @rza_wdt_calc_timeout(%struct.rza_wdt*, i32) #1

declare dso_local i32 @WTSCR_CKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
