; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_enable_overheat_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_enable_overheat_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_priv = type { i32, %struct.armada_thermal_data* }
%struct.armada_thermal_data = type { i32, i32, i32, i32, i32, i32 }

@CONTROL1_TSEN_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.armada_thermal_priv*)* @armada_enable_overheat_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_enable_overheat_interrupt(%struct.armada_thermal_priv* %0) #0 {
  %2 = alloca %struct.armada_thermal_priv*, align 8
  %3 = alloca %struct.armada_thermal_data*, align 8
  %4 = alloca i32, align 4
  store %struct.armada_thermal_priv* %0, %struct.armada_thermal_priv** %2, align 8
  %5 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %6 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %5, i32 0, i32 1
  %7 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %6, align 8
  store %struct.armada_thermal_data* %7, %struct.armada_thermal_data** %3, align 8
  %8 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %9 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %12 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regmap_read(i32 %10, i32 %13, i32* %4)
  %15 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %16 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %19 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regmap_read(i32 %17, i32 %20, i32* %4)
  %22 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %23 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %28 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %31 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @regmap_write(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %36 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %39 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regmap_read(i32 %37, i32 %40, i32* %4)
  %42 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %43 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %48 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %51 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @regmap_write(i32 %49, i32 %52, i32 %53)
  %55 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %56 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %59 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regmap_read(i32 %57, i32 %60, i32* %4)
  %62 = load i32, i32* @CONTROL1_TSEN_INT_EN, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %2, align 8
  %66 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %3, align 8
  %69 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @regmap_write(i32 %67, i32 %70, i32 %71)
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
