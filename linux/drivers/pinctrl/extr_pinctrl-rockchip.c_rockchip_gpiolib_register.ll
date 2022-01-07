; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_gpiolib_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_gpiolib_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32, i32*, i32, i32 }
%struct.platform_device = type { i32 }
%struct.rockchip_pinctrl = type { %struct.rockchip_pin_ctrl* }
%struct.rockchip_pin_ctrl = type { i32, %struct.rockchip_pin_bank* }
%struct.rockchip_pin_bank = type { %struct.gpio_chip, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"bank %s is not valid\0A\00", align 1
@rockchip_gpiolib_chip = common dso_local global %struct.gpio_chip zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to register gpio_chip %s, error code: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.rockchip_pinctrl*)* @rockchip_gpiolib_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_gpiolib_register(%struct.platform_device* %0, %struct.rockchip_pinctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.rockchip_pinctrl*, align 8
  %6 = alloca %struct.rockchip_pin_ctrl*, align 8
  %7 = alloca %struct.rockchip_pin_bank*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.rockchip_pinctrl* %1, %struct.rockchip_pinctrl** %5, align 8
  %11 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %12 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %11, i32 0, i32 0
  %13 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %12, align 8
  store %struct.rockchip_pin_ctrl* %13, %struct.rockchip_pin_ctrl** %6, align 8
  %14 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %6, align 8
  %15 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %14, i32 0, i32 1
  %16 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %15, align 8
  store %struct.rockchip_pin_bank* %16, %struct.rockchip_pin_bank** %7, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %79, %2
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %6, align 8
  %20 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %25 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %32 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %79

35:                                               ; preds = %23
  %36 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %37 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %36, i32 0, i32 0
  %38 = bitcast %struct.gpio_chip* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 bitcast (%struct.gpio_chip* @rockchip_gpiolib_chip to i8*), i64 24, i1 false)
  %39 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %40 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %39, i32 0, i32 0
  store %struct.gpio_chip* %40, %struct.gpio_chip** %8, align 8
  %41 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %42 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %47 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %54 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %56 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %59 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %61 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %64 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %66 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %67 = call i32 @gpiochip_add_data(%struct.gpio_chip* %65, %struct.rockchip_pin_bank* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %35
  %71 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %74 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  br label %88

78:                                               ; preds = %35
  br label %79

79:                                               ; preds = %78, %28
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %83 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %82, i32 1
  store %struct.rockchip_pin_bank* %83, %struct.rockchip_pin_bank** %7, align 8
  br label %17

84:                                               ; preds = %17
  %85 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %86 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %87 = call i32 @rockchip_interrupts_register(%struct.platform_device* %85, %struct.rockchip_pinctrl* %86)
  store i32 0, i32* %3, align 4
  br label %113

88:                                               ; preds = %70
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %10, align 4
  %91 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %92 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %91, i32 -1
  store %struct.rockchip_pin_bank* %92, %struct.rockchip_pin_bank** %7, align 8
  br label %93

93:                                               ; preds = %106, %88
  %94 = load i32, i32* %10, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %98 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %106

102:                                              ; preds = %96
  %103 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %104 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %103, i32 0, i32 0
  %105 = call i32 @gpiochip_remove(%struct.gpio_chip* %104)
  br label %106

106:                                              ; preds = %102, %101
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %10, align 4
  %109 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %110 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %109, i32 -1
  store %struct.rockchip_pin_bank* %110, %struct.rockchip_pin_bank** %7, align 8
  br label %93

111:                                              ; preds = %93
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %84
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.rockchip_pin_bank*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @rockchip_interrupts_register(%struct.platform_device*, %struct.rockchip_pinctrl*) #1

declare dso_local i32 @gpiochip_remove(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
