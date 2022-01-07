; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.regulator_config = type { i32, i32, %struct.da9055_regulator*, i32 }
%struct.da9055_regulator = type { i32, %struct.TYPE_7__*, %struct.da9055* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.da9055 = type { i32, i32 }
%struct.da9055_pdata = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid regulator ID specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register regulator %s\0A\00", align 1
@DA9055_ID_LDO5 = common dso_local global i64 0, align 8
@DA9055_ID_LDO6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"REGULATOR\00", align 1
@da9055_ldo5_6_oc_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_PROBE_SHARED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to request Regulator IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9055_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regulator_config, align 8
  %5 = alloca %struct.da9055_regulator*, align 8
  %6 = alloca %struct.da9055*, align 8
  %7 = alloca %struct.da9055_pdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = bitcast %struct.regulator_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.da9055* @dev_get_drvdata(i32 %14)
  store %struct.da9055* %15, %struct.da9055** %6, align 8
  %16 = load %struct.da9055*, %struct.da9055** %6, align 8
  %17 = getelementptr inbounds %struct.da9055, %struct.da9055* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.da9055_pdata* @dev_get_platdata(i32 %18)
  store %struct.da9055_pdata* %19, %struct.da9055_pdata** %7, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.da9055_regulator* @devm_kzalloc(%struct.TYPE_8__* %21, i32 24, i32 %22)
  store %struct.da9055_regulator* %23, %struct.da9055_regulator** %5, align 8
  %24 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %25 = icmp ne %struct.da9055_regulator* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %166

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.TYPE_7__* @find_regulator_info(i64 %32)
  %34 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %35 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %34, i32 0, i32 1
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %37 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp eq %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 1
  %43 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %166

46:                                               ; preds = %29
  %47 = load %struct.da9055*, %struct.da9055** %6, align 8
  %48 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %49 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %48, i32 0, i32 2
  store %struct.da9055* %47, %struct.da9055** %49, align 8
  %50 = load %struct.da9055*, %struct.da9055** %6, align 8
  %51 = getelementptr inbounds %struct.da9055, %struct.da9055* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 3
  store i32 %52, i32* %53, align 8
  %54 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %55 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 2
  store %struct.da9055_regulator* %54, %struct.da9055_regulator** %55, align 8
  %56 = load %struct.da9055*, %struct.da9055** %6, align 8
  %57 = getelementptr inbounds %struct.da9055, %struct.da9055* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.da9055_pdata*, %struct.da9055_pdata** %7, align 8
  %61 = icmp ne %struct.da9055_pdata* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %46
  %63 = load %struct.da9055_pdata*, %struct.da9055_pdata** %7, align 8
  %64 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 0
  store i32 %70, i32* %71, align 8
  br label %72

72:                                               ; preds = %62, %46
  %73 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %74 = load %struct.da9055_pdata*, %struct.da9055_pdata** %7, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @da9055_gpio_init(%struct.da9055_regulator* %73, %struct.regulator_config* %4, %struct.da9055_pdata* %74, i64 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %166

83:                                               ; preds = %72
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 1
  %86 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %87 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = call i32 @devm_regulator_register(%struct.TYPE_8__* %85, %struct.TYPE_9__* %89, %struct.regulator_config* %4)
  %91 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %92 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %94 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @IS_ERR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %83
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 1
  %101 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %102 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %109 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @PTR_ERR(i32 %110)
  store i32 %111, i32* %2, align 4
  br label %166

112:                                              ; preds = %83
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DA9055_ID_LDO5, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DA9055_ID_LDO6, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %162

124:                                              ; preds = %118, %112
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = call i32 @platform_get_irq_byname(%struct.platform_device* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %2, align 4
  br label %166

131:                                              ; preds = %124
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 1
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @da9055_ldo5_6_oc_irq, align 4
  %136 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %137 = load i32, i32* @IRQF_ONESHOT, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @IRQF_PROBE_SHARED, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %145 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %133, i32 %134, i32* null, i32 %135, i32 %140, i32 %143, %struct.da9055_regulator* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %131
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @EBUSY, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 1
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %155, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %166

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %131
  br label %162

162:                                              ; preds = %161, %118
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %165 = call i32 @platform_set_drvdata(%struct.platform_device* %163, %struct.da9055_regulator* %164)
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %162, %153, %129, %98, %81, %40, %26
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.da9055* @dev_get_drvdata(i32) #2

declare dso_local %struct.da9055_pdata* @dev_get_platdata(i32) #2

declare dso_local %struct.da9055_regulator* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #2

declare dso_local %struct.TYPE_7__* @find_regulator_info(i64) #2

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #2

declare dso_local i32 @da9055_gpio_init(%struct.da9055_regulator*, %struct.regulator_config*, %struct.da9055_pdata*, i64) #2

declare dso_local i32 @devm_regulator_register(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i32, i32*, i32, i32, i32, %struct.da9055_regulator*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9055_regulator*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
