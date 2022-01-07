; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_tegra_thermctl_get_trend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_tegra_thermctl_get_trend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_thermctl_zone = type { %struct.thermal_zone_device* }
%struct.thermal_zone_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thermal_zone_device*, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@THERMAL_TREND_RAISING = common dso_local global i32 0, align 4
@THERMAL_TREND_STABLE = common dso_local global i32 0, align 4
@THERMAL_TREND_DROPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @tegra_thermctl_get_trend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_thermctl_get_trend(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tegra_thermctl_zone*, align 8
  %9 = alloca %struct.thermal_zone_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.tegra_thermctl_zone*
  store %struct.tegra_thermctl_zone* %15, %struct.tegra_thermctl_zone** %8, align 8
  %16 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %8, align 8
  %17 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %16, i32 0, i32 0
  %18 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %17, align 8
  store %struct.thermal_zone_device* %18, %struct.thermal_zone_device** %9, align 8
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %20 = icmp ne %struct.thermal_zone_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %26 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %28, align 8
  %30 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %8, align 8
  %31 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %30, i32 0, i32 0
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 %29(%struct.thermal_zone_device* %32, i32 %33, i32* %10)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  br label %74

39:                                               ; preds = %24
  %40 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %41 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @READ_ONCE(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %45 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @READ_ONCE(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %39
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @THERMAL_TREND_RAISING, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @THERMAL_TREND_STABLE, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %73

62:                                               ; preds = %39
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @THERMAL_TREND_DROPPING, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @THERMAL_TREND_STABLE, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %61
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %37, %21
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
