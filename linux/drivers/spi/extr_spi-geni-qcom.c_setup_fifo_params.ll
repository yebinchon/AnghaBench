; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_setup_fifo_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_setup_fifo_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.spi_master = type { i32 }
%struct.spi_geni_master = type { i32, i32, i32, %struct.geni_se }
%struct.geni_se = type { i64 }

@SE_SPI_LOOPBACK = common dso_local global i64 0, align 8
@SE_SPI_CPOL = common dso_local global i64 0, align 8
@SE_SPI_CPHA = common dso_local global i64 0, align 8
@LOOPBACK_MSK = common dso_local global i32 0, align 4
@CPOL = common dso_local global i32 0, align 4
@CPHA = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@LOOPBACK_ENABLE = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Err setting clks ret(%d) for %ld\0A\00", align 1
@CLK_SEL_MSK = common dso_local global i32 0, align 4
@CLK_DIV_SHFT = common dso_local global i32 0, align 4
@SER_CLK_EN = common dso_local global i32 0, align 4
@SE_SPI_DEMUX_SEL = common dso_local global i64 0, align 8
@SE_SPI_DEMUX_OUTPUT_INV = common dso_local global i64 0, align 8
@SE_GENI_CLK_SEL = common dso_local global i64 0, align 8
@GENI_SER_M_CLK_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_master*)* @setup_fifo_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_fifo_params(%struct.spi_device* %0, %struct.spi_master* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_geni_master*, align 8
  %7 = alloca %struct.geni_se*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_master* %1, %struct.spi_master** %5, align 8
  %18 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %19 = call %struct.spi_geni_master* @spi_master_get_devdata(%struct.spi_master* %18)
  store %struct.spi_geni_master* %19, %struct.spi_geni_master** %6, align 8
  %20 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %21 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %20, i32 0, i32 3
  store %struct.geni_se* %21, %struct.geni_se** %7, align 8
  %22 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %23 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SE_SPI_LOOPBACK, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %29 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SE_SPI_CPOL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %35 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SE_SPI_CPHA, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %40 = load i32, i32* @LOOPBACK_MSK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @CPOL, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @CPHA, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SPI_LOOP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %2
  %59 = load i32, i32* @LOOPBACK_ENABLE, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %2
  %63 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SPI_CPOL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @CPOL, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %75 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SPI_CPHA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @CPHA, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %73
  %85 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %86 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SPI_CS_HIGH, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @BIT(i32 %94)
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %98 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %12, align 4
  %100 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %104 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %106 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %109 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %111 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %114 = call i32 @get_spi_clk_cfg(i32 %112, %struct.spi_geni_master* %113, i32* %15, i32* %16)
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %96
  %118 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %119 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %123 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load i32, i32* %17, align 4
  store i32 %126, i32* %3, align 4
  br label %193

127:                                              ; preds = %96
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* @CLK_SEL_MSK, align 4
  %130 = and i32 %128, %129
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @CLK_DIV_SHFT, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* @SER_CLK_EN, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %14, align 4
  %136 = load %struct.spi_geni_master*, %struct.spi_geni_master** %6, align 8
  %137 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %138 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %141 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @spi_setup_word_len(%struct.spi_geni_master* %136, i32 %139, i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %146 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SE_SPI_LOOPBACK, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel(i32 %144, i64 %149)
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %153 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @SE_SPI_DEMUX_SEL, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel(i32 %151, i64 %156)
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %160 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SE_SPI_CPHA, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel(i32 %158, i64 %163)
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %167 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @SE_SPI_CPOL, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @writel(i32 %165, i64 %170)
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %174 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @SE_SPI_DEMUX_OUTPUT_INV, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writel(i32 %172, i64 %177)
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %181 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @SE_GENI_CLK_SEL, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writel(i32 %179, i64 %184)
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.geni_se*, %struct.geni_se** %7, align 8
  %188 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @GENI_SER_M_CLK_CFG, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writel(i32 %186, i64 %191)
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %127, %117
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.spi_geni_master* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @get_spi_clk_cfg(i32, %struct.spi_geni_master*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @spi_setup_word_len(%struct.spi_geni_master*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
