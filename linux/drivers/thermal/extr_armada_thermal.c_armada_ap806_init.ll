; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_ap806_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_ap806_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.armada_thermal_priv = type { i32, %struct.armada_thermal_data* }
%struct.armada_thermal_data = type { i32 }

@CONTROL0_TSEN_RESET = common dso_local global i32 0, align 4
@CONTROL0_TSEN_START = common dso_local global i32 0, align 4
@CONTROL0_TSEN_ENABLE = common dso_local global i32 0, align 4
@CONTROL0_TSEN_OSR_MAX = common dso_local global i32 0, align 4
@CONTROL0_TSEN_OSR_SHIFT = common dso_local global i32 0, align 4
@CONTROL0_TSEN_AVG_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.armada_thermal_priv*)* @armada_ap806_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_ap806_init(%struct.platform_device* %0, %struct.armada_thermal_priv* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.armada_thermal_priv*, align 8
  %5 = alloca %struct.armada_thermal_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.armada_thermal_priv* %1, %struct.armada_thermal_priv** %4, align 8
  %7 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %8 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %7, i32 0, i32 1
  %9 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %8, align 8
  store %struct.armada_thermal_data* %9, %struct.armada_thermal_data** %5, align 8
  %10 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %11 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %5, align 8
  %14 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_read(i32 %12, i32 %15, i32* %6)
  %17 = load i32, i32* @CONTROL0_TSEN_RESET, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @CONTROL0_TSEN_START, align 4
  %22 = load i32, i32* @CONTROL0_TSEN_ENABLE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @CONTROL0_TSEN_OSR_MAX, align 4
  %27 = load i32, i32* @CONTROL0_TSEN_OSR_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @CONTROL0_TSEN_AVG_BYPASS, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %36 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %5, align 8
  %39 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @regmap_write(i32 %37, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
