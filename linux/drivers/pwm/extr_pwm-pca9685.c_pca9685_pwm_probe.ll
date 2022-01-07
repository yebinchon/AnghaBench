; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pca9685.c_pca9685_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pca9685.c_pca9685_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.pca9685 = type { %struct.TYPE_3__, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32*, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pca9685_regmap_i2c_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to initialize register map: %d\0A\00", align 1
@PCA9685_DEFAULT_PERIOD = common dso_local global i32 0, align 4
@PCA9685_MODE2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@MODE2_INVRT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"open-drain\00", align 1
@MODE2_OUTDRV = common dso_local global i32 0, align 4
@PCA9685_ALL_LED_OFF_L = common dso_local global i32 0, align 4
@PCA9685_ALL_LED_OFF_H = common dso_local global i32 0, align 4
@pca9685_pwm_ops = common dso_local global i32 0, align 4
@PCA9685_MAXCHAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pca9685_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9685_pwm_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pca9685*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pca9685* @devm_kzalloc(i32* %10, i32 48, i32 %11)
  store %struct.pca9685* %12, %struct.pca9685** %6, align 8
  %13 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %14 = icmp ne %struct.pca9685* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %136

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @pca9685_regmap_i2c_config)
  %21 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %22 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %24 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %30 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %136

38:                                               ; preds = %18
  %39 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %40 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @PCA9685_DEFAULT_PERIOD, align 4
  %42 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %43 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %46 = call i32 @i2c_set_clientdata(%struct.i2c_client* %44, %struct.pca9685* %45)
  %47 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %48 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PCA9685_MODE2, align 4
  %51 = call i32 @regmap_read(i32 %49, i32 %50, i32* %8)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i64 @device_property_read_bool(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %38
  %57 = load i32, i32* @MODE2_INVRT, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %65

60:                                               ; preds = %38
  %61 = load i32, i32* @MODE2_INVRT, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = call i64 @device_property_read_bool(i32* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* @MODE2_OUTDRV, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %79

75:                                               ; preds = %65
  %76 = load i32, i32* @MODE2_OUTDRV, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %81 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PCA9685_MODE2, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @regmap_write(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %87 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PCA9685_ALL_LED_OFF_L, align 4
  %90 = call i32 @regmap_write(i32 %88, i32 %89, i32 0)
  %91 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %92 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PCA9685_ALL_LED_OFF_H, align 4
  %95 = call i32 @regmap_write(i32 %93, i32 %94, i32 0)
  %96 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %97 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store i32* @pca9685_pwm_ops, i32** %98, align 8
  %99 = load i64, i64* @PCA9685_MAXCHAN, align 8
  %100 = add nsw i64 %99, 1
  %101 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %102 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i64 %100, i64* %103, align 8
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %107 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32* %105, i32** %108, align 8
  %109 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %110 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32 -1, i32* %111, align 8
  %112 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %113 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %112, i32 0, i32 0
  %114 = call i32 @pwmchip_add(%struct.TYPE_3__* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %79
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %136

119:                                              ; preds = %79
  %120 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %121 = call i32 @pca9685_pwm_gpio_probe(%struct.pca9685* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.pca9685*, %struct.pca9685** %6, align 8
  %126 = getelementptr inbounds %struct.pca9685, %struct.pca9685* %125, i32 0, i32 0
  %127 = call i32 @pwmchip_remove(%struct.TYPE_3__* %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %136

129:                                              ; preds = %119
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = call i32 @pm_runtime_set_active(i32* %131)
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = call i32 @pm_runtime_enable(i32* %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %129, %124, %117, %28, %15
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.pca9685* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pca9685*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @device_property_read_bool(i32*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_3__*) #1

declare dso_local i32 @pca9685_pwm_gpio_probe(%struct.pca9685*) #1

declare dso_local i32 @pwmchip_remove(%struct.TYPE_3__*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
