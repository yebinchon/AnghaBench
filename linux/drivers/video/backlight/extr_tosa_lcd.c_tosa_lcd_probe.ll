; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tosa_lcd.c_tosa_lcd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tosa_lcd.c_tosa_lcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.tosa_lcd_data = type { i32, i32*, %struct.spi_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TOSA_GPIO_TG_ON = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tg #pwr\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tosa-lcd\00", align 1
@tosa_lcd_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @tosa_lcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_lcd_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tosa_lcd_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tosa_lcd_data* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.tosa_lcd_data* %9, %struct.tosa_lcd_data** %5, align 8
  %10 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %11 = icmp ne %struct.tosa_lcd_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %17 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  store i32 8, i32* %19, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = call i32 @spi_setup(%struct.spi_device* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %73

26:                                               ; preds = %15
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %29 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %28, i32 0, i32 2
  store %struct.spi_device* %27, %struct.spi_device** %29, align 8
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %32 = call i32 @spi_set_drvdata(%struct.spi_device* %30, %struct.tosa_lcd_data* %31)
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 1
  %35 = load i32, i32* @TOSA_GPIO_TG_ON, align 4
  %36 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %37 = call i32 @devm_gpio_request_one(i32* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %73

42:                                               ; preds = %26
  %43 = call i32 @mdelay(i32 60)
  %44 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %45 = call i32 @tosa_lcd_tg_init(%struct.tosa_lcd_data* %44)
  %46 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %47 = call i32 @tosa_lcd_tg_on(%struct.tosa_lcd_data* %46)
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 1
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 1
  %52 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %53 = call i32* @devm_lcd_device_register(i32* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %51, %struct.tosa_lcd_data* %52, i32* @tosa_lcd_ops)
  %54 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %55 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %57 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @IS_ERR(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %42
  %62 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %63 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @PTR_ERR(i32* %64)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %67 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  br label %69

68:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %73

69:                                               ; preds = %61
  %70 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %71 = call i32 @tosa_lcd_tg_off(%struct.tosa_lcd_data* %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %68, %40, %24, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.tosa_lcd_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.tosa_lcd_data*) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @tosa_lcd_tg_init(%struct.tosa_lcd_data*) #1

declare dso_local i32 @tosa_lcd_tg_on(%struct.tosa_lcd_data*) #1

declare dso_local i32* @devm_lcd_device_register(i32*, i8*, i32*, %struct.tosa_lcd_data*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @tosa_lcd_tg_off(%struct.tosa_lcd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
