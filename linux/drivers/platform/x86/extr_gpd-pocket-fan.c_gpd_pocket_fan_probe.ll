; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_gpd-pocket-fan.c_gpd_pocket_fan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_gpd-pocket-fan.c_gpd_pocket_fan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpd_pocket_fan_data = type { i8*, i32*, i8*, i8*, i8*, i32 }

@temp_limits = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"Invalid temp-limit %d (must be between 40000 and 70000)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@hysteresis = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Invalid hysteresis %d (must be between 1000 and 10000)\0A\00", align 1
@speed_on_ac = common dso_local global i32 0, align 4
@MAX_SPEED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Invalid speed_on_ac %d (must be between 0 and 3)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpd_pocket_fan_worker = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"soc_dts0\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"soc_dts1\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpd_pocket_fan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpd_pocket_fan_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpd_pocket_fan_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %37, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32*, i32** @temp_limits, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %6
  %12 = load i32*, i32** @temp_limits, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 40000
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load i32*, i32** @temp_limits, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 70000
  br i1 %24, label %25, label %36

25:                                               ; preds = %18, %11
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32*, i32** @temp_limits, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %151

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %6

40:                                               ; preds = %6
  %41 = load i32, i32* @hysteresis, align 4
  %42 = icmp slt i32 %41, 1000
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @hysteresis, align 4
  %45 = icmp sgt i32 %44, 10000
  br i1 %45, label %46, label %53

46:                                               ; preds = %43, %40
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* @hysteresis, align 4
  %50 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %151

53:                                               ; preds = %43
  %54 = load i32, i32* @speed_on_ac, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @speed_on_ac, align 4
  %58 = load i32, i32* @MAX_SPEED, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56, %53
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* @speed_on_ac, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %151

67:                                               ; preds = %56
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.gpd_pocket_fan_data* @devm_kzalloc(i32* %69, i32 48, i32 %70)
  store %struct.gpd_pocket_fan_data* %71, %struct.gpd_pocket_fan_data** %4, align 8
  %72 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %73 = icmp ne %struct.gpd_pocket_fan_data* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %151

77:                                               ; preds = %67
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %81 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %83 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %82, i32 0, i32 5
  %84 = load i32, i32* @gpd_pocket_fan_worker, align 4
  %85 = call i32 @INIT_DELAYED_WORK(i32* %83, i32 %84)
  %86 = call i8* @thermal_zone_get_zone_by_name(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %88 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %90 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @IS_ERR(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %77
  %95 = load i32, i32* @EPROBE_DEFER, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %151

97:                                               ; preds = %77
  %98 = call i8* @thermal_zone_get_zone_by_name(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %100 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %102 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @IS_ERR(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* @EPROBE_DEFER, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %151

109:                                              ; preds = %97
  %110 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %111 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @GPIOD_ASIS, align 4
  %114 = call i8* @devm_gpiod_get_index(i32* %112, i32* null, i32 0, i32 %113)
  %115 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %116 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %118 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @IS_ERR(i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %109
  %123 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %124 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @PTR_ERR(i8* %125)
  store i32 %126, i32* %2, align 4
  br label %151

127:                                              ; preds = %109
  %128 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %129 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @GPIOD_ASIS, align 4
  %132 = call i8* @devm_gpiod_get_index(i32* %130, i32* null, i32 1, i32 %131)
  %133 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %134 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %136 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @IS_ERR(i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %127
  %141 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %142 = getelementptr inbounds %struct.gpd_pocket_fan_data, %struct.gpd_pocket_fan_data* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @PTR_ERR(i8* %143)
  store i32 %144, i32* %2, align 4
  br label %151

145:                                              ; preds = %127
  %146 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %147 = call i32 @gpd_pocket_fan_force_update(%struct.gpd_pocket_fan_data* %146)
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = load %struct.gpd_pocket_fan_data*, %struct.gpd_pocket_fan_data** %4, align 8
  %150 = call i32 @platform_set_drvdata(%struct.platform_device* %148, %struct.gpd_pocket_fan_data* %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %145, %140, %122, %106, %94, %74, %60, %46, %25
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.gpd_pocket_fan_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i8* @thermal_zone_get_zone_by_name(i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get_index(i32*, i32*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @gpd_pocket_fan_force_update(%struct.gpd_pocket_fan_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpd_pocket_fan_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
