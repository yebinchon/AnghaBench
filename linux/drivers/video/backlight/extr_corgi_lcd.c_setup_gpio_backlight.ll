; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_setup_gpio_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_setup_gpio_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_lcd = type { i32, i32, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.corgi_lcd_platform_data = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"BL_ON\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to request GPIO%d for backlight_on\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"BL_CONT\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"failed to request GPIO%d for backlight_cont\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.corgi_lcd*, %struct.corgi_lcd_platform_data*)* @setup_gpio_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_gpio_backlight(%struct.corgi_lcd* %0, %struct.corgi_lcd_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.corgi_lcd*, align 8
  %5 = alloca %struct.corgi_lcd_platform_data*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  store %struct.corgi_lcd* %0, %struct.corgi_lcd** %4, align 8
  store %struct.corgi_lcd_platform_data* %1, %struct.corgi_lcd_platform_data** %5, align 8
  %8 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %9 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %8, i32 0, i32 3
  %10 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  store %struct.spi_device* %10, %struct.spi_device** %6, align 8
  %11 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %12 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %14 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %13, i32 0, i32 1
  store i32 -1, i32* %14, align 4
  %15 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @gpio_is_valid(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %24 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @devm_gpio_request(i32* %22, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 0
  %32 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %33 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %97

37:                                               ; preds = %20
  %38 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %39 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %42 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %44 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @gpio_direction_output(i32 %45, i32 0)
  br label %47

47:                                               ; preds = %37, %2
  %48 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %49 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @gpio_is_valid(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %47
  %54 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %57 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @devm_gpio_request(i32* %55, i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %66 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %97

70:                                               ; preds = %53
  %71 = load %struct.corgi_lcd_platform_data*, %struct.corgi_lcd_platform_data** %5, align 8
  %72 = getelementptr inbounds %struct.corgi_lcd_platform_data, %struct.corgi_lcd_platform_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %75 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %77 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @gpio_is_valid(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %83 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %85 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @gpio_direction_output(i32 %86, i32 1)
  br label %95

88:                                               ; preds = %70
  %89 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %90 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  %91 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %92 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @gpio_direction_output(i32 %93, i32 0)
  br label %95

95:                                               ; preds = %88, %81
  br label %96

96:                                               ; preds = %95, %47
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %62, %29
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request(i32*, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
