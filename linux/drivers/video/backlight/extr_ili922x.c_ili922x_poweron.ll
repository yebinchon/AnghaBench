; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@REG_POWER_CONTROL_1 = common dso_local global i32 0, align 4
@REG_POWER_CONTROL_2 = common dso_local global i32 0, align 4
@REG_POWER_CONTROL_3 = common dso_local global i32 0, align 4
@REG_POWER_CONTROL_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ili922x_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili922x_poweron(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = load i32, i32* @REG_POWER_CONTROL_1, align 4
  %6 = call i32 @ili922x_write(%struct.spi_device* %4, i32 %5, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = call i32 @usleep_range(i32 10000, i32 10500)
  %8 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %9 = load i32, i32* @REG_POWER_CONTROL_2, align 4
  %10 = call i32 @ili922x_write(%struct.spi_device* %8, i32 %9, i32 0)
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %14 = load i32, i32* @REG_POWER_CONTROL_3, align 4
  %15 = call i32 @ili922x_write(%struct.spi_device* %13, i32 %14, i32 0)
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = call i32 @msleep(i32 40)
  %19 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %20 = load i32, i32* @REG_POWER_CONTROL_4, align 4
  %21 = call i32 @ili922x_write(%struct.spi_device* %19, i32 %20, i32 0)
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = call i32 @msleep(i32 40)
  %25 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %26 = call i32 @ili922x_write(%struct.spi_device* %25, i32 86, i32 2063)
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %30 = load i32, i32* @REG_POWER_CONTROL_1, align 4
  %31 = call i32 @ili922x_write(%struct.spi_device* %29, i32 %30, i32 16960)
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = call i32 @usleep_range(i32 10000, i32 10500)
  %35 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %36 = load i32, i32* @REG_POWER_CONTROL_2, align 4
  %37 = call i32 @ili922x_write(%struct.spi_device* %35, i32 %36, i32 0)
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %41 = load i32, i32* @REG_POWER_CONTROL_3, align 4
  %42 = call i32 @ili922x_write(%struct.spi_device* %40, i32 %41, i32 20)
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = call i32 @msleep(i32 40)
  %46 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %47 = load i32, i32* @REG_POWER_CONTROL_4, align 4
  %48 = call i32 @ili922x_write(%struct.spi_device* %46, i32 %47, i32 4889)
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = call i32 @msleep(i32 40)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ili922x_write(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
