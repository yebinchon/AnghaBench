; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.plgpio = type { i32 (i32)*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PTO_DIR_REG = common dso_local global i32 0, align 4
@PTO_WDATA_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @plgpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plgpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.plgpio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %14 = call %struct.plgpio* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.plgpio* %14, %struct.plgpio** %8, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %18 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %3
  %22 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %23 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PTO_DIR_REG, align 4
  %26 = load i32, i32* @PTO_WDATA_REG, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %21
  %31 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %32 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %31, i32 0, i32 0
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 %33(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %101

41:                                               ; preds = %30
  %42 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %43 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PTO_DIR_REG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %48, %41
  %51 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %52 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PTO_WDATA_REG, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %57, %50
  br label %60

60:                                               ; preds = %59, %21, %3
  %61 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %62 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %61, i32 0, i32 2
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %69 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %73 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @plgpio_reg_set(i32 %70, i32 %71, i32 %75)
  br label %87

77:                                               ; preds = %60
  %78 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %79 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %83 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @plgpio_reg_reset(i32 %80, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %77, %67
  %88 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %89 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %93 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @plgpio_reg_reset(i32 %90, i32 %91, i32 %95)
  %97 = load %struct.plgpio*, %struct.plgpio** %8, align 8
  %98 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %97, i32 0, i32 2
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %87, %38
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.plgpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @plgpio_reg_set(i32, i32, i32) #1

declare dso_local i32 @plgpio_reg_reset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
