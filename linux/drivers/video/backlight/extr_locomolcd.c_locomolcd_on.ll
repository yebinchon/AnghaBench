; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_locomolcd.c_locomolcd_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_locomolcd.c_locomolcd_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@locomolcd_dev = common dso_local global %struct.TYPE_5__* null, align 8
@LOCOMO_GPIO_LCD_VSHA_ON = common dso_local global i32 0, align 4
@LOCOMO_GPIO_LCD_VSHD_ON = common dso_local global i32 0, align 4
@LOCOMO_GPIO_LCD_VEE_ON = common dso_local global i32 0, align 4
@LOCOMO_TC = common dso_local global i64 0, align 8
@LOCOMO_CPSD = common dso_local global i64 0, align 8
@LOCOMO_GPIO_LCD_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @locomolcd_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locomolcd_on(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @LOCOMO_GPIO_LCD_VSHA_ON, align 4
  %8 = call i32 @locomo_gpio_set_dir(i32 %6, i32 %7, i32 0)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @LOCOMO_GPIO_LCD_VSHA_ON, align 4
  %14 = call i32 @locomo_gpio_write(i32 %12, i32 %13, i32 1)
  %15 = call i32 @mdelay(i32 2)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LOCOMO_GPIO_LCD_VSHD_ON, align 4
  %21 = call i32 @locomo_gpio_set_dir(i32 %19, i32 %20, i32 0)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LOCOMO_GPIO_LCD_VSHD_ON, align 4
  %27 = call i32 @locomo_gpio_write(i32 %25, i32 %26, i32 1)
  %28 = call i32 @mdelay(i32 2)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @locomo_m62332_senddata(%struct.TYPE_5__* %29, i32 %30, i32 0)
  %32 = call i32 @mdelay(i32 5)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @LOCOMO_GPIO_LCD_VEE_ON, align 4
  %38 = call i32 @locomo_gpio_set_dir(i32 %36, i32 %37, i32 0)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @LOCOMO_GPIO_LCD_VEE_ON, align 4
  %44 = call i32 @locomo_gpio_write(i32 %42, i32 %43, i32 1)
  %45 = call i32 @mdelay(i32 10)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LOCOMO_TC, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @locomo_writel(i32 1, i64 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LOCOMO_CPSD, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @locomo_writel(i32 6, i64 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LOCOMO_TC, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @locomo_writel(i32 5, i64 %62)
  %64 = call i32 @mdelay(i32 10)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @LOCOMO_GPIO_LCD_MOD, align 4
  %70 = call i32 @locomo_gpio_set_dir(i32 %68, i32 %69, i32 0)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @locomolcd_dev, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @LOCOMO_GPIO_LCD_MOD, align 4
  %76 = call i32 @locomo_gpio_write(i32 %74, i32 %75, i32 1)
  ret void
}

declare dso_local i32 @locomo_gpio_set_dir(i32, i32, i32) #1

declare dso_local i32 @locomo_gpio_write(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @locomo_m62332_senddata(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @locomo_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
