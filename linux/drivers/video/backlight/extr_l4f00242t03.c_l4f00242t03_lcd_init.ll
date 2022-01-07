; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_l4f00242t03.c_l4f00242t03_lcd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_l4f00242t03.c_l4f00242t03_lcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.l4f00242t03_pdata = type { i32, i32 }
%struct.l4f00242t03_priv = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"initializing LCD\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to set the IO regulator voltage.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to enable the IO regulator.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to set the core regulator voltage.\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to enable the core regulator.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @l4f00242t03_lcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l4f00242t03_lcd_init(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.l4f00242t03_pdata*, align 8
  %4 = alloca %struct.l4f00242t03_priv*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.l4f00242t03_pdata* @dev_get_platdata(i32* %8)
  store %struct.l4f00242t03_pdata* %9, %struct.l4f00242t03_pdata** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = call %struct.l4f00242t03_priv* @spi_get_drvdata(%struct.spi_device* %10)
  store %struct.l4f00242t03_priv* %11, %struct.l4f00242t03_priv** %4, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 54, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = call i32 @param(i32 0)
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 58, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = call i32 @param(i32 96)
  store i32 %17, i32* %16, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %4, align 8
  %22 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regulator_set_voltage(i32 %23, i32 1800000, i32 1800000)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %90

31:                                               ; preds = %1
  %32 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %4, align 8
  %33 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regulator_enable(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %90

42:                                               ; preds = %31
  %43 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %4, align 8
  %44 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regulator_set_voltage(i32 %45, i32 2800000, i32 2800000)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %4, align 8
  %54 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regulator_disable(i32 %55)
  br label %90

57:                                               ; preds = %42
  %58 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %4, align 8
  %59 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regulator_enable(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.l4f00242t03_priv*, %struct.l4f00242t03_priv** %4, align 8
  %69 = getelementptr inbounds %struct.l4f00242t03_priv, %struct.l4f00242t03_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @regulator_disable(i32 %70)
  br label %90

72:                                               ; preds = %57
  %73 = load %struct.l4f00242t03_pdata*, %struct.l4f00242t03_pdata** %3, align 8
  %74 = getelementptr inbounds %struct.l4f00242t03_pdata, %struct.l4f00242t03_pdata* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @l4f00242t03_reset(i32 %75)
  %77 = load %struct.l4f00242t03_pdata*, %struct.l4f00242t03_pdata** %3, align 8
  %78 = getelementptr inbounds %struct.l4f00242t03_pdata, %struct.l4f00242t03_pdata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @gpio_set_value(i32 %79, i32 1)
  %81 = call i32 @msleep(i32 60)
  %82 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %85 = call i32 @ARRAY_SIZE(i32* %84)
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32 @spi_write(%struct.spi_device* %82, i32* %83, i32 %88)
  br label %90

90:                                               ; preds = %72, %64, %49, %38, %27
  ret void
}

declare dso_local %struct.l4f00242t03_pdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.l4f00242t03_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @param(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @l4f00242t03_reset(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
