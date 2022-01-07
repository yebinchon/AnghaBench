; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9052_wdt.c_da9052_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9052_wdt.c_da9052_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.da9052_wdt_data = type { i64, %struct.da9052* }
%struct.da9052 = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@DA9052_TWDMIN = common dso_local global i64 0, align 8
@DA9052_CONTROL_D_REG = common dso_local global i32 0, align 4
@DA9052_CONTROLD_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @da9052_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.da9052_wdt_data*, align 8
  %5 = alloca %struct.da9052*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %10 = call %struct.da9052_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device* %9)
  store %struct.da9052_wdt_data* %10, %struct.da9052_wdt_data** %4, align 8
  %11 = load %struct.da9052_wdt_data*, %struct.da9052_wdt_data** %4, align 8
  %12 = getelementptr inbounds %struct.da9052_wdt_data, %struct.da9052_wdt_data* %11, i32 0, i32 1
  %13 = load %struct.da9052*, %struct.da9052** %12, align 8
  store %struct.da9052* %13, %struct.da9052** %5, align 8
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.da9052_wdt_data*, %struct.da9052_wdt_data** %4, align 8
  %17 = getelementptr inbounds %struct.da9052_wdt_data, %struct.da9052_wdt_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = mul i64 %19, 1000
  %21 = load i64, i64* @HZ, align 8
  %22 = udiv i64 %20, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @DA9052_TWDMIN, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @mdelay(i64 %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.da9052*, %struct.da9052** %5, align 8
  %31 = load i32, i32* @DA9052_CONTROL_D_REG, align 4
  %32 = load i32, i32* @DA9052_CONTROLD_WATCHDOG, align 4
  %33 = call i32 @da9052_reg_update(%struct.da9052* %30, i32 %31, i32 %32, i32 128)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.da9052*, %struct.da9052** %5, align 8
  %40 = load i32, i32* @DA9052_CONTROL_D_REG, align 4
  %41 = load i32, i32* @DA9052_CONTROLD_WATCHDOG, align 4
  %42 = call i32 @da9052_reg_update(%struct.da9052* %39, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %36
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.da9052_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @mdelay(i64) #1

declare dso_local i32 @da9052_reg_update(%struct.da9052*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
