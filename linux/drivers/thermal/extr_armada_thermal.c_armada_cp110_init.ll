; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_cp110_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_cp110_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.armada_thermal_priv = type { i32, %struct.armada_thermal_data* }
%struct.armada_thermal_data = type { i32, i32 }

@CONTROL0_TSEN_OSR_MAX = common dso_local global i32 0, align 4
@CONTROL0_TSEN_OSR_SHIFT = common dso_local global i32 0, align 4
@CONTROL1_TSEN_AVG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.armada_thermal_priv*)* @armada_cp110_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_cp110_init(%struct.platform_device* %0, %struct.armada_thermal_priv* %1) #0 {
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
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %12 = call i32 @armada380_init(%struct.platform_device* %10, %struct.armada_thermal_priv* %11)
  %13 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %14 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %5, align 8
  %17 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_read(i32 %15, i32 %18, i32* %6)
  %20 = load i32, i32* @CONTROL0_TSEN_OSR_MAX, align 4
  %21 = load i32, i32* @CONTROL0_TSEN_OSR_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %26 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %5, align 8
  %29 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @regmap_write(i32 %27, i32 %30, i32 %31)
  %33 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %34 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %5, align 8
  %37 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_read(i32 %35, i32 %38, i32* %6)
  %40 = load i32, i32* @CONTROL1_TSEN_AVG_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %47 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %5, align 8
  %50 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @regmap_write(i32 %48, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @armada380_init(%struct.platform_device*, %struct.armada_thermal_priv*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
