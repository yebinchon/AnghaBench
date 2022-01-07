; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_l4f00242t03.c_l4f00242t03_lcd_power_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_l4f00242t03.c_l4f00242t03_lcd_power_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.l4f00242t03_priv = type { i32, %struct.lcd_device*, %struct.spi_device* }
%struct.spi_device = type { i32 }

@FB_BLANK_NORMAL = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Resuming LCD\0A\00", align 1
@FB_BLANK_VSYNC_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Standby the LCD\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @l4f00242t03_lcd_power_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l4f00242t03_lcd_power_set(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l4f00242t03_priv*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %12 = call %struct.l4f00242t03_priv* @lcd_get_data(%struct.lcd_device* %11)
  store %struct.l4f00242t03_priv* %12, %struct.l4f00242t03_priv** %5, align 8
  %13 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %5, align 8
  %14 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %13, i32 0, i32 2
  %15 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  store %struct.spi_device* %15, %struct.spi_device** %6, align 8
  store i32 17, i32* %7, align 4
  store i32 41, i32* %8, align 4
  store i32 16, i32* %9, align 4
  store i32 40, i32* %10, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %5, align 8
  %21 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %53

26:                                               ; preds = %19
  %27 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %5, align 8
  %28 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %37 = call i32 @spi_write(%struct.spi_device* %36, i32* %7, i32 4)
  %38 = call i32 @msleep(i32 60)
  %39 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %40 = call i32 @spi_write(%struct.spi_device* %39, i32* %8, i32 4)
  br label %52

41:                                               ; preds = %26
  %42 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %43 = call i32 @l4f00242t03_lcd_init(%struct.spi_device* %42)
  %44 = load i32, i32* @FB_BLANK_VSYNC_SUSPEND, align 4
  %45 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %5, align 8
  %46 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %5, align 8
  %48 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %47, i32 0, i32 1
  %49 = load %struct.lcd_device*, %struct.lcd_device** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @l4f00242t03_lcd_power_set(%struct.lcd_device* %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %32
  br label %53

53:                                               ; preds = %52, %25
  br label %105

54:                                               ; preds = %2
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %5, align 8
  %60 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 0
  %67 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %69 = call i32 @spi_write(%struct.spi_device* %68, i32* %10, i32 4)
  %70 = call i32 @msleep(i32 60)
  %71 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %72 = call i32 @spi_write(%struct.spi_device* %71, i32* %9, i32 4)
  br label %90

73:                                               ; preds = %58
  %74 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %5, align 8
  %75 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %89

80:                                               ; preds = %73
  %81 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %82 = call i32 @l4f00242t03_lcd_init(%struct.spi_device* %81)
  %83 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %84 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %5, align 8
  %85 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @l4f00242t03_lcd_power_set(%struct.lcd_device* %86, i32 %87)
  br label %89

89:                                               ; preds = %80, %79
  br label %90

90:                                               ; preds = %89, %64
  br label %104

91:                                               ; preds = %54
  %92 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %5, align 8
  %93 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %99 = call i32 @spi_write(%struct.spi_device* %98, i32* %10, i32 4)
  %100 = call i32 @msleep(i32 60)
  %101 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %102 = call i32 @l4f00242t03_lcd_powerdown(%struct.spi_device* %101)
  br label %103

103:                                              ; preds = %97, %91
  br label %104

104:                                              ; preds = %103, %90
  br label %105

105:                                              ; preds = %104, %53
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %5, align 8
  %108 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  ret i32 0
}

declare dso_local %struct.l4f00242t03_priv* @lcd_get_data(%struct.lcd_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @l4f00242t03_lcd_init(%struct.spi_device*) #1

declare dso_local i32 @l4f00242t03_lcd_powerdown(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
