; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_tegra-bpmp-thermal.c_tegra_bpmp_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_tegra-bpmp-thermal.c_tegra_bpmp_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.tegra_bpmp = type { i32 }
%struct.tegra_bpmp_thermal = type { i32, %struct.tegra_bpmp_thermal_zone**, %struct.tegra_bpmp*, %struct.TYPE_6__* }
%struct.tegra_bpmp_thermal_zone = type { i32, i32, %struct.thermal_zone_device*, %struct.tegra_bpmp_thermal* }
%struct.thermal_zone_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to get the number of zones: %d\0A\00", align 1
@tegra_bpmp_of_thermal_ops = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@tz_device_update_work_fn = common dso_local global i32 0, align 4
@MRQ_THERMAL = common dso_local global i32 0, align 4
@bpmp_mrq_thermal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to register mrq handler: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_bpmp_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca %struct.tegra_bpmp_thermal*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_bpmp_thermal_zone*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.tegra_bpmp* @dev_get_drvdata(i32 %15)
  store %struct.tegra_bpmp* %16, %struct.tegra_bpmp** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @devm_kzalloc(%struct.TYPE_6__* %18, i32 32, i32 %19)
  %21 = bitcast i8* %20 to %struct.tegra_bpmp_thermal*
  store %struct.tegra_bpmp_thermal* %21, %struct.tegra_bpmp_thermal** %5, align 8
  %22 = load %struct.tegra_bpmp_thermal*, %struct.tegra_bpmp_thermal** %5, align 8
  %23 = icmp ne %struct.tegra_bpmp_thermal* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %154

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.tegra_bpmp_thermal*, %struct.tegra_bpmp_thermal** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_bpmp_thermal, %struct.tegra_bpmp_thermal* %30, i32 0, i32 3
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %33 = load %struct.tegra_bpmp_thermal*, %struct.tegra_bpmp_thermal** %5, align 8
  %34 = getelementptr inbounds %struct.tegra_bpmp_thermal, %struct.tegra_bpmp_thermal* %33, i32 0, i32 2
  store %struct.tegra_bpmp* %32, %struct.tegra_bpmp** %34, align 8
  %35 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %36 = call i32 @tegra_bpmp_thermal_get_num_zones(%struct.tegra_bpmp* %35, i32* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dev_err(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %2, align 4
  br label %154

45:                                               ; preds = %27
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.tegra_bpmp_thermal_zone** @devm_kcalloc(%struct.TYPE_6__* %47, i32 %48, i32 8, i32 %49)
  %51 = load %struct.tegra_bpmp_thermal*, %struct.tegra_bpmp_thermal** %5, align 8
  %52 = getelementptr inbounds %struct.tegra_bpmp_thermal, %struct.tegra_bpmp_thermal* %51, i32 0, i32 1
  store %struct.tegra_bpmp_thermal_zone** %50, %struct.tegra_bpmp_thermal_zone*** %52, align 8
  %53 = load %struct.tegra_bpmp_thermal*, %struct.tegra_bpmp_thermal** %5, align 8
  %54 = getelementptr inbounds %struct.tegra_bpmp_thermal, %struct.tegra_bpmp_thermal* %53, i32 0, i32 1
  %55 = load %struct.tegra_bpmp_thermal_zone**, %struct.tegra_bpmp_thermal_zone*** %54, align 8
  %56 = icmp ne %struct.tegra_bpmp_thermal_zone** %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %154

60:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %133, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %136

65:                                               ; preds = %61
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @devm_kzalloc(%struct.TYPE_6__* %67, i32 24, i32 %68)
  %70 = bitcast i8* %69 to %struct.tegra_bpmp_thermal_zone*
  store %struct.tegra_bpmp_thermal_zone* %70, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %71 = load %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %72 = icmp ne %struct.tegra_bpmp_thermal_zone* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %154

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %79 = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, %struct.tegra_bpmp_thermal_zone* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.tegra_bpmp_thermal*, %struct.tegra_bpmp_thermal** %5, align 8
  %81 = load %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %82 = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, %struct.tegra_bpmp_thermal_zone* %81, i32 0, i32 3
  store %struct.tegra_bpmp_thermal* %80, %struct.tegra_bpmp_thermal** %82, align 8
  %83 = load %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %84 = call i32 @tegra_bpmp_thermal_get_temp(%struct.tegra_bpmp_thermal_zone* %83, i32* %11)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %91 = call i32 @devm_kfree(%struct.TYPE_6__* %89, %struct.tegra_bpmp_thermal_zone* %90)
  br label %133

92:                                               ; preds = %76
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %97 = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.TYPE_6__* %94, i32 %95, %struct.tegra_bpmp_thermal_zone* %96, i32* @tegra_bpmp_of_thermal_ops)
  store %struct.thermal_zone_device* %97, %struct.thermal_zone_device** %6, align 8
  %98 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %99 = call i64 @IS_ERR(%struct.thermal_zone_device* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %92
  %102 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %103 = call i32 @PTR_ERR(%struct.thermal_zone_device* %102)
  %104 = load i32, i32* @EPROBE_DEFER, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @EPROBE_DEFER, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %154

110:                                              ; preds = %101
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %114 = call i32 @devm_kfree(%struct.TYPE_6__* %112, %struct.tegra_bpmp_thermal_zone* %113)
  br label %133

115:                                              ; preds = %92
  %116 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %117 = load %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %118 = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, %struct.tegra_bpmp_thermal_zone* %117, i32 0, i32 2
  store %struct.thermal_zone_device* %116, %struct.thermal_zone_device** %118, align 8
  %119 = load %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %120 = getelementptr inbounds %struct.tegra_bpmp_thermal_zone, %struct.tegra_bpmp_thermal_zone* %119, i32 0, i32 1
  %121 = load i32, i32* @tz_device_update_work_fn, align 4
  %122 = call i32 @INIT_WORK(i32* %120, i32 %121)
  %123 = load %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %10, align 8
  %124 = load %struct.tegra_bpmp_thermal*, %struct.tegra_bpmp_thermal** %5, align 8
  %125 = getelementptr inbounds %struct.tegra_bpmp_thermal, %struct.tegra_bpmp_thermal* %124, i32 0, i32 1
  %126 = load %struct.tegra_bpmp_thermal_zone**, %struct.tegra_bpmp_thermal_zone*** %125, align 8
  %127 = load %struct.tegra_bpmp_thermal*, %struct.tegra_bpmp_thermal** %5, align 8
  %128 = getelementptr inbounds %struct.tegra_bpmp_thermal, %struct.tegra_bpmp_thermal* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds %struct.tegra_bpmp_thermal_zone*, %struct.tegra_bpmp_thermal_zone** %126, i64 %131
  store %struct.tegra_bpmp_thermal_zone* %123, %struct.tegra_bpmp_thermal_zone** %132, align 8
  br label %133

133:                                              ; preds = %115, %110, %87
  %134 = load i32, i32* %7, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %61

136:                                              ; preds = %61
  %137 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %138 = load i32, i32* @MRQ_THERMAL, align 4
  %139 = load i32, i32* @bpmp_mrq_thermal, align 4
  %140 = load %struct.tegra_bpmp_thermal*, %struct.tegra_bpmp_thermal** %5, align 8
  %141 = call i32 @tegra_bpmp_request_mrq(%struct.tegra_bpmp* %137, i32 %138, i32 %139, %struct.tegra_bpmp_thermal* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @dev_err(%struct.TYPE_6__* %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %2, align 4
  br label %154

150:                                              ; preds = %136
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = load %struct.tegra_bpmp_thermal*, %struct.tegra_bpmp_thermal** %5, align 8
  %153 = call i32 @platform_set_drvdata(%struct.platform_device* %151, %struct.tegra_bpmp_thermal* %152)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %150, %144, %107, %73, %57, %39, %24
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.tegra_bpmp* @dev_get_drvdata(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_thermal_get_num_zones(%struct.tegra_bpmp*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local %struct.tegra_bpmp_thermal_zone** @devm_kcalloc(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @tegra_bpmp_thermal_get_temp(%struct.tegra_bpmp_thermal_zone*, i32*) #1

declare dso_local i32 @devm_kfree(%struct.TYPE_6__*, %struct.tegra_bpmp_thermal_zone*) #1

declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.TYPE_6__*, i32, %struct.tegra_bpmp_thermal_zone*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @tegra_bpmp_request_mrq(%struct.tegra_bpmp*, i32, i32, %struct.tegra_bpmp_thermal*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_bpmp_thermal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
