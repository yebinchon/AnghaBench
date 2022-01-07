; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-bus-gpio.c_siox_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-bus-gpio.c_siox_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.siox_gpio_ddata = type { i8*, i8*, i8*, i8* }
%struct.siox_master = type { i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to allocate siox master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"din\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to get %s GPIO: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dout\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"dclk\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dld\00", align 1
@siox_gpio_pushpull = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to register siox master: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @siox_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siox_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.siox_gpio_ddata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.siox_master*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.siox_master* @siox_master_alloc(%struct.device* %11, i32 32)
  store %struct.siox_master* %12, %struct.siox_master** %7, align 8
  %13 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %14 = icmp ne %struct.siox_master* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %120

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.siox_master* %22)
  %24 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %25 = call %struct.siox_gpio_ddata* @siox_master_get_devdata(%struct.siox_master* %24)
  store %struct.siox_gpio_ddata* %25, %struct.siox_gpio_ddata** %5, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* @GPIOD_IN, align 4
  %28 = call i8* @devm_gpiod_get(%struct.device* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %30 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %32 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %20
  %37 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %38 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %115

44:                                               ; preds = %20
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %47 = call i8* @devm_gpiod_get(%struct.device* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %49 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %51 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %57 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @PTR_ERR(i8* %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %115

63:                                               ; preds = %44
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %66 = call i8* @devm_gpiod_get(%struct.device* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %68 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %70 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @IS_ERR(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %76 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %115

82:                                               ; preds = %63
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %85 = call i8* @devm_gpiod_get(%struct.device* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %87 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %89 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %82
  %94 = load %struct.siox_gpio_ddata*, %struct.siox_gpio_ddata** %5, align 8
  %95 = getelementptr inbounds %struct.siox_gpio_ddata, %struct.siox_gpio_ddata* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  store i32 %97, i32* %6, align 4
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %115

101:                                              ; preds = %82
  %102 = load i32, i32* @siox_gpio_pushpull, align 4
  %103 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %104 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %106 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %108 = call i32 @siox_master_register(%struct.siox_master* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %93, %74, %55, %36
  %116 = load %struct.siox_master*, %struct.siox_master** %7, align 8
  %117 = call i32 @siox_master_put(%struct.siox_master* %116)
  br label %118

118:                                              ; preds = %115, %101
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %15
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.siox_master* @siox_master_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.siox_master*) #1

declare dso_local %struct.siox_gpio_ddata* @siox_master_get_devdata(%struct.siox_master*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @siox_master_register(%struct.siox_master*) #1

declare dso_local i32 @siox_master_put(%struct.siox_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
