; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13783-regulator.c_mc13783_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13783-regulator.c_mc13783_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.regulator_desc }
%struct.regulator_desc = type { i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mc13xxx_regulator_priv = type { i32, i32*, %struct.mc13xxx*, %struct.TYPE_10__* }
%struct.mc13xxx = type { i32 }
%struct.mc13xxx_regulator_platform_data = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.regulator_init_data* }
%struct.regulator_init_data = type { i32 }
%struct.mc13xxx_regulator_init_data = type { i32, %struct.device_node*, %struct.regulator_init_data* }
%struct.device_node = type { i32 }
%struct.regulator_config = type { %struct.device_node*, %struct.mc13xxx_regulator_priv*, %struct.regulator_init_data*, %struct.TYPE_11__* }

@EINVAL = common dso_local global i32 0, align 4
@regulators = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mc13783_regulators = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mc13783_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mc13xxx_regulator_priv*, align 8
  %5 = alloca %struct.mc13xxx*, align 8
  %6 = alloca %struct.mc13xxx_regulator_platform_data*, align 8
  %7 = alloca %struct.mc13xxx_regulator_init_data*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.regulator_init_data*, align 8
  %12 = alloca %struct.regulator_desc*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mc13xxx* @dev_get_drvdata(i32 %18)
  store %struct.mc13xxx* %19, %struct.mc13xxx** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.mc13xxx_regulator_platform_data* @dev_get_platdata(%struct.TYPE_11__* %21)
  store %struct.mc13xxx_regulator_platform_data* %22, %struct.mc13xxx_regulator_platform_data** %6, align 8
  %23 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @mc13xxx_get_num_regulators_dt(%struct.platform_device* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.mc13xxx_regulator_platform_data*, %struct.mc13xxx_regulator_platform_data** %6, align 8
  %30 = icmp ne %struct.mc13xxx_regulator_platform_data* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.mc13xxx_regulator_platform_data*, %struct.mc13xxx_regulator_platform_data** %6, align 8
  %33 = getelementptr inbounds %struct.mc13xxx_regulator_platform_data, %struct.mc13xxx_regulator_platform_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %28, %1
  %36 = load i32, i32* %10, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %176

41:                                               ; preds = %35
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %45 = load i32, i32* @regulators, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @struct_size(%struct.mc13xxx_regulator_priv* %44, i32 %45, i32 %46)
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.mc13xxx_regulator_priv* @devm_kzalloc(%struct.TYPE_11__* %43, i32 %47, i32 %48)
  store %struct.mc13xxx_regulator_priv* %49, %struct.mc13xxx_regulator_priv** %4, align 8
  %50 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %51 = icmp ne %struct.mc13xxx_regulator_priv* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %176

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %58 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mc13783_regulators, align 8
  %60 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %61 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %60, i32 0, i32 3
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %61, align 8
  %62 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %63 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %64 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %63, i32 0, i32 2
  store %struct.mc13xxx* %62, %struct.mc13xxx** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %67 = call i32 @platform_set_drvdata(%struct.platform_device* %65, %struct.mc13xxx_regulator_priv* %66)
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mc13783_regulators, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mc13783_regulators, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %70)
  %72 = call %struct.mc13xxx_regulator_init_data* @mc13xxx_parse_regulators_dt(%struct.platform_device* %68, %struct.TYPE_10__* %69, i32 %71)
  store %struct.mc13xxx_regulator_init_data* %72, %struct.mc13xxx_regulator_init_data** %7, align 8
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %172, %55
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %76 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %175

79:                                               ; preds = %73
  store %struct.device_node* null, %struct.device_node** %13, align 8
  %80 = load %struct.mc13xxx_regulator_init_data*, %struct.mc13xxx_regulator_init_data** %7, align 8
  %81 = icmp ne %struct.mc13xxx_regulator_init_data* %80, null
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load %struct.mc13xxx_regulator_init_data*, %struct.mc13xxx_regulator_init_data** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %83, i64 %85
  %87 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %14, align 4
  %89 = load %struct.mc13xxx_regulator_init_data*, %struct.mc13xxx_regulator_init_data** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %89, i64 %91
  %93 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %92, i32 0, i32 2
  %94 = load %struct.regulator_init_data*, %struct.regulator_init_data** %93, align 8
  store %struct.regulator_init_data* %94, %struct.regulator_init_data** %11, align 8
  %95 = load %struct.mc13xxx_regulator_init_data*, %struct.mc13xxx_regulator_init_data** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %95, i64 %97
  %99 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %98, i32 0, i32 1
  %100 = load %struct.device_node*, %struct.device_node** %99, align 8
  store %struct.device_node* %100, %struct.device_node** %13, align 8
  br label %118

101:                                              ; preds = %79
  %102 = load %struct.mc13xxx_regulator_platform_data*, %struct.mc13xxx_regulator_platform_data** %6, align 8
  %103 = getelementptr inbounds %struct.mc13xxx_regulator_platform_data, %struct.mc13xxx_regulator_platform_data* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %14, align 4
  %110 = load %struct.mc13xxx_regulator_platform_data*, %struct.mc13xxx_regulator_platform_data** %6, align 8
  %111 = getelementptr inbounds %struct.mc13xxx_regulator_platform_data, %struct.mc13xxx_regulator_platform_data* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load %struct.regulator_init_data*, %struct.regulator_init_data** %116, align 8
  store %struct.regulator_init_data* %117, %struct.regulator_init_data** %11, align 8
  br label %118

118:                                              ; preds = %101, %82
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mc13783_regulators, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store %struct.regulator_desc* %123, %struct.regulator_desc** %12, align 8
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %126, align 8
  %127 = load %struct.regulator_init_data*, %struct.regulator_init_data** %11, align 8
  %128 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store %struct.regulator_init_data* %127, %struct.regulator_init_data** %128, align 8
  %129 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %130 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.mc13xxx_regulator_priv* %129, %struct.mc13xxx_regulator_priv** %130, align 8
  %131 = load %struct.device_node*, %struct.device_node** %13, align 8
  %132 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.device_node* %131, %struct.device_node** %132, align 8
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %136 = call i32 @devm_regulator_register(%struct.TYPE_11__* %134, %struct.regulator_desc* %135, %struct.regulator_config* %8)
  %137 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %138 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %136, i32* %142, align 4
  %143 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %144 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @IS_ERR(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %118
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mc13783_regulators, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @dev_err(%struct.TYPE_11__* %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %161)
  %163 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %164 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @PTR_ERR(i32 %169)
  store i32 %170, i32* %2, align 4
  br label %176

171:                                              ; preds = %118
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %73

175:                                              ; preds = %73
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %175, %152, %52, %38
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.mc13xxx* @dev_get_drvdata(i32) #1

declare dso_local %struct.mc13xxx_regulator_platform_data* @dev_get_platdata(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mc13xxx_get_num_regulators_dt(%struct.platform_device*) #1

declare dso_local %struct.mc13xxx_regulator_priv* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.mc13xxx_regulator_priv*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mc13xxx_regulator_priv*) #1

declare dso_local %struct.mc13xxx_regulator_init_data* @mc13xxx_parse_regulators_dt(%struct.platform_device*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_regulator_register(%struct.TYPE_11__*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
