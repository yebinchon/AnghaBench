; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada_thermal_priv*)* @armada_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_is_valid(%struct.armada_thermal_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.armada_thermal_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.armada_thermal_priv* %0, %struct.armada_thermal_priv** %3, align 8
  %5 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %3, align 8
  %6 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %3, align 8
  %14 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %3, align 8
  %17 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regmap_read(i32 %15, i32 %20, i32* %4)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %3, align 8
  %24 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %22, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %12, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
