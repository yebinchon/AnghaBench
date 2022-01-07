; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xcomm.c_spi_xcomm_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xcomm.c_spi_xcomm_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_xcomm = type { i64 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SPI_XCOMM_CLOCK = common dso_local global i32 0, align 4
@SPI_XCOMM_SETTINGS_CLOCK_DIV_64 = common dso_local global i32 0, align 4
@SPI_XCOMM_SETTINGS_CLOCK_DIV_16 = common dso_local global i32 0, align 4
@SPI_XCOMM_SETTINGS_CLOCK_DIV_4 = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_XCOMM_SETTINGS_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_XCOMM_SETTINGS_CPHA = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_XCOMM_SETTINGS_3WIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_xcomm*, %struct.spi_device*, %struct.spi_transfer*, i32*)* @spi_xcomm_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_xcomm_setup_transfer(%struct.spi_xcomm* %0, %struct.spi_device* %1, %struct.spi_transfer* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_xcomm*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.spi_transfer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.spi_xcomm* %0, %struct.spi_xcomm** %6, align 8
  store %struct.spi_device* %1, %struct.spi_device** %7, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 62
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %114

18:                                               ; preds = %4
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.spi_xcomm*, %struct.spi_xcomm** %6, align 8
  %23 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %18
  %27 = load i32, i32* @SPI_XCOMM_CLOCK, align 4
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @DIV_ROUND_UP(i32 %27, i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp uge i32 %32, 64
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @SPI_XCOMM_SETTINGS_CLOCK_DIV_64, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %53

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  %41 = icmp uge i32 %40, 16
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @SPI_XCOMM_SETTINGS_CLOCK_DIV_16, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %52

47:                                               ; preds = %39
  %48 = load i32, i32* @SPI_XCOMM_SETTINGS_CLOCK_DIV_4, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.spi_xcomm*, %struct.spi_xcomm** %6, align 8
  %58 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %18
  %60 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SPI_CPOL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, i32* @SPI_XCOMM_SETTINGS_CPOL, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %77

71:                                               ; preds = %59
  %72 = load i32, i32* @SPI_XCOMM_SETTINGS_CPOL, align 4
  %73 = xor i32 %72, -1
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SPI_CPHA, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load i32, i32* @SPI_XCOMM_SETTINGS_CPHA, align 4
  %86 = xor i32 %85, -1
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %95

90:                                               ; preds = %77
  %91 = load i32, i32* @SPI_XCOMM_SETTINGS_CPHA, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %84
  %96 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SPI_3WIRE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load i32, i32* @SPI_XCOMM_SETTINGS_3WIRE, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %113

107:                                              ; preds = %95
  %108 = load i32, i32* @SPI_XCOMM_SETTINGS_3WIRE, align 4
  %109 = xor i32 %108, -1
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %15
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
