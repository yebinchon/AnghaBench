; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_chipselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i64, i32, %struct.davinci_spi_config* }
%struct.davinci_spi_config = type { i64 }
%struct.davinci_spi = type { i64 }

@CS_DEFAULT = common dso_local global i32 0, align 4
@SPIDAT1_WDEL = common dso_local global i32 0, align 4
@BITBANG_CS_ACTIVE = common dso_local global i32 0, align 4
@SPI_CS_WORD = common dso_local global i32 0, align 4
@SPIDAT1_CSHOLD_MASK = common dso_local global i32 0, align 4
@SPIDAT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @davinci_spi_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_spi_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.davinci_spi*, align 8
  %6 = alloca %struct.davinci_spi_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 4
  %11 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %10, align 8
  store %struct.davinci_spi_config* %11, %struct.davinci_spi_config** %6, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @CS_DEFAULT, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.davinci_spi* @spi_master_get_devdata(i32 %18)
  store %struct.davinci_spi* %19, %struct.davinci_spi** %5, align 8
  %20 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %6, align 8
  %21 = icmp ne %struct.davinci_spi_config* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %6, align 8
  %24 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @SPIDAT1_WDEL, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %22, %2
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @BITBANG_CS_ACTIVE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @gpiod_set_value(i64 %43, i32 1)
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @gpiod_set_value(i64 %48, i32 0)
  br label %50

50:                                               ; preds = %45, %40
  br label %73

51:                                               ; preds = %31
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @BITBANG_CS_ACTIVE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SPI_CS_WORD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @SPIDAT1_CSHOLD_MASK, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 1, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %66, %51
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %76 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SPIDAT1, align 8
  %79 = add nsw i64 %77, %78
  %80 = add nsw i64 %79, 2
  %81 = call i32 @iowrite16(i32 %74, i64 %80)
  ret void
}

declare dso_local %struct.davinci_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
