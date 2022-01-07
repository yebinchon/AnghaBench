; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i64, i64, %struct.imx_thermal_data* }
%struct.imx_thermal_data = type { i32, i32, i32, %struct.thermal_soc_data*, %struct.regmap* }
%struct.thermal_soc_data = type { i32, i64, i32 }
%struct.regmap = type { i32 }

@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@IMX_POLLING_DELAY = common dso_local global i64 0, align 8
@IMX_PASSIVE_DELAY = common dso_local global i64 0, align 8
@REG_CLR = common dso_local global i64 0, align 8
@REG_SET = common dso_local global i64 0, align 8
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32)* @imx_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_set_mode(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_thermal_data*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.thermal_soc_data*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %9 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 2
  %10 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %9, align 8
  store %struct.imx_thermal_data* %10, %struct.imx_thermal_data** %5, align 8
  %11 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %12 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %11, i32 0, i32 4
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %6, align 8
  %14 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %15 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %14, i32 0, i32 3
  %16 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %15, align 8
  store %struct.thermal_soc_data* %16, %struct.thermal_soc_data** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %2
  %21 = load i64, i64* @IMX_POLLING_DELAY, align 8
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %23 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* @IMX_PASSIVE_DELAY, align 8
  %25 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %26 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.regmap*, %struct.regmap** %6, align 8
  %28 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %29 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REG_CLR, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %34 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @regmap_write(%struct.regmap* %27, i64 %32, i32 %35)
  %37 = load %struct.regmap*, %struct.regmap** %6, align 8
  %38 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %39 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REG_SET, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %44 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @regmap_write(%struct.regmap* %37, i64 %42, i32 %45)
  %47 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %48 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %20
  %52 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %53 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %55 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @enable_irq(i32 %56)
  br label %58

58:                                               ; preds = %51, %20
  br label %96

59:                                               ; preds = %2
  %60 = load %struct.regmap*, %struct.regmap** %6, align 8
  %61 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %62 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @REG_CLR, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %67 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @regmap_write(%struct.regmap* %60, i64 %65, i32 %68)
  %70 = load %struct.regmap*, %struct.regmap** %6, align 8
  %71 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %72 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @REG_SET, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.thermal_soc_data*, %struct.thermal_soc_data** %7, align 8
  %77 = getelementptr inbounds %struct.thermal_soc_data, %struct.thermal_soc_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @regmap_write(%struct.regmap* %70, i64 %75, i32 %78)
  %80 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %81 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %83 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %85 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %59
  %89 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %90 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @disable_irq(i32 %91)
  %93 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %94 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %88, %59
  br label %96

96:                                               ; preds = %95, %58
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %5, align 8
  %99 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %101 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %102 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %100, i32 %101)
  ret i32 0
}

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
