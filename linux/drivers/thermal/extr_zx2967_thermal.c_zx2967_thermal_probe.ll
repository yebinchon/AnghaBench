; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_zx2967_thermal.c_zx2967_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_zx2967_thermal.c_zx2967_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.zx2967_thermal_priv = type { %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"topcrm\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get topcrm clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to enable topcrm clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to get apb clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to enable apb clock: %d\0A\00", align 1
@zx2967_of_thermal_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to register sensor: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"coefficients of sensor is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zx2967_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx2967_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.zx2967_thermal_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.zx2967_thermal_priv* @devm_kzalloc(i32* %8, i32 48, i32 %9)
  store %struct.zx2967_thermal_priv* %10, %struct.zx2967_thermal_priv** %4, align 8
  %11 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %12 = icmp ne %struct.zx2967_thermal_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %168

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call %struct.TYPE_10__* @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %25 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %24, i32 0, i32 5
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %25, align 8
  %26 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %27 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %26, i32 0, i32 5
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = call i64 @IS_ERR(%struct.TYPE_10__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %33 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %32, i32 0, i32 5
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.TYPE_10__* %34)
  store i32 %35, i32* %2, align 4
  br label %168

36:                                               ; preds = %16
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i8* @devm_clk_get(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %40 = bitcast i8* %39 to %struct.TYPE_10__*
  %41 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %42 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %41, i32 0, i32 0
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %42, align 8
  %43 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %44 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = call i64 @IS_ERR(%struct.TYPE_10__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %50 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @PTR_ERR(%struct.TYPE_10__* %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %168

58:                                               ; preds = %36
  %59 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %60 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = call i32 @clk_prepare_enable(%struct.TYPE_10__* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %168

71:                                               ; preds = %58
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i8* @devm_clk_get(i32* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %75 = bitcast i8* %74 to %struct.TYPE_10__*
  %76 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %77 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %76, i32 0, i32 1
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %77, align 8
  %78 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %79 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = call i64 @IS_ERR(%struct.TYPE_10__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %71
  %84 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %85 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = call i32 @PTR_ERR(%struct.TYPE_10__* %86)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %162

92:                                               ; preds = %71
  %93 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %94 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = call i32 @clk_prepare_enable(%struct.TYPE_10__* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %162

104:                                              ; preds = %92
  %105 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %106 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %105, i32 0, i32 4
  %107 = call i32 @mutex_init(i32* %106)
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %111 = call %struct.TYPE_10__* @thermal_zone_of_sensor_register(i32* %109, i32 0, %struct.zx2967_thermal_priv* %110, i32* @zx2967_of_thermal_ops)
  %112 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %113 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %112, i32 0, i32 3
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %113, align 8
  %114 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %115 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %114, i32 0, i32 3
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = call i64 @IS_ERR(%struct.TYPE_10__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %104
  %120 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %121 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %120, i32 0, i32 3
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = call i32 @PTR_ERR(%struct.TYPE_10__* %122)
  store i32 %123, i32* %6, align 4
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load i32, i32* %6, align 4
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  br label %157

128:                                              ; preds = %104
  %129 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %130 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %129, i32 0, i32 3
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %128
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %141 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %140, i32 0, i32 3
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = call i32 @thermal_zone_of_sensor_unregister(i32* %139, %struct.TYPE_10__* %142)
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %6, align 4
  br label %157

149:                                              ; preds = %128
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %153 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %152, i32 0, i32 2
  store i32* %151, i32** %153, align 8
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %156 = call i32 @platform_set_drvdata(%struct.platform_device* %154, %struct.zx2967_thermal_priv* %155)
  store i32 0, i32* %2, align 4
  br label %168

157:                                              ; preds = %137, %119
  %158 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %159 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %158, i32 0, i32 1
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = call i32 @clk_disable_unprepare(%struct.TYPE_10__* %160)
  br label %162

162:                                              ; preds = %157, %99, %83
  %163 = load %struct.zx2967_thermal_priv*, %struct.zx2967_thermal_priv** %4, align 8
  %164 = getelementptr inbounds %struct.zx2967_thermal_priv, %struct.zx2967_thermal_priv* %163, i32 0, i32 0
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = call i32 @clk_disable_unprepare(%struct.TYPE_10__* %165)
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %162, %149, %65, %48, %31, %13
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.zx2967_thermal_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_10__* @thermal_zone_of_sensor_register(i32*, i32, %struct.zx2967_thermal_priv*, i32*) #1

declare dso_local i32 @thermal_zone_of_sensor_unregister(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zx2967_thermal_priv*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
