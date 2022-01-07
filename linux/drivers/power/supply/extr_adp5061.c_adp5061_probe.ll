; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_adp5061.c_adp5061_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.power_supply_config = type { %struct.adp5061_state* }
%struct.adp5061_state = type { i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adp5061_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize register map\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@adp5061_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register power supply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adp5061_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5061_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca %struct.adp5061_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.adp5061_state* @devm_kzalloc(i32* %10, i32 16, i32 %11)
  store %struct.adp5061_state* %12, %struct.adp5061_state** %7, align 8
  %13 = load %struct.adp5061_state*, %struct.adp5061_state** %7, align 8
  %14 = icmp ne %struct.adp5061_state* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %62

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.adp5061_state*, %struct.adp5061_state** %7, align 8
  %21 = getelementptr inbounds %struct.adp5061_state, %struct.adp5061_state* %20, i32 0, i32 2
  store %struct.i2c_client* %19, %struct.i2c_client** %21, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @adp5061_regmap_config)
  %24 = load %struct.adp5061_state*, %struct.adp5061_state** %7, align 8
  %25 = getelementptr inbounds %struct.adp5061_state, %struct.adp5061_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.adp5061_state*, %struct.adp5061_state** %7, align 8
  %27 = getelementptr inbounds %struct.adp5061_state, %struct.adp5061_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %62

37:                                               ; preds = %18
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.adp5061_state*, %struct.adp5061_state** %7, align 8
  %40 = call i32 @i2c_set_clientdata(%struct.i2c_client* %38, %struct.adp5061_state* %39)
  %41 = load %struct.adp5061_state*, %struct.adp5061_state** %7, align 8
  %42 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.adp5061_state* %41, %struct.adp5061_state** %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call i32 @devm_power_supply_register(i32* %44, i32* @adp5061_desc, %struct.power_supply_config* %6)
  %46 = load %struct.adp5061_state*, %struct.adp5061_state** %7, align 8
  %47 = getelementptr inbounds %struct.adp5061_state, %struct.adp5061_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.adp5061_state*, %struct.adp5061_state** %7, align 8
  %49 = getelementptr inbounds %struct.adp5061_state, %struct.adp5061_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %37
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.adp5061_state*, %struct.adp5061_state** %7, align 8
  %58 = getelementptr inbounds %struct.adp5061_state, %struct.adp5061_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %53, %31, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.adp5061_state* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adp5061_state*) #2

declare dso_local i32 @devm_power_supply_register(i32*, i32*, %struct.power_supply_config*) #2

declare dso_local i32 @PTR_ERR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
