; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-ldo1.c_arizona_ldo1_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-ldo1.c_arizona_ldo1_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.arizona_ldo1 = type { i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.regulator_desc = type { i32 }
%struct.arizona_ldo1_pdata = type { %struct.TYPE_6__* }
%struct.regulator_config = type { i32, %struct.TYPE_6__*, i32, i32, %struct.arizona_ldo1*, %struct.device* }

@.str = private unnamed_addr constant [6 x i8] c"DCVDD\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"wlf,ldoena\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_NONEXCLUSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to register LDO1 supply: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.arizona_ldo1*, %struct.regulator_desc*, %struct.arizona_ldo1_pdata*, i32*)* @arizona_ldo1_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_ldo1_common_init(%struct.platform_device* %0, %struct.arizona_ldo1* %1, %struct.regulator_desc* %2, %struct.arizona_ldo1_pdata* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.arizona_ldo1*, align 8
  %9 = alloca %struct.regulator_desc*, align 8
  %10 = alloca %struct.arizona_ldo1_pdata*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.regulator_config, align 8
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store %struct.arizona_ldo1* %1, %struct.arizona_ldo1** %8, align 8
  store %struct.regulator_desc* %2, %struct.regulator_desc** %9, align 8
  store %struct.arizona_ldo1_pdata* %3, %struct.arizona_ldo1_pdata** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %12, align 8
  %19 = bitcast %struct.regulator_config* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 40, i1 false)
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %22 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %25 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %24, i32 0, i32 4
  %26 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %27 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %28, align 8
  %29 = load %struct.device*, %struct.device** %12, align 8
  %30 = call i32 @dev_name(%struct.device* %29)
  %31 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %32 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.device*, %struct.device** %12, align 8
  %35 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 5
  store %struct.device* %34, %struct.device** %35, align 8
  %36 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %37 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 4
  store %struct.arizona_ldo1* %36, %struct.arizona_ldo1** %37, align 8
  %38 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %39 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @CONFIG_OF, align 4
  %43 = call i64 @IS_ENABLED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %5
  %46 = load %struct.device*, %struct.device** %12, align 8
  %47 = call i32 @dev_get_platdata(%struct.device* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = load %struct.arizona_ldo1_pdata*, %struct.arizona_ldo1_pdata** %10, align 8
  %51 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @arizona_ldo1_of_get_pdata(%struct.arizona_ldo1_pdata* %50, %struct.regulator_config* %13, %struct.regulator_desc* %51, i32* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %6, align 4
  br label %130

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59, %5
  %61 = load %struct.device*, %struct.device** %12, align 8
  %62 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %63 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @gpiod_get_optional(%struct.device* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %6, align 4
  br label %130

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %79 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.arizona_ldo1_pdata*, %struct.arizona_ldo1_pdata** %10, align 8
  %81 = getelementptr inbounds %struct.arizona_ldo1_pdata, %struct.arizona_ldo1_pdata* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = icmp ne %struct.TYPE_6__* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load %struct.arizona_ldo1_pdata*, %struct.arizona_ldo1_pdata** %10, align 8
  %86 = getelementptr inbounds %struct.arizona_ldo1_pdata, %struct.arizona_ldo1_pdata* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 1
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %88, align 8
  br label %93

89:                                               ; preds = %75
  %90 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %91 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 1
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %92, align 8
  br label %93

93:                                               ; preds = %89, %84
  %94 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32*, i32** %11, align 8
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %93
  %102 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %105 = call i32 @devm_regulator_register(%struct.TYPE_7__* %103, %struct.regulator_desc* %104, %struct.regulator_config* %13)
  %106 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %107 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @of_node_put(i32 %109)
  %111 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %112 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @IS_ERR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %101
  %117 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %118 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @PTR_ERR(i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @dev_err(%struct.TYPE_7__* %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %6, align 4
  br label %130

126:                                              ; preds = %101
  %127 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %128 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %8, align 8
  %129 = call i32 @platform_set_drvdata(%struct.platform_device* %127, %struct.arizona_ldo1* %128)
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %126, %116, %71, %56
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_name(%struct.device*) #2

declare dso_local i64 @IS_ENABLED(i32) #2

declare dso_local i32 @dev_get_platdata(%struct.device*) #2

declare dso_local i32 @arizona_ldo1_of_get_pdata(%struct.arizona_ldo1_pdata*, %struct.regulator_config*, %struct.regulator_desc*, i32*) #2

declare dso_local i32 @gpiod_get_optional(%struct.device*, i8*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @devm_regulator_register(%struct.TYPE_7__*, %struct.regulator_desc*, %struct.regulator_config*) #2

declare dso_local i32 @of_node_put(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.arizona_ldo1*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
