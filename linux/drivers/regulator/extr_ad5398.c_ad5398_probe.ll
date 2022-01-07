; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ad5398.c_ad5398_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ad5398.c_ad5398_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32, i64 }
%struct.regulator_init_data = type { i32 }
%struct.regulator_config = type { %struct.ad5398_chip_info*, %struct.regulator_init_data*, i32* }
%struct.ad5398_chip_info = type { i32, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.ad5398_current_data_format = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ad5398_reg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to register %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s regulator driver is registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad5398_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5398_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_init_data*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.ad5398_chip_info*, align 8
  %9 = alloca %struct.ad5398_current_data_format*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.regulator_init_data* @dev_get_platdata(i32* %11)
  store %struct.regulator_init_data* %12, %struct.regulator_init_data** %6, align 8
  %13 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ad5398_current_data_format*
  store %struct.ad5398_current_data_format* %17, %struct.ad5398_current_data_format** %9, align 8
  %18 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %19 = icmp ne %struct.regulator_init_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %107

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.ad5398_chip_info* @devm_kzalloc(i32* %25, i32 32, i32 %26)
  store %struct.ad5398_chip_info* %27, %struct.ad5398_chip_info** %8, align 8
  %28 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %29 = icmp ne %struct.ad5398_chip_info* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %107

33:                                               ; preds = %23
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32* %35, i32** %36, align 8
  %37 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %38 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.regulator_init_data* %37, %struct.regulator_init_data** %38, align 8
  %39 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %40 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store %struct.ad5398_chip_info* %39, %struct.ad5398_chip_info** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %43 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %42, i32 0, i32 6
  store %struct.i2c_client* %41, %struct.i2c_client** %43, align 8
  %44 = load %struct.ad5398_current_data_format*, %struct.ad5398_current_data_format** %9, align 8
  %45 = getelementptr inbounds %struct.ad5398_current_data_format, %struct.ad5398_current_data_format* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %48 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ad5398_current_data_format*, %struct.ad5398_current_data_format** %9, align 8
  %50 = getelementptr inbounds %struct.ad5398_current_data_format, %struct.ad5398_current_data_format* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %53 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ad5398_current_data_format*, %struct.ad5398_current_data_format** %9, align 8
  %55 = getelementptr inbounds %struct.ad5398_current_data_format, %struct.ad5398_current_data_format* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %59 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ad5398_current_data_format*, %struct.ad5398_current_data_format** %9, align 8
  %61 = getelementptr inbounds %struct.ad5398_current_data_format, %struct.ad5398_current_data_format* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %64 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %66 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %70 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %68, %71
  %73 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %74 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 @devm_regulator_register(i32* %76, %struct.TYPE_3__* @ad5398_reg, %struct.regulator_config* %7)
  %78 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %79 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %81 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %33
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %89 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ad5398_reg, i32 0, i32 0), align 4
  %92 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %94 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %3, align 4
  br label %107

97:                                               ; preds = %33
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %100 = call i32 @i2c_set_clientdata(%struct.i2c_client* %98, %struct.ad5398_chip_info* %99)
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %97, %85, %30, %20
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.regulator_init_data* @dev_get_platdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.ad5398_chip_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regulator_register(i32*, %struct.TYPE_3__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ad5398_chip_info*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
