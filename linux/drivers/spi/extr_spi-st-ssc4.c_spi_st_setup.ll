; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-st-ssc4.c_spi_st_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-st-ssc4.c_spi_st_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, i32, i32 }
%struct.spi_st = type { i32, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"max_speed_hz unspecified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%d is not a valid gpio\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"could not request gpio:%d\0A\00", align 1
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"baudrate %d outside valid range %d\0A\00", align 1
@SSC_BRG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"setting baudrate:target= %u hz, actual= %u hz, sscbrg= %u\0A\00", align 1
@SSC_CTL = common dso_local global i64 0, align 8
@SSC_CTL_MS = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SSC_CTL_PO = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SSC_CTL_PH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SSC_CTL_HB = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@SSC_CTL_LPB = common dso_local global i32 0, align 4
@SSC_CTL_DATA_WIDTH_MSK = common dso_local global i32 0, align 4
@SSC_CTL_EN_TX_FIFO = common dso_local global i32 0, align 4
@SSC_CTL_EN_RX_FIFO = common dso_local global i32 0, align 4
@SSC_CTL_EN = common dso_local global i32 0, align 4
@SSC_RBUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spi_st_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_st_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.spi_st* @spi_master_get_devdata(i32 %13)
  store %struct.spi_st* %14, %struct.spi_st** %4, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 4
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %223

29:                                               ; preds = %1
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @gpio_is_valid(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %223

40:                                               ; preds = %29
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 4
  %44 = call i32 @dev_name(i32* %43)
  %45 = call i32 @gpio_request(i32 %41, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %2, align 4
  br label %223

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SPI_CS_HIGH, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @gpio_direction_output(i32 %55, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %219

65:                                               ; preds = %54
  %66 = load %struct.spi_st*, %struct.spi_st** %4, align 8
  %67 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @clk_get_rate(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 2, %71
  %73 = sdiv i32 %70, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 7
  br i1 %75, label %80, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @BIT(i32 16)
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76, %65
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %219

88:                                               ; preds = %76
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = mul nsw i32 2, %90
  %92 = sdiv i32 %89, %91
  %93 = load %struct.spi_st*, %struct.spi_st** %4, align 8
  %94 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @BIT(i32 16)
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %88
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.spi_st*, %struct.spi_st** %4, align 8
  %102 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SSC_BRG, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel_relaxed(i32 %100, i64 %105)
  %107 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %108 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %107, i32 0, i32 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.spi_st*, %struct.spi_st** %4, align 8
  %111 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @dev_dbg(i32* %108, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %112, i32 %113)
  %115 = load %struct.spi_st*, %struct.spi_st** %4, align 8
  %116 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SSC_CTL, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @readl_relaxed(i64 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* @SSC_CTL_MS, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %125 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SPI_CPOL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %99
  %131 = load i32, i32* @SSC_CTL_PO, align 4
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  br label %139

134:                                              ; preds = %99
  %135 = load i32, i32* @SSC_CTL_PO, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %134, %130
  %140 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %141 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SPI_CPHA, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i32, i32* @SSC_CTL_PH, align 4
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %7, align 4
  br label %155

150:                                              ; preds = %139
  %151 = load i32, i32* @SSC_CTL_PH, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %7, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %150, %146
  %156 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %157 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SPI_LSB_FIRST, align 4
  %160 = and i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load i32, i32* @SSC_CTL_HB, align 4
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  br label %171

166:                                              ; preds = %155
  %167 = load i32, i32* @SSC_CTL_HB, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %7, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %166, %162
  %172 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %173 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @SPI_LOOP, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load i32, i32* @SSC_CTL_LPB, align 4
  %180 = load i32, i32* %7, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %7, align 4
  br label %187

182:                                              ; preds = %171
  %183 = load i32, i32* @SSC_CTL_LPB, align 4
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %7, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %182, %178
  %188 = load i32, i32* @SSC_CTL_DATA_WIDTH_MSK, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %7, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %7, align 4
  %192 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %193 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load i32, i32* %7, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* @SSC_CTL_EN_TX_FIFO, align 4
  %199 = load i32, i32* @SSC_CTL_EN_RX_FIFO, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* %7, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* @SSC_CTL_EN, align 4
  %204 = load i32, i32* %7, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.spi_st*, %struct.spi_st** %4, align 8
  %208 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @SSC_CTL, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @writel_relaxed(i32 %206, i64 %211)
  %213 = load %struct.spi_st*, %struct.spi_st** %4, align 8
  %214 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @SSC_RBUF, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @readl_relaxed(i64 %217)
  store i32 0, i32* %2, align 4
  br label %223

219:                                              ; preds = %80, %64
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @gpio_free(i32 %220)
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %219, %187, %48, %33, %23
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.spi_st* @spi_master_get_devdata(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
