; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_set_overheat_thresholds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_set_overheat_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_priv = type { i32, i32, i32, %struct.armada_thermal_data* }
%struct.armada_thermal_data = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.armada_thermal_priv*, i32, i32)* @armada_set_overheat_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_set_overheat_thresholds(%struct.armada_thermal_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.armada_thermal_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.armada_thermal_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.armada_thermal_priv* %0, %struct.armada_thermal_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %12 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %11, i32 0, i32 3
  %13 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %12, align 8
  store %struct.armada_thermal_data* %13, %struct.armada_thermal_data** %7, align 8
  %14 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @armada_mc_to_reg_temp(%struct.armada_thermal_data* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @armada_mc_to_reg_hyst(%struct.armada_thermal_data* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %21 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %7, align 8
  %24 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regmap_read(i32 %22, i32 %25, i32* %10)
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %3
  %30 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %7, align 8
  %31 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %7, align 8
  %34 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %32, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %7, align 8
  %42 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %40, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %49 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %29, %3
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %7, align 8
  %55 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %7, align 8
  %58 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %56, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %7, align 8
  %66 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %64, %67
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %73 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %53, %50
  %75 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %4, align 8
  %76 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %7, align 8
  %79 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @regmap_write(i32 %77, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @armada_mc_to_reg_temp(%struct.armada_thermal_data*, i32) #1

declare dso_local i32 @armada_mc_to_reg_hyst(%struct.armada_thermal_data*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
