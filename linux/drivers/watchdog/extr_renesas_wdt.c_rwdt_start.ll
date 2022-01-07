; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_renesas_wdt.c_rwdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_renesas_wdt.c_rwdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.rwdt_priv = type { i32, i64 }

@RWTCSRA = common dso_local global i64 0, align 8
@RWTCSRA_TME = common dso_local global i32 0, align 4
@RWTCSRB = common dso_local global i64 0, align 8
@RWTCSRA_WRFLG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @rwdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.rwdt_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.rwdt_priv* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.rwdt_priv* %6, %struct.rwdt_priv** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  %11 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rwdt_priv, %struct.rwdt_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RWTCSRA, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readb_relaxed(i64 %15)
  %17 = load i32, i32* @RWTCSRA_TME, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* @RWTCSRA, align 8
  %23 = call i32 @rwdt_write(%struct.rwdt_priv* %20, i32 %21, i64 %22)
  %24 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %25 = call i32 @rwdt_wait_cycles(%struct.rwdt_priv* %24, i32 2)
  %26 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %27 = call i32 @rwdt_init_timeout(%struct.watchdog_device* %26)
  %28 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %29 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rwdt_priv, %struct.rwdt_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* @RWTCSRA, align 8
  %33 = call i32 @rwdt_write(%struct.rwdt_priv* %28, i32 %31, i64 %32)
  %34 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %35 = load i64, i64* @RWTCSRB, align 8
  %36 = call i32 @rwdt_write(%struct.rwdt_priv* %34, i32 0, i64 %35)
  br label %37

37:                                               ; preds = %47, %1
  %38 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rwdt_priv, %struct.rwdt_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RWTCSRA, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readb_relaxed(i64 %42)
  %44 = load i32, i32* @RWTCSRA_WRFLG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = call i32 (...) @cpu_relax()
  br label %37

49:                                               ; preds = %37
  %50 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %51 = load %struct.rwdt_priv*, %struct.rwdt_priv** %3, align 8
  %52 = getelementptr inbounds %struct.rwdt_priv, %struct.rwdt_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RWTCSRA_TME, align 4
  %55 = or i32 %53, %54
  %56 = load i64, i64* @RWTCSRA, align 8
  %57 = call i32 @rwdt_write(%struct.rwdt_priv* %50, i32 %55, i64 %56)
  ret i32 0
}

declare dso_local %struct.rwdt_priv* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @readb_relaxed(i64) #1

declare dso_local i32 @rwdt_write(%struct.rwdt_priv*, i32, i64) #1

declare dso_local i32 @rwdt_wait_cycles(%struct.rwdt_priv*, i32) #1

declare dso_local i32 @rwdt_init_timeout(%struct.watchdog_device*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
