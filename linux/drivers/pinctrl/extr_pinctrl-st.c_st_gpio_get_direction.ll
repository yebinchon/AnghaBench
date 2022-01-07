; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.st_gpio_bank = type { i64, %struct.st_pio_control }
%struct.st_pio_control = type { i32 }

@ST_GPIO_DIRECTION_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @st_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_gpio_bank*, align 8
  %7 = alloca %struct.st_pio_control, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %14 = call %struct.st_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.st_gpio_bank* %14, %struct.st_gpio_bank** %6, align 8
  %15 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %6, align 8
  %16 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %15, i32 0, i32 1
  %17 = bitcast %struct.st_pio_control* %7 to i8*
  %18 = bitcast %struct.st_pio_control* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 8 %18, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @st_pctl_get_pin_function(%struct.st_pio_control* %7, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @st_pinconf_get_direction(%struct.st_pio_control* %7, i32 %24, i64* %8)
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @ST_PINCONF_UNPACK_OE(i64 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %12, align 4
  %34 = icmp sle i32 %33, 2
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %6, align 8
  %37 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @REG_PIO_PC(i32 %39)
  %41 = add nsw i64 %38, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %5, align 4
  %45 = lshr i32 %43, %44
  %46 = and i32 %45, 1
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @ST_GPIO_DIRECTION_IN, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.st_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @st_pctl_get_pin_function(%struct.st_pio_control*, i32) #1

declare dso_local i32 @st_pinconf_get_direction(%struct.st_pio_control*, i32, i64*) #1

declare dso_local i32 @ST_PINCONF_UNPACK_OE(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @REG_PIO_PC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
