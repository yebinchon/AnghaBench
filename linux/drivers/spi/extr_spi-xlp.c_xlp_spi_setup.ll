; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.xlp_spi_priv = type { i32 }

@XLP_SPI_FDIV_MAX = common dso_local global i32 0, align 4
@XLP_SPI_FDIV_MIN = common dso_local global i32 0, align 4
@XLP_SPI_FDIV = common dso_local global i32 0, align 4
@XLP_SPI_FIFO_THRESH = common dso_local global i32 0, align 4
@XLP_SPI_TXRXTH = common dso_local global i32 0, align 4
@XLP_SPI_CONFIG = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@XLP_SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@XLP_SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@XLP_SPI_CS_POL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@XLP_SPI_CS_LSBFE = common dso_local global i32 0, align 4
@XLP_SPI_TXMOSI_EN = common dso_local global i32 0, align 4
@XLP_SPI_RXMISO_EN = common dso_local global i32 0, align 4
@XLP_SPI_RXCAP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @xlp_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.xlp_spi_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.xlp_spi_priv* @spi_master_get_devdata(i32 %9)
  store %struct.xlp_spi_priv* %10, %struct.xlp_spi_priv** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %3, align 8
  %15 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DIV_ROUND_UP(i32 %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @XLP_SPI_FDIV_MAX, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @XLP_SPI_FDIV_MAX, align 4
  store i32 %25, i32* %4, align 4
  br label %33

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @XLP_SPI_FDIV_MIN, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @XLP_SPI_FDIV_MIN, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @XLP_SPI_FDIV, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @xlp_spi_reg_write(%struct.xlp_spi_priv* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @XLP_SPI_FIFO_THRESH, align 4
  %42 = load i32, i32* @XLP_SPI_TXRXTH, align 4
  %43 = call i32 @xlp_spi_reg_write(%struct.xlp_spi_priv* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @XLP_SPI_CONFIG, align 4
  %47 = call i32 @xlp_spi_reg_read(%struct.xlp_spi_priv* %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SPI_CPHA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %33
  %55 = load i32, i32* @XLP_SPI_CPHA, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %63

58:                                               ; preds = %33
  %59 = load i32, i32* @XLP_SPI_CPHA, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SPI_CPOL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @XLP_SPI_CPOL, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %79

74:                                               ; preds = %63
  %75 = load i32, i32* @XLP_SPI_CPOL, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SPI_CS_HIGH, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @XLP_SPI_CS_POL, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %95

90:                                               ; preds = %79
  %91 = load i32, i32* @XLP_SPI_CS_POL, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %90, %86
  %96 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SPI_LSB_FIRST, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @XLP_SPI_CS_LSBFE, align 4
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  br label %111

106:                                              ; preds = %95
  %107 = load i32, i32* @XLP_SPI_CS_LSBFE, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %106, %102
  %112 = load i32, i32* @XLP_SPI_TXMOSI_EN, align 4
  %113 = load i32, i32* @XLP_SPI_RXMISO_EN, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32, i32* @XLP_SPI_RXCAP_EN, align 4
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %119, %111
  %124 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %3, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @XLP_SPI_CONFIG, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @xlp_spi_reg_write(%struct.xlp_spi_priv* %124, i32 %125, i32 %126, i32 %127)
  ret i32 0
}

declare dso_local %struct.xlp_spi_priv* @spi_master_get_devdata(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @xlp_spi_reg_write(%struct.xlp_spi_priv*, i32, i32, i32) #1

declare dso_local i32 @xlp_spi_reg_read(%struct.xlp_spi_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
