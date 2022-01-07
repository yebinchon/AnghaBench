; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-micsupp.c_arizona_micsupp_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-micsupp.c_arizona_micsupp_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.arizona_micsupp = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.regulator_desc = type { i32 }
%struct.arizona_micsupp_pdata = type { %struct.TYPE_4__* }
%struct.regulator_config = type { i32, %struct.TYPE_4__*, i32, %struct.arizona_micsupp*, i32 }

@arizona_micsupp_check_cp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"MICVDD\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@ARIZONA_CPMIC_BYPASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register mic supply: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.arizona_micsupp*, %struct.regulator_desc*, %struct.arizona_micsupp_pdata*)* @arizona_micsupp_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_micsupp_common_init(%struct.platform_device* %0, %struct.arizona_micsupp* %1, %struct.regulator_desc* %2, %struct.arizona_micsupp_pdata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.arizona_micsupp*, align 8
  %8 = alloca %struct.regulator_desc*, align 8
  %9 = alloca %struct.arizona_micsupp_pdata*, align 8
  %10 = alloca %struct.regulator_config, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.arizona_micsupp* %1, %struct.arizona_micsupp** %7, align 8
  store %struct.regulator_desc* %2, %struct.regulator_desc** %8, align 8
  store %struct.arizona_micsupp_pdata* %3, %struct.arizona_micsupp_pdata** %9, align 8
  %12 = bitcast %struct.regulator_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %14 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %13, i32 0, i32 6
  %15 = load i32, i32* @arizona_micsupp_check_cp, align 4
  %16 = call i32 @INIT_WORK(i32* %14, i32 %15)
  %17 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %18 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %17, i32 0, i32 5
  %19 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %20 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %21, align 8
  %22 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %23 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %26 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_name(i32 %27)
  %29 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %30 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.regulator_desc*, %struct.regulator_desc** %8, align 8
  %33 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %36 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %38 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %42 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 3
  store %struct.arizona_micsupp* %41, %struct.arizona_micsupp** %42, align 8
  %43 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %44 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* @CONFIG_OF, align 4
  %48 = call i64 @IS_ENABLED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %4
  %51 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %52 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_get_platdata(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = load %struct.arizona_micsupp_pdata*, %struct.arizona_micsupp_pdata** %9, align 8
  %58 = load %struct.regulator_desc*, %struct.regulator_desc** %8, align 8
  %59 = call i32 @arizona_micsupp_of_get_pdata(%struct.arizona_micsupp_pdata* %57, %struct.regulator_config* %10, %struct.regulator_desc* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %118

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %4
  %67 = load %struct.arizona_micsupp_pdata*, %struct.arizona_micsupp_pdata** %9, align 8
  %68 = getelementptr inbounds %struct.arizona_micsupp_pdata, %struct.arizona_micsupp_pdata* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = icmp ne %struct.TYPE_4__* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.arizona_micsupp_pdata*, %struct.arizona_micsupp_pdata** %9, align 8
  %73 = getelementptr inbounds %struct.arizona_micsupp_pdata, %struct.arizona_micsupp_pdata* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %75, align 8
  br label %80

76:                                               ; preds = %66
  %77 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %78 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %79, align 8
  br label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %82 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %85 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ARIZONA_CPMIC_BYPASS, align 4
  %88 = call i32 @regmap_update_bits(i32 %83, i32 %86, i32 %87, i32 0)
  %89 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.regulator_desc*, %struct.regulator_desc** %8, align 8
  %92 = call i32 @devm_regulator_register(i32* %90, %struct.regulator_desc* %91, %struct.regulator_config* %10)
  %93 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %94 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @of_node_put(i32 %96)
  %98 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %99 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @IS_ERR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %80
  %104 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %105 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @PTR_ERR(i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %109 = getelementptr inbounds %struct.arizona_micsupp, %struct.arizona_micsupp* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %5, align 4
  br label %118

114:                                              ; preds = %80
  %115 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %116 = load %struct.arizona_micsupp*, %struct.arizona_micsupp** %7, align 8
  %117 = call i32 @platform_set_drvdata(%struct.platform_device* %115, %struct.arizona_micsupp* %116)
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %103, %62
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @dev_name(i32) #2

declare dso_local i64 @IS_ENABLED(i32) #2

declare dso_local i32 @dev_get_platdata(i32) #2

declare dso_local i32 @arizona_micsupp_of_get_pdata(%struct.arizona_micsupp_pdata*, %struct.regulator_config*, %struct.regulator_desc*) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @devm_regulator_register(i32*, %struct.regulator_desc*, %struct.regulator_config*) #2

declare dso_local i32 @of_node_put(i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.arizona_micsupp*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
