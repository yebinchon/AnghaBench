; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_stpmic1_regulator.c_stpmic1_regulator_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_stpmic1_regulator.c_stpmic1_regulator_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.of_regulator_match = type { i32, i32 }
%struct.stpmic1_regulator_cfg = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.stpmic1 = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i32, i8*, i32, i32, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"st,mask-reset\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"set mask reset failed\0A\00", align 1
@stpmic1_curlim_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Request IRQ failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, %struct.of_regulator_match*, %struct.stpmic1_regulator_cfg*)* @stpmic1_regulator_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stpmic1_regulator_register(%struct.platform_device* %0, i32 %1, %struct.of_regulator_match* %2, %struct.stpmic1_regulator_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.of_regulator_match*, align 8
  %9 = alloca %struct.stpmic1_regulator_cfg*, align 8
  %10 = alloca %struct.stpmic1*, align 8
  %11 = alloca %struct.regulator_dev*, align 8
  %12 = alloca %struct.regulator_config, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.of_regulator_match* %2, %struct.of_regulator_match** %8, align 8
  store %struct.stpmic1_regulator_cfg* %3, %struct.stpmic1_regulator_cfg** %9, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.stpmic1* @dev_get_drvdata(i32 %18)
  store %struct.stpmic1* %19, %struct.stpmic1** %10, align 8
  %20 = bitcast %struct.regulator_config* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  store i32 0, i32* %13, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 4
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.of_regulator_match*, %struct.of_regulator_match** %8, align 8
  %25 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.of_regulator_match*, %struct.of_regulator_match** %8, align 8
  %29 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.stpmic1*, %struct.stpmic1** %10, align 8
  %33 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.stpmic1_regulator_cfg*, %struct.stpmic1_regulator_cfg** %9, align 8
  %37 = bitcast %struct.stpmic1_regulator_cfg* %36 to i8*
  %38 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.stpmic1_regulator_cfg*, %struct.stpmic1_regulator_cfg** %9, align 8
  %42 = getelementptr inbounds %struct.stpmic1_regulator_cfg, %struct.stpmic1_regulator_cfg* %41, i32 0, i32 2
  %43 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %40, %struct.TYPE_6__* %42, %struct.regulator_config* %12)
  store %struct.regulator_dev* %43, %struct.regulator_dev** %11, align 8
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %11, align 8
  %45 = call i64 @IS_ERR(%struct.regulator_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %4
  %48 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.stpmic1_regulator_cfg*, %struct.stpmic1_regulator_cfg** %9, align 8
  %51 = getelementptr inbounds %struct.stpmic1_regulator_cfg, %struct.stpmic1_regulator_cfg* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.regulator_dev*, %struct.regulator_dev** %11, align 8
  %56 = call i32 @PTR_ERR(%struct.regulator_dev* %55)
  store i32 %56, i32* %5, align 4
  br label %117

57:                                               ; preds = %4
  %58 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @of_get_property(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load %struct.stpmic1_regulator_cfg*, %struct.stpmic1_regulator_cfg** %9, align 8
  %64 = getelementptr inbounds %struct.stpmic1_regulator_cfg, %struct.stpmic1_regulator_cfg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %62
  %68 = load %struct.stpmic1*, %struct.stpmic1** %10, align 8
  %69 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.stpmic1_regulator_cfg*, %struct.stpmic1_regulator_cfg** %9, align 8
  %72 = getelementptr inbounds %struct.stpmic1_regulator_cfg, %struct.stpmic1_regulator_cfg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.stpmic1_regulator_cfg*, %struct.stpmic1_regulator_cfg** %9, align 8
  %75 = getelementptr inbounds %struct.stpmic1_regulator_cfg, %struct.stpmic1_regulator_cfg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.stpmic1_regulator_cfg*, %struct.stpmic1_regulator_cfg** %9, align 8
  %78 = getelementptr inbounds %struct.stpmic1_regulator_cfg, %struct.stpmic1_regulator_cfg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @regmap_update_bits(i32 %70, i64 %73, i32 %76, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %5, align 4
  br label %117

88:                                               ; preds = %67
  br label %89

89:                                               ; preds = %88, %62, %57
  %90 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @of_irq_get(i32 %91, i32 0)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %89
  %96 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @stpmic1_curlim_irq_handler, align 4
  %100 = load i32, i32* @IRQF_ONESHOT, align 4
  %101 = load i32, i32* @IRQF_SHARED, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.regulator_dev*, %struct.regulator_dev** %11, align 8
  %107 = call i32 @devm_request_threaded_irq(%struct.TYPE_5__* %97, i32 %98, i32* null, i32 %99, i32 %102, i32 %105, %struct.regulator_dev* %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %95
  %111 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %5, align 4
  br label %117

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %115, %89
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %110, %83, %47
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.stpmic1* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i64 @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @of_irq_get(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_5__*, i32, i32*, i32, i32, i32, %struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
