; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64, i32, i32 }

@SPI_NO_CS = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not set gpio %i as output: %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Native CS is not supported - please configure cs-gpio in device-tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Native CS is not working for cs > 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @bcm2835aux_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835aux_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SPI_NO_CS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @gpio_is_valid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SPI_CS_HIGH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  %30 = call i32 @gpio_direction_output(i32 %21, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 2
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %18
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %58

43:                                               ; preds = %12
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 2
  %46 = call i32 @dev_warn(i32* %45, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %58

52:                                               ; preds = %43
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 2
  %55 = call i32 @dev_warn(i32* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %51, %41, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
