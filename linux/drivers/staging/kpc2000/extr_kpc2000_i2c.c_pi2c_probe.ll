; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_pi2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_pi2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.i2c_device = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@smbus_algorithm = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FEATURE_IDF = common dso_local global i32 0, align 4
@FEATURE_I2C_BLOCK_READ = common dso_local global i32 0, align 4
@FEATURE_SMBUS_PEC = common dso_local global i32 0, align 4
@FEATURE_BLOCK_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Fake SMBus I801 adapter\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to add SMBus adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pi2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_device*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.i2c_device* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.i2c_device* %10, %struct.i2c_device** %5, align 8
  %11 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %12 = icmp ne %struct.i2c_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %110

16:                                               ; preds = %1
  %17 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %17, i32 0, i32 1
  %19 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %20 = call i32 @i2c_set_adapdata(%struct.TYPE_4__* %18, %struct.i2c_device* %19)
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %26 = load i32, i32* @I2C_CLASS_SPD, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i32* @smbus_algorithm, i32** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %6, align 8
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = icmp ne %struct.resource* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %16
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %110

42:                                               ; preds = %16
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.resource*, %struct.resource** %6, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = call i32 @resource_size(%struct.resource* %48)
  %50 = call i64 @devm_ioremap_nocache(i32* %44, i32 %47, i32 %49)
  %51 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %110

60:                                               ; preds = %42
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %63 = call i32 @platform_set_drvdata(%struct.platform_device* %61, %struct.i2c_device* %62)
  %64 = load i32, i32* @FEATURE_IDF, align 4
  %65 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %66 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* @FEATURE_I2C_BLOCK_READ, align 4
  %70 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %71 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @FEATURE_SMBUS_PEC, align 4
  %75 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %76 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @FEATURE_BLOCK_BUFFER, align 4
  %80 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %81 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %87 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32* %85, i32** %89, align 8
  %90 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %91 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 3, i32* %92, align 4
  %93 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %94 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @snprintf(i32 %96, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %99 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %98, i32 0, i32 1
  %100 = call i32 @i2c_add_adapter(%struct.TYPE_4__* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %60
  %104 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %105 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = call i32 @dev_err(%struct.TYPE_5__* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %110

109:                                              ; preds = %60
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %103, %57, %39, %13
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.i2c_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_4__*, %struct.i2c_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_nocache(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
