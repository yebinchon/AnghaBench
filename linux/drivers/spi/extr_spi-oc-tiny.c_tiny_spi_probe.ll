; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-oc-tiny.c_tiny_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-oc-tiny.c_tiny_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, i32 }
%struct.tiny_spi_platform_data = type { i32, i32, i32, i32* }
%struct.tiny_spi = type { i64, i32, i32*, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.spi_master*, i32, i32, i32 }
%struct.spi_master = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@tiny_spi_setup = common dso_local global i32 0, align 4
@tiny_spi_setup_transfer = common dso_local global i32 0, align 4
@tiny_spi_chipselect = common dso_local global i32 0, align 4
@tiny_spi_txrx_bufs = common dso_local global i32 0, align 4
@tiny_spi_irq = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"base %p, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tiny_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiny_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tiny_spi_platform_data*, align 8
  %5 = alloca %struct.tiny_spi*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.tiny_spi_platform_data* @dev_get_platdata(i32* %10)
  store %struct.tiny_spi_platform_data* %11, %struct.tiny_spi_platform_data** %4, align 8
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.spi_master* @spi_alloc_master(i32* %15, i32 72)
  store %struct.spi_master* %16, %struct.spi_master** %6, align 8
  %17 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %18 = icmp ne %struct.spi_master* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %2, align 4
  br label %225

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %26 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %28 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %27, i32 0, i32 0
  store i32 255, i32* %28, align 4
  %29 = load i32, i32* @SPI_CPOL, align 4
  %30 = load i32, i32* @SPI_CPHA, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SPI_CS_HIGH, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %35 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @tiny_spi_setup, align 4
  %37 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %38 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %40 = call %struct.tiny_spi* @spi_master_get_devdata(%struct.spi_master* %39)
  store %struct.tiny_spi* %40, %struct.tiny_spi** %5, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.tiny_spi* %42)
  %44 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %45 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %46 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.spi_master* %44, %struct.spi_master** %47, align 8
  %48 = load i32, i32* @tiny_spi_setup_transfer, align 4
  %49 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %50 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @tiny_spi_chipselect, align 4
  %53 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %54 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @tiny_spi_txrx_bufs, align 4
  %57 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %58 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %60, i32 0)
  %62 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %63 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %65 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %21
  %70 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %71 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %8, align 4
  br label %221

74:                                               ; preds = %21
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i64 @platform_get_irq(%struct.platform_device* %75, i32 0)
  %77 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %78 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %80 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %74
  %84 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %85 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %84, i32 0, i32 7
  %86 = call i32 @init_completion(i32* %85)
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %90 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @tiny_spi_irq, align 4
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %97 = call i32 @devm_request_irq(i32* %88, i64 %91, i32 %92, i32 0, i32 %95, %struct.tiny_spi* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %83
  br label %221

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101, %74
  %103 = load %struct.tiny_spi_platform_data*, %struct.tiny_spi_platform_data** %4, align 8
  %104 = icmp ne %struct.tiny_spi_platform_data* %103, null
  br i1 %104, label %105, label %139

105:                                              ; preds = %102
  %106 = load %struct.tiny_spi_platform_data*, %struct.tiny_spi_platform_data** %4, align 8
  %107 = getelementptr inbounds %struct.tiny_spi_platform_data, %struct.tiny_spi_platform_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %110 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.tiny_spi_platform_data*, %struct.tiny_spi_platform_data** %4, align 8
  %112 = getelementptr inbounds %struct.tiny_spi_platform_data, %struct.tiny_spi_platform_data* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %115 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %114, i32 0, i32 2
  store i32* %113, i32** %115, align 8
  %116 = load %struct.tiny_spi_platform_data*, %struct.tiny_spi_platform_data** %4, align 8
  %117 = getelementptr inbounds %struct.tiny_spi_platform_data, %struct.tiny_spi_platform_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %105
  %121 = load %struct.tiny_spi_platform_data*, %struct.tiny_spi_platform_data** %4, align 8
  %122 = getelementptr inbounds %struct.tiny_spi_platform_data, %struct.tiny_spi_platform_data* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @EBUSY, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %8, align 4
  br label %221

128:                                              ; preds = %120, %105
  %129 = load %struct.tiny_spi_platform_data*, %struct.tiny_spi_platform_data** %4, align 8
  %130 = getelementptr inbounds %struct.tiny_spi_platform_data, %struct.tiny_spi_platform_data* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %133 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 4
  %134 = load %struct.tiny_spi_platform_data*, %struct.tiny_spi_platform_data** %4, align 8
  %135 = getelementptr inbounds %struct.tiny_spi_platform_data, %struct.tiny_spi_platform_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %138 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  br label %146

139:                                              ; preds = %102
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = call i32 @tiny_spi_of_probe(%struct.platform_device* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %221

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %128
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %177, %146
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %150 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ult i32 %148, %151
  br i1 %152, label %153, label %180

153:                                              ; preds = %147
  %154 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %155 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @dev_name(i32* %162)
  %164 = call i32 @gpio_request(i32 %160, i32 %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %153
  br label %206

168:                                              ; preds = %153
  %169 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %170 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @gpio_direction_output(i32 %175, i32 1)
  br label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %7, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %147

180:                                              ; preds = %147
  %181 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %182 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @max(i32 1, i32 %183)
  %185 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %186 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load %struct.spi_master*, %struct.spi_master** %187, align 8
  %189 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %188, i32 0, i32 0
  store i32 %184, i32* %189, align 4
  %190 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %191 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %190, i32 0, i32 4
  %192 = call i32 @spi_bitbang_start(%struct.TYPE_2__* %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %180
  br label %221

196:                                              ; preds = %180
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %200 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %203 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @dev_info(i32* %198, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %201, i64 %204)
  store i32 0, i32* %2, align 4
  br label %225

206:                                              ; preds = %167
  br label %207

207:                                              ; preds = %211, %206
  %208 = load i32, i32* %7, align 4
  %209 = add i32 %208, -1
  store i32 %209, i32* %7, align 4
  %210 = icmp ugt i32 %208, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %207
  %212 = load %struct.tiny_spi*, %struct.tiny_spi** %5, align 8
  %213 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @gpio_free(i32 %218)
  br label %207

220:                                              ; preds = %207
  br label %221

221:                                              ; preds = %220, %195, %144, %125, %100, %69
  %222 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %223 = call i32 @spi_master_put(%struct.spi_master* %222)
  %224 = load i32, i32* %8, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %221, %196, %19
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.tiny_spi_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(i32*, i32) #1

declare dso_local %struct.tiny_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tiny_spi*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.tiny_spi*) #1

declare dso_local i32 @tiny_spi_of_probe(%struct.platform_device*) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
