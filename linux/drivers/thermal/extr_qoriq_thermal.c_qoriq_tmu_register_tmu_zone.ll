; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_qoriq_thermal.c_qoriq_tmu_register_tmu_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_qoriq_thermal.c_qoriq_tmu_register_tmu_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.qoriq_tmu_data = type { %struct.TYPE_4__*, %struct.TYPE_5__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.qoriq_tmu_data* }

@SITES_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tmu_tz_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TMR_ME = common dso_local global i32 0, align 4
@TMR_ALPF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qoriq_tmu_register_tmu_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qoriq_tmu_register_tmu_zone(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.qoriq_tmu_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.qoriq_tmu_data* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.qoriq_tmu_data* %8, %struct.qoriq_tmu_data** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %116, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SITES_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %119

13:                                               ; preds = %9
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_5__* @devm_kzalloc(i32* %15, i32 4, i32 %16)
  %18 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %19 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %20, i64 %22
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %25 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %13
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %135

35:                                               ; preds = %13
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %38 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %36, i32* %44, align 8
  %45 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %46 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %47 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %48, i64 %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store %struct.qoriq_tmu_data* %45, %struct.qoriq_tmu_data** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %58 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %59, i64 %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = call i32 @devm_thermal_zone_of_sensor_register(i32* %55, i32 %56, %struct.TYPE_5__* %63, i32* @tmu_tz_ops)
  %65 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %66 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %67, i64 %69
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %64, i32* %72, align 4
  %73 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %74 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %75, i64 %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %35
  %85 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %86 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @PTR_ERR(i32 %93)
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %116

99:                                               ; preds = %84
  %100 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %101 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %102, i64 %104
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PTR_ERR(i32 %108)
  store i32 %109, i32* %2, align 4
  br label %135

110:                                              ; preds = %35
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 15, %111
  %113 = shl i32 1, %112
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %110, %98
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %9

119:                                              ; preds = %9
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @TMR_ME, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @TMR_ALPF, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %4, align 8
  %130 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @tmu_write(%struct.qoriq_tmu_data* %123, i32 %128, i32* %132)
  br label %134

134:                                              ; preds = %122, %119
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %99, %32
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.qoriq_tmu_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.TYPE_5__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_thermal_zone_of_sensor_register(i32*, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tmu_write(%struct.qoriq_tmu_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
