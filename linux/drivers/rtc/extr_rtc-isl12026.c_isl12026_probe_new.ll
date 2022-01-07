; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_probe_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_probe_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.isl12026 = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.nvmem_config = type { i8*, i32, i32, i32, %struct.isl12026*, i32, i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"isl12026-\00", align 1
@isl12026_nvm_write = common dso_local global i32 0, align 4
@isl12026_nvm_read = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ISL12026_EEPROM_ADDR = common dso_local global i32 0, align 4
@isl12026_rtc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @isl12026_probe_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl12026_probe_new(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.isl12026*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvmem_config, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 1
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 2
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 3
  store i32 512, i32* %10, align 8
  %11 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 4
  store %struct.isl12026* null, %struct.isl12026** %11, align 8
  %12 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 5
  %13 = load i32, i32* @isl12026_nvm_write, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 6
  %15 = load i32, i32* @isl12026_nvm_read, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 7
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  store i32* %18, i32** %16, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @I2C_FUNC_I2C, align 4
  %23 = call i32 @i2c_check_functionality(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %95

28:                                               ; preds = %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.isl12026* @devm_kzalloc(i32* %30, i32 16, i32 %31)
  store %struct.isl12026* %32, %struct.isl12026** %4, align 8
  %33 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %34 = icmp ne %struct.isl12026* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %95

38:                                               ; preds = %28
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %41 = call i32 @i2c_set_clientdata(%struct.i2c_client* %39, %struct.isl12026* %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = call i32 @isl12026_force_power_modes(%struct.i2c_client* %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ISL12026_EEPROM_ADDR, align 4
  %48 = call i32 @i2c_new_dummy_device(i32 %46, i32 %47)
  %49 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %50 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %52 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %38
  %57 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %58 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %95

61:                                               ; preds = %38
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call %struct.TYPE_5__* @devm_rtc_allocate_device(i32* %63)
  %65 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %66 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %65, i32 0, i32 0
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %66, align 8
  %67 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %68 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i32 @PTR_ERR_OR_ZERO(%struct.TYPE_5__* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %95

75:                                               ; preds = %61
  %76 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %77 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32* @isl12026_rtc_ops, i32** %79, align 8
  %80 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %81 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 4
  store %struct.isl12026* %80, %struct.isl12026** %81, align 8
  %82 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %83 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = call i32 @rtc_nvmem_register(%struct.TYPE_5__* %84, %struct.nvmem_config* %6)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %95

90:                                               ; preds = %75
  %91 = load %struct.isl12026*, %struct.isl12026** %4, align 8
  %92 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = call i32 @rtc_register_device(%struct.TYPE_5__* %93)
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %88, %73, %56, %35, %25
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.isl12026* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.isl12026*) #1

declare dso_local i32 @isl12026_force_power_modes(%struct.i2c_client*) #1

declare dso_local i32 @i2c_new_dummy_device(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_5__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.TYPE_5__*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_5__*, %struct.nvmem_config*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
