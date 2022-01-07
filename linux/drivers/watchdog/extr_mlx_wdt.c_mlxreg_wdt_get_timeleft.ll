; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mlx_wdt.c_mlxreg_wdt_get_timeleft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mlx_wdt.c_mlxreg_wdt_get_timeleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.mlxreg_wdt = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxreg_core_data* }
%struct.mlxreg_core_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @mlxreg_wdt_get_timeleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_wdt_get_timeleft(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.mlxreg_wdt*, align 8
  %4 = alloca %struct.mlxreg_core_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = call %struct.mlxreg_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.mlxreg_wdt* %8, %struct.mlxreg_wdt** %3, align 8
  %9 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %10 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %12, align 8
  %14 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %15 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %13, i64 %16
  store %struct.mlxreg_core_data* %17, %struct.mlxreg_core_data** %4, align 8
  %18 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %3, align 8
  %19 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %4, align 8
  %22 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regmap_read(i32 %20, i32 %23, i32* %5)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  ret i32 %31
}

declare dso_local %struct.mlxreg_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
