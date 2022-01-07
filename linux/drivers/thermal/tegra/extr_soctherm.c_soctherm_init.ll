; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_soctherm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.tegra_tsensor_group** }
%struct.tegra_tsensor_group = type { i64, i32, i32, i32, i32 }

@SENSOR_PDIV = common dso_local global i64 0, align 8
@SENSOR_HOTSPOT_OFF = common dso_local global i64 0, align 8
@TEGRA124_SOCTHERM_SENSOR_PLLX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @soctherm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soctherm_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tegra_soctherm*, align 8
  %4 = alloca %struct.tegra_tsensor_group**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.tegra_soctherm* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.tegra_soctherm* %9, %struct.tegra_soctherm** %3, align 8
  %10 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.tegra_tsensor_group**, %struct.tegra_tsensor_group*** %13, align 8
  store %struct.tegra_tsensor_group** %14, %struct.tegra_tsensor_group*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %27, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @enable_tsensor(%struct.tegra_soctherm* %24, i32 %25)
  br label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SENSOR_PDIV, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SENSOR_HOTSPOT_OFF, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %95, %30
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %98

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.tegra_tsensor_group**, %struct.tegra_tsensor_group*** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %53, i64 %55
  %57 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %56, align 8
  %58 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tegra_tsensor_group**, %struct.tegra_tsensor_group*** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %60, i64 %62
  %64 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %63, align 8
  %65 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @REG_SET_MASK(i32 %52, i32 %59, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.tegra_tsensor_group**, %struct.tegra_tsensor_group*** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %68, i64 %70
  %72 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %71, align 8
  %73 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TEGRA124_SOCTHERM_SENSOR_PLLX, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %51
  br label %95

78:                                               ; preds = %51
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.tegra_tsensor_group**, %struct.tegra_tsensor_group*** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %80, i64 %82
  %84 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %83, align 8
  %85 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tegra_tsensor_group**, %struct.tegra_tsensor_group*** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %87, i64 %89
  %91 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %90, align 8
  %92 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @REG_SET_MASK(i32 %79, i32 %86, i32 %93)
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %78, %77
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %43

98:                                               ; preds = %43
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %101 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SENSOR_PDIV, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SENSOR_HOTSPOT_OFF, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %106, i64 %111)
  %113 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @tegra_soctherm_throttle(i32* %114)
  ret void
}

declare dso_local %struct.tegra_soctherm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @enable_tsensor(%struct.tegra_soctherm*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @REG_SET_MASK(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tegra_soctherm_throttle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
