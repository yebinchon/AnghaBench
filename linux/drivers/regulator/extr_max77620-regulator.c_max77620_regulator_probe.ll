; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_regulator_info = type { %struct.regulator_desc }
%struct.regulator_desc = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.max77620_chip = type { i32, i32 }
%struct.regulator_config = type { %struct.max77620_regulator*, %struct.device*, i32 }
%struct.max77620_regulator = type { %struct.TYPE_3__*, i32*, %struct.max77620_regulator_info**, i32, %struct.device* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max77620_regs_info = common dso_local global %struct.max77620_regulator_info* null, align 8
@max20024_regs_info = common dso_local global %struct.max77620_regulator_info* null, align 8
@max77663_regs_info = common dso_local global %struct.max77620_regulator_info* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX77620_NUM_REGS = common dso_local global i32 0, align 4
@MAX77620_REGULATOR_ID_SD4 = common dso_local global i32 0, align 4
@MAX77620_POWER_MODE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Regulator registration %s failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77620_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max77620_chip*, align 8
  %5 = alloca %struct.max77620_regulator_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.max77620_regulator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.regulator_dev*, align 8
  %12 = alloca %struct.regulator_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call %struct.max77620_chip* @dev_get_drvdata(%struct.TYPE_4__* %16)
  store %struct.max77620_chip* %17, %struct.max77620_chip** %4, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %6, align 8
  %20 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  store i32 0, i32* %9, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.max77620_regulator* @devm_kzalloc(%struct.device* %21, i32 40, i32 %22)
  store %struct.max77620_regulator* %23, %struct.max77620_regulator** %8, align 8
  %24 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %25 = icmp ne %struct.max77620_regulator* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %198

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.max77620_regulator* %31)
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %35 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %34, i32 0, i32 4
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %37 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %40 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %29
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %45, %29
  %55 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %56 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %64 [
    i32 129, label %58
    i32 130, label %60
    i32 128, label %62
  ]

58:                                               ; preds = %54
  %59 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** @max77620_regs_info, align 8
  store %struct.max77620_regulator_info* %59, %struct.max77620_regulator_info** %5, align 8
  br label %67

60:                                               ; preds = %54
  %61 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** @max20024_regs_info, align 8
  store %struct.max77620_regulator_info* %61, %struct.max77620_regulator_info** %5, align 8
  br label %67

62:                                               ; preds = %54
  %63 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** @max77663_regs_info, align 8
  store %struct.max77620_regulator_info* %63, %struct.max77620_regulator_info** %5, align 8
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %198

67:                                               ; preds = %62, %60, %58
  %68 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %69 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.device* %72, %struct.device** %73, align 8
  %74 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %75 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store %struct.max77620_regulator* %74, %struct.max77620_regulator** %75, align 8
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %194, %67
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @MAX77620_NUM_REGS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %197

80:                                               ; preds = %76
  %81 = load %struct.max77620_chip*, %struct.max77620_chip** %4, align 8
  %82 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 129
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @MAX77620_REGULATOR_ID_SD4, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %194

90:                                               ; preds = %85, %80
  %91 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %91, i64 %93
  %95 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %94, i32 0, i32 0
  store %struct.regulator_desc* %95, %struct.regulator_desc** %12, align 8
  %96 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %96, i64 %98
  %100 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %101 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %100, i32 0, i32 2
  %102 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %102, i64 %104
  store %struct.max77620_regulator_info* %99, %struct.max77620_regulator_info** %105, align 8
  %106 = load i32, i32* @MAX77620_POWER_MODE_NORMAL, align 4
  %107 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %108 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  %113 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %114 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i32 -1, i32* %119, align 4
  %120 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %121 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 -1, i32* %126, align 4
  %127 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %128 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  store i32 -1, i32* %133, align 4
  %134 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %135 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  store i32 -1, i32* %140, align 4
  %141 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %142 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 4
  store i32 -1, i32* %147, align 4
  %148 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %149 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %148, i32 0, i32 0
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 5
  store i32 -1, i32* %154, align 4
  %155 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %156 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 6
  store i32 -1, i32* %161, align 4
  %162 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %163 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %162, i32 0, i32 0
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 7
  store i32 -1, i32* %168, align 4
  %169 = load %struct.max77620_regulator*, %struct.max77620_regulator** %8, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @max77620_read_slew_rate(%struct.max77620_regulator* %169, i32 %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %90
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %2, align 4
  br label %198

176:                                              ; preds = %90
  %177 = load %struct.device*, %struct.device** %6, align 8
  %178 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %179 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %177, %struct.regulator_desc* %178, %struct.regulator_config* %7)
  store %struct.regulator_dev* %179, %struct.regulator_dev** %11, align 8
  %180 = load %struct.regulator_dev*, %struct.regulator_dev** %11, align 8
  %181 = call i64 @IS_ERR(%struct.regulator_dev* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %176
  %184 = load %struct.regulator_dev*, %struct.regulator_dev** %11, align 8
  %185 = call i32 @PTR_ERR(%struct.regulator_dev* %184)
  store i32 %185, i32* %9, align 4
  %186 = load %struct.device*, %struct.device** %6, align 8
  %187 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %188 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @dev_err(%struct.device* %186, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %189, i32 %190)
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %2, align 4
  br label %198

193:                                              ; preds = %176
  br label %194

194:                                              ; preds = %193, %89
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %76

197:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %183, %174, %64, %26
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.max77620_chip* @dev_get_drvdata(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.max77620_regulator* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77620_regulator*) #1

declare dso_local i32 @max77620_read_slew_rate(%struct.max77620_regulator*, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
