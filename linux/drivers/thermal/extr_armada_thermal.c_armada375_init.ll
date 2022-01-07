; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada375_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada375_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.armada_thermal_priv = type { i32, %struct.armada_thermal_data* }
%struct.armada_thermal_data = type { i32 }

@A375_UNIT_CONTROL_MASK = common dso_local global i32 0, align 4
@A375_UNIT_CONTROL_SHIFT = common dso_local global i32 0, align 4
@A375_READOUT_INVERT = common dso_local global i32 0, align 4
@A375_HW_RESETn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.armada_thermal_priv*)* @armada375_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada375_init(%struct.platform_device* %0, %struct.armada_thermal_priv* %1) #0 {
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
  %17 = load i32, i32* @A375_UNIT_CONTROL_MASK, align 4
  %18 = load i32, i32* @A375_UNIT_CONTROL_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @A375_READOUT_INVERT, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @A375_HW_RESETn, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %32 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %5, align 8
  %35 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @regmap_write(i32 %33, i32 %36, i32 %37)
  %39 = call i32 @msleep(i32 20)
  %40 = load i32, i32* @A375_HW_RESETn, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %44 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %5, align 8
  %47 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @regmap_write(i32 %45, i32 %48, i32 %49)
  %51 = call i32 @msleep(i32 50)
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
