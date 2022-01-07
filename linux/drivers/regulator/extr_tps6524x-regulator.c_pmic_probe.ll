; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.supply_info = type { i32, i32, i32 }
%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.tps6524x = type { %struct.TYPE_2__*, i32, %struct.spi_device*, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.regulator_init_data = type { i32 }
%struct.regulator_config = type { %struct.tps6524x*, %struct.regulator_init_data*, %struct.device* }
%struct.regulator_dev = type { i32 }

@supply_info = common dso_local global %struct.supply_info* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"could not find regulator platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@N_REGULATORS = common dso_local global i32 0, align 4
@regulator_ops = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.tps6524x*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.supply_info*, align 8
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.supply_info*, %struct.supply_info** @supply_info, align 8
  store %struct.supply_info* %13, %struct.supply_info** %6, align 8
  %14 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.regulator_init_data* @dev_get_platdata(%struct.device* %15)
  store %struct.regulator_init_data* %16, %struct.regulator_init_data** %7, align 8
  %17 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %18 = icmp ne %struct.regulator_init_data* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %144

24:                                               ; preds = %1
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.tps6524x* @devm_kzalloc(%struct.device* %26, i32 32, i32 %27)
  store %struct.tps6524x* %28, %struct.tps6524x** %4, align 8
  %29 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %30 = icmp ne %struct.tps6524x* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %144

34:                                               ; preds = %24
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %37 = call i32 @spi_set_drvdata(%struct.spi_device* %35, %struct.tps6524x* %36)
  %38 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %39 = call i32 @memset(%struct.tps6524x* %38, i32 0, i32 32)
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %42 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %41, i32 0, i32 3
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %45 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %44, i32 0, i32 2
  store %struct.spi_device* %43, %struct.spi_device** %45, align 8
  %46 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %47 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %46, i32 0, i32 1
  %48 = call i32 @mutex_init(i32* %47)
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %136, %34
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @N_REGULATORS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %143

53:                                               ; preds = %49
  %54 = load %struct.supply_info*, %struct.supply_info** %6, align 8
  %55 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %58 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  store i32 %56, i32* %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %66 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 8
  %72 = load %struct.supply_info*, %struct.supply_info** %6, align 8
  %73 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %76 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  store i32 %74, i32* %81, align 4
  %82 = load %struct.supply_info*, %struct.supply_info** %6, align 8
  %83 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %86 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  store i32 %84, i32* %91, align 8
  %92 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %93 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  store i32* @regulator_ops, i32** %98, align 8
  %99 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %100 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %101 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store i32 %99, i32* %106, align 8
  %107 = load i32, i32* @THIS_MODULE, align 4
  %108 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %109 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %107, i32* %114, align 4
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store %struct.device* %115, %struct.device** %116, align 8
  %117 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %118 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.regulator_init_data* %117, %struct.regulator_init_data** %118, align 8
  %119 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %120 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.tps6524x* %119, %struct.tps6524x** %120, align 8
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %123 = getelementptr inbounds %struct.tps6524x, %struct.tps6524x* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %121, %struct.TYPE_2__* %127, %struct.regulator_config* %8)
  store %struct.regulator_dev* %128, %struct.regulator_dev** %9, align 8
  %129 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %130 = call i64 @IS_ERR(%struct.regulator_dev* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %53
  %133 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %134 = call i32 @PTR_ERR(%struct.regulator_dev* %133)
  store i32 %134, i32* %2, align 4
  br label %144

135:                                              ; preds = %53
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  %139 = load %struct.supply_info*, %struct.supply_info** %6, align 8
  %140 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %139, i32 1
  store %struct.supply_info* %140, %struct.supply_info** %6, align 8
  %141 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %142 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %141, i32 1
  store %struct.regulator_init_data* %142, %struct.regulator_init_data** %7, align 8
  br label %49

143:                                              ; preds = %49
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %132, %31, %19
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regulator_init_data* @dev_get_platdata(%struct.device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local %struct.tps6524x* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.tps6524x*) #2

declare dso_local i32 @memset(%struct.tps6524x*, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.TYPE_2__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
