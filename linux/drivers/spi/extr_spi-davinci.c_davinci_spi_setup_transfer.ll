; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_spi_config = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.spi_device = type { i32, i64, i32, i32, %struct.davinci_spi_config*, i32 }
%struct.spi_transfer = type { i32, i32 }
%struct.davinci_spi = type { i32*, i64, i64, i32, i32 }

@davinci_spi_default_cfg = common dso_local global %struct.davinci_spi_config zeroinitializer, align 8
@davinci_spi_rx_buf_u8 = common dso_local global i32 0, align 4
@davinci_spi_tx_buf_u8 = common dso_local global i32 0, align 4
@davinci_spi_rx_buf_u16 = common dso_local global i32 0, align 4
@davinci_spi_tx_buf_u16 = common dso_local global i32 0, align 4
@SPIFMT_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPIFMT_SHIFTDIR_MASK = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPIFMT_POLARITY_MASK = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPIFMT_PHASE_MASK = common dso_local global i32 0, align 4
@SPIFMT_WDELAY_SHIFT = common dso_local global i32 0, align 4
@SPIFMT_WDELAY_MASK = common dso_local global i32 0, align 4
@SPI_VERSION_2 = common dso_local global i64 0, align 8
@SPIFMT_ODD_PARITY_MASK = common dso_local global i32 0, align 4
@SPIFMT_PARITYENA_MASK = common dso_local global i32 0, align 4
@SPIFMT_DISTIMER_MASK = common dso_local global i32 0, align 4
@SPIDELAY_C2TDELAY_SHIFT = common dso_local global i32 0, align 4
@SPIDELAY_C2TDELAY_MASK = common dso_local global i32 0, align 4
@SPIDELAY_T2CDELAY_SHIFT = common dso_local global i32 0, align 4
@SPIDELAY_T2CDELAY_MASK = common dso_local global i32 0, align 4
@SPI_READY = common dso_local global i32 0, align 4
@SPIFMT_WAITENA_MASK = common dso_local global i32 0, align 4
@SPIDELAY_T2EDELAY_SHIFT = common dso_local global i32 0, align 4
@SPIDELAY_T2EDELAY_MASK = common dso_local global i32 0, align 4
@SPIDELAY_C2EDELAY_SHIFT = common dso_local global i32 0, align 4
@SPIDELAY_C2EDELAY_MASK = common dso_local global i32 0, align 4
@SPIDELAY = common dso_local global i64 0, align 8
@SPIFMT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @davinci_spi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_spi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.davinci_spi*, align 8
  %7 = alloca %struct.davinci_spi_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.davinci_spi* @spi_master_get_devdata(i32 %15)
  store %struct.davinci_spi* %16, %struct.davinci_spi** %6, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 4
  %19 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %18, align 8
  store %struct.davinci_spi_config* %19, %struct.davinci_spi_config** %7, align 8
  %20 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %21 = icmp ne %struct.davinci_spi_config* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %struct.davinci_spi_config* @davinci_spi_default_cfg, %struct.davinci_spi_config** %7, align 8
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %25 = icmp ne %struct.spi_transfer* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %41, 8
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* @davinci_spi_rx_buf_u8, align 4
  %45 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %46 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @davinci_spi_tx_buf_u8, align 4
  %48 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %49 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %51 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 1, i32* %56, align 4
  br label %71

57:                                               ; preds = %40
  %58 = load i32, i32* @davinci_spi_rx_buf_u16, align 4
  %59 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %60 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @davinci_spi_tx_buf_u16, align 4
  %62 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %63 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %65 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 2, i32* %70, align 4
  br label %71

71:                                               ; preds = %57, %43
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @davinci_spi_get_prescale(%struct.davinci_spi* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  br label %237

86:                                               ; preds = %78
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @SPIFMT_PRESCALE_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 31
  %92 = or i32 %89, %91
  store i32 %92, i32* %10, align 4
  %93 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %94 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SPI_LSB_FIRST, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load i32, i32* @SPIFMT_SHIFTDIR_MASK, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %99, %86
  %104 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SPI_CPOL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @SPIFMT_POLARITY_MASK, align 4
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %116 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SPI_CPHA, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* @SPIFMT_PHASE_MASK, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %121, %114
  %126 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %127 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %132 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SPIFMT_WDELAY_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = load i32, i32* @SPIFMT_WDELAY_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %130, %125
  %141 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %142 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @SPI_VERSION_2, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %229

146:                                              ; preds = %140
  store i32 0, i32* %12, align 4
  %147 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %148 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i32, i32* @SPIFMT_ODD_PARITY_MASK, align 4
  %153 = load i32, i32* %10, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %151, %146
  %156 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %157 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, i32* @SPIFMT_PARITYENA_MASK, align 4
  %162 = load i32, i32* %10, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %160, %155
  %165 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %166 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load i32, i32* @SPIFMT_DISTIMER_MASK, align 4
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %192

173:                                              ; preds = %164
  %174 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %175 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @SPIDELAY_C2TDELAY_SHIFT, align 4
  %178 = shl i32 %176, %177
  %179 = load i32, i32* @SPIDELAY_C2TDELAY_MASK, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* %12, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %12, align 4
  %183 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %184 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @SPIDELAY_T2CDELAY_SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = load i32, i32* @SPIDELAY_T2CDELAY_MASK, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* %12, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %12, align 4
  br label %192

192:                                              ; preds = %173, %169
  %193 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %194 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @SPI_READY, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %221

199:                                              ; preds = %192
  %200 = load i32, i32* @SPIFMT_WAITENA_MASK, align 4
  %201 = load i32, i32* %10, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %10, align 4
  %203 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %204 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @SPIDELAY_T2EDELAY_SHIFT, align 4
  %207 = shl i32 %205, %206
  %208 = load i32, i32* @SPIDELAY_T2EDELAY_MASK, align 4
  %209 = and i32 %207, %208
  %210 = load i32, i32* %12, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %12, align 4
  %212 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %7, align 8
  %213 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @SPIDELAY_C2EDELAY_SHIFT, align 4
  %216 = shl i32 %214, %215
  %217 = load i32, i32* @SPIDELAY_C2EDELAY_MASK, align 4
  %218 = and i32 %216, %217
  %219 = load i32, i32* %12, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %12, align 4
  br label %221

221:                                              ; preds = %199, %192
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %224 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @SPIDELAY, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @iowrite32(i32 %222, i64 %227)
  br label %229

229:                                              ; preds = %221, %140
  %230 = load i32, i32* %10, align 4
  %231 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %232 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @SPIFMT0, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @iowrite32(i32 %230, i64 %235)
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %229, %84
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local %struct.davinci_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @davinci_spi_get_prescale(%struct.davinci_spi*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
