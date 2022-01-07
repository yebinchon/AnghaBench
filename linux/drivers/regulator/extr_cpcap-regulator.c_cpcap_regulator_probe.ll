; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_cpcap-regulator.c_cpcap_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_cpcap-regulator.c_cpcap_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cpcap_ddata = type { %struct.cpcap_regulator*, i64, %struct.TYPE_6__* }
%struct.cpcap_regulator = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.regulator_config = type { i8*, i64, %struct.TYPE_6__* }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"no configuration data found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPCAP_NR_REGULATORS = common dso_local global i32 0, align 4
@unknown_val_tbl = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpcap_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cpcap_ddata*, align 8
  %5 = alloca %struct.cpcap_regulator*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpcap_regulator*, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.cpcap_regulator* @of_device_get_match_data(%struct.TYPE_6__* %11)
  store %struct.cpcap_regulator* %12, %struct.cpcap_regulator** %5, align 8
  %13 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %5, align 8
  %14 = icmp ne %struct.cpcap_regulator* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %117

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.cpcap_ddata* @devm_kzalloc(%struct.TYPE_6__* %23, i32 24, i32 %24)
  store %struct.cpcap_ddata* %25, %struct.cpcap_ddata** %4, align 8
  %26 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %4, align 8
  %27 = icmp ne %struct.cpcap_ddata* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %117

31:                                               ; preds = %21
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @dev_get_regmap(i32 %35, i32* null)
  %37 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %4, align 8
  %38 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %4, align 8
  %40 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %117

46:                                               ; preds = %31
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %4, align 8
  %50 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %49, i32 0, i32 2
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %50, align 8
  %51 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %5, align 8
  %52 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %4, align 8
  %53 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %52, i32 0, i32 0
  store %struct.cpcap_regulator* %51, %struct.cpcap_regulator** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %4, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %54, %struct.cpcap_ddata* %55)
  %57 = call i32 @memset(%struct.regulator_config* %6, i32 0, i32 24)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %60, align 8
  %61 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %4, align 8
  %62 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %113, %46
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @CPCAP_NR_REGULATORS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %116

69:                                               ; preds = %65
  %70 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %4, align 8
  %71 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %70, i32 0, i32 0
  %72 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %72, i64 %74
  store %struct.cpcap_regulator* %75, %struct.cpcap_regulator** %8, align 8
  %76 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %8, align 8
  %77 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  br label %116

82:                                               ; preds = %69
  %83 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %8, align 8
  %84 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @unknown_val_tbl, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %113

90:                                               ; preds = %82
  %91 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %8, align 8
  %92 = bitcast %struct.cpcap_regulator* %91 to i8*
  %93 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %8, align 8
  %97 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %96, i32 0, i32 0
  %98 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %95, %struct.TYPE_7__* %97, %struct.regulator_config* %6)
  store %struct.regulator_dev* %98, %struct.regulator_dev** %9, align 8
  %99 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %100 = call i64 @IS_ERR(%struct.regulator_dev* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %90
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.cpcap_regulator*, %struct.cpcap_regulator** %8, align 8
  %106 = getelementptr inbounds %struct.cpcap_regulator, %struct.cpcap_regulator* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %111 = call i32 @PTR_ERR(%struct.regulator_dev* %110)
  store i32 %111, i32* %2, align 4
  br label %117

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %89
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %65

116:                                              ; preds = %81, %65
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %102, %43, %28, %15
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.cpcap_regulator* @of_device_get_match_data(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.cpcap_ddata* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cpcap_ddata*) #1

declare dso_local i32 @memset(%struct.regulator_config*, i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
