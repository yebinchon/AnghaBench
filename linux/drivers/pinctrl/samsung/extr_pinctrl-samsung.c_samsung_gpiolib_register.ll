; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_gpiolib_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_gpiolib_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32, i32*, i32, i32 }
%struct.platform_device = type { i32 }
%struct.samsung_pinctrl_drv_data = type { i32, %struct.samsung_pin_bank* }
%struct.samsung_pin_bank = type { i32, i32, i32, %struct.TYPE_2__, %struct.gpio_chip }
%struct.TYPE_2__ = type { i32 }

@samsung_gpiolib_chip = common dso_local global %struct.gpio_chip zeroinitializer, align 8
@.str = private unnamed_addr constant [49 x i8] c"failed to register gpio_chip %s, error code: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.samsung_pinctrl_drv_data*)* @samsung_gpiolib_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_gpiolib_register(%struct.platform_device* %0, %struct.samsung_pinctrl_drv_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %6 = alloca %struct.samsung_pin_bank*, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.samsung_pinctrl_drv_data* %1, %struct.samsung_pinctrl_drv_data** %5, align 8
  %10 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %11 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %10, i32 0, i32 1
  %12 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %11, align 8
  store %struct.samsung_pin_bank* %12, %struct.samsung_pin_bank** %6, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %67, %2
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %16 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %13
  %20 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %6, align 8
  %21 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %20, i32 0, i32 4
  %22 = bitcast %struct.gpio_chip* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.gpio_chip* @samsung_gpiolib_chip to i8*), i64 24, i1 false)
  %23 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %6, align 8
  %24 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %23, i32 0, i32 4
  store %struct.gpio_chip* %24, %struct.gpio_chip** %7, align 8
  %25 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %6, align 8
  %26 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %30 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %6, align 8
  %32 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %39 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %6, align 8
  %41 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %6, align 8
  %46 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %49 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %53 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %6, align 8
  %54 = call i32 @devm_gpiochip_add_data(i32* %51, %struct.gpio_chip* %52, %struct.samsung_pin_bank* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %19
  %58 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %61 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %73

66:                                               ; preds = %19
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %6, align 8
  %71 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %70, i32 1
  store %struct.samsung_pin_bank* %71, %struct.samsung_pin_bank** %6, align 8
  br label %13

72:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %57
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.gpio_chip*, %struct.samsung_pin_bank*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
