; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i32, i32 }
%struct.meson_spicc_device = type { i64, %struct.spi_message* }

@SPICC_ENABLE = common dso_local global i32 0, align 4
@SPICC_MODE_MASTER = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPICC_POL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPICC_PHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPICC_SSPOL = common dso_local global i32 0, align 4
@SPI_READY = common dso_local global i32 0, align 4
@SPICC_DRCTL_MASK = common dso_local global i32 0, align 4
@SPICC_DRCTL_LOWLEVEL = common dso_local global i32 0, align 4
@SPICC_DRCTL_IGNORE = common dso_local global i32 0, align 4
@SPICC_CS_MASK = common dso_local global i32 0, align 4
@SPICC_BITLENGTH_MASK = common dso_local global i32 0, align 4
@SPICC_CONREG = common dso_local global i64 0, align 8
@SPICC_PERIODREG = common dso_local global i64 0, align 8
@SPICC_TESTREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @meson_spicc_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_spicc_prepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.meson_spicc_device*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %9 = call %struct.meson_spicc_device* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.meson_spicc_device* %9, %struct.meson_spicc_device** %5, align 8
  %10 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %11 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %10, i32 0, i32 0
  %12 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  store %struct.spi_device* %12, %struct.spi_device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %14 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %15 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %14, i32 0, i32 1
  store %struct.spi_message* %13, %struct.spi_message** %15, align 8
  %16 = load i32, i32* @SPICC_ENABLE, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @SPICC_MODE_MASTER, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SPI_CPOL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @SPICC_POL, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load i32, i32* @SPICC_POL, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SPI_CPHA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @SPICC_PHA, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %53

48:                                               ; preds = %37
  %49 = load i32, i32* @SPICC_PHA, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SPI_CS_HIGH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @SPICC_SSPOL, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %69

64:                                               ; preds = %53
  %65 = load i32, i32* @SPICC_SSPOL, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %71 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SPI_READY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @SPICC_DRCTL_MASK, align 4
  %78 = load i32, i32* @SPICC_DRCTL_LOWLEVEL, align 4
  %79 = call i32 @FIELD_PREP(i32 %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %88

82:                                               ; preds = %69
  %83 = load i32, i32* @SPICC_DRCTL_MASK, align 4
  %84 = load i32, i32* @SPICC_DRCTL_IGNORE, align 4
  %85 = call i32 @FIELD_PREP(i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %82, %76
  %89 = load i32, i32* @SPICC_CS_MASK, align 4
  %90 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @FIELD_PREP(i32 %89, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* @SPICC_BITLENGTH_MASK, align 4
  %97 = call i32 @FIELD_PREP(i32 %96, i32 7)
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %102 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SPICC_CONREG, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel_relaxed(i32 %100, i64 %105)
  %107 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %108 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SPICC_PERIODREG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel_relaxed(i32 0, i64 %111)
  %113 = call i32 @BIT(i32 24)
  %114 = call i32 @BIT(i32 24)
  %115 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %116 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SPICC_TESTREG, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel_bits_relaxed(i32 %113, i32 %114, i64 %119)
  ret i32 0
}

declare dso_local %struct.meson_spicc_device* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
