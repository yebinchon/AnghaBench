; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, %struct.spi_master* }
%struct.spi_master = type { i32 }
%struct.lantiq_ssc_spi = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"using internal chipselect %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"chipselect %i too small (min %i)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LTQ_SPI_GPOCON_ISCSBN_S = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@LTQ_SPI_GPOCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lantiq_ssc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lantiq_ssc_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.lantiq_ssc_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 3
  %10 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  store %struct.spi_master* %10, %struct.spi_master** %4, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %12 = call %struct.lantiq_ssc_spi* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.lantiq_ssc_spi* %12, %struct.lantiq_ssc_spi** %5, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @gpio_is_valid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

22:                                               ; preds = %1
  %23 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %24 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %30 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %35 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %39 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %73

44:                                               ; preds = %22
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %47 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %45, %48
  %50 = load i32, i32* @LTQ_SPI_GPOCON_ISCSBN_S, align 4
  %51 = add i32 %49, %50
  %52 = shl i32 1, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SPI_CS_HIGH, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %44
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %62 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %60, %63
  %65 = shl i32 1, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %59, %44
  %69 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @LTQ_SPI_GPOCON, align 4
  %72 = call i32 @lantiq_ssc_maskl(%struct.lantiq_ssc_spi* %69, i32 0, i32 %70, i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %33, %21
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.lantiq_ssc_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @lantiq_ssc_maskl(%struct.lantiq_ssc_spi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
