; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1305.c_ds1305_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1305.c_ds1305_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, i64 }
%struct.ds1305 = type { i32*, i32, %struct.TYPE_6__*, i32, %struct.spi_device* }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.ds1305_platform_data = type { i32, i64, i64 }
%struct.nvmem_config = type { i8*, i32, i32, %struct.ds1305*, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ds1305_nvram\00", align 1
@ds1305_nvram_write = common dso_local global i32 0, align 4
@ds1305_nvram_read = common dso_local global i32 0, align 4
@DS1305_NVRAM_LEN = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DS1305_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"can't %s, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ctrl %s: %3ph\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"RTC chip is not present\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"chip may not be present\0A\00", align 1
@DS1305_WP = common dso_local global i32 0, align 4
@DS1305_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"clear WP --> %d\0A\00", align 1
@DS1305_nEOSC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"SET TIME!\0A\00", align 1
@DS1305_TRICKLE_MAGIC = common dso_local global i32 0, align 4
@DS1306_1HZ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@DS1305_HOUR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"read HOUR --> %d\0A\00", align 1
@DS1305_HR_12 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"AM/PM\0A\00", align 1
@ds1305_ops = common dso_local global i32 0, align 4
@ds1305_work = common dso_local global i32 0, align 4
@ds1305_irq = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"request_irq %d --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ds1305_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1305_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ds1305*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ds1305_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvmem_config, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca [4 x i32], align 16
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 3
  %15 = call %struct.ds1305_platform_data* @dev_get_platdata(i32* %14)
  store %struct.ds1305_platform_data* %15, %struct.ds1305_platform_data** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 1
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 2
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 3
  store %struct.ds1305* null, %struct.ds1305** %19, align 8
  %20 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 4
  %21 = load i32, i32* @ds1305_nvram_write, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 5
  %23 = load i32, i32* @ds1305_nvram_read, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 6
  %25 = load i32, i32* @DS1305_NVRAM_LEN, align 4
  store i32 %25, i32* %24, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 8
  br i1 %34, label %47, label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 2000000
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SPI_CPHA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40, %35, %30
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %414

50:                                               ; preds = %40
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 3
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.ds1305* @devm_kzalloc(i32* %52, i32 40, i32 %53)
  store %struct.ds1305* %54, %struct.ds1305** %4, align 8
  %55 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %56 = icmp ne %struct.ds1305* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %414

60:                                               ; preds = %50
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %63 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %62, i32 0, i32 4
  store %struct.spi_device* %61, %struct.spi_device** %63, align 8
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %66 = call i32 @spi_set_drvdata(%struct.spi_device* %64, %struct.ds1305* %65)
  %67 = load i32, i32* @DS1305_CONTROL, align 4
  store i32 %67, i32* %6, align 4
  %68 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %69 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %70 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @spi_write_then_read(%struct.spi_device* %68, i32* %6, i32 4, i32* %71, i32 8)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %60
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 3
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %414

81:                                               ; preds = %60
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %82, i32 0, i32 3
  %84 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %85 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %86)
  %88 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %89 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 56
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %81
  %96 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %97 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 252
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %95, %81
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 3
  %106 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %414

109:                                              ; preds = %95
  %110 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %111 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %118 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %117, i32 0, i32 3
  %119 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %109
  %121 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %122 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DS1305_WP, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %160

129:                                              ; preds = %120
  %130 = load i32, i32* @DS1305_WP, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %133 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %131
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* @DS1305_WRITE, align 4
  %139 = load i32, i32* @DS1305_CONTROL, align 4
  %140 = or i32 %138, %139
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %140, i32* %141, align 4
  %142 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %143 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %146, i32* %147, align 4
  %148 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %150 = call i32 @spi_write_then_read(%struct.spi_device* %148, i32* %149, i32 8, i32* null, i32 0)
  store i32 %150, i32* %5, align 4
  %151 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %152 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %151, i32 0, i32 3
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %5, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %129
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %414

159:                                              ; preds = %129
  br label %160

160:                                              ; preds = %159, %120
  %161 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %162 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DS1305_nEOSC, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %160
  %170 = load i32, i32* @DS1305_nEOSC, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %173 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, %171
  store i32 %177, i32* %175, align 4
  store i32 1, i32* %9, align 4
  %178 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %179 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %178, i32 0, i32 3
  %180 = call i32 @dev_warn(i32* %179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %181

181:                                              ; preds = %169, %160
  %182 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %183 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %190 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  store i32 0, i32* %192, align 4
  store i32 1, i32* %9, align 4
  br label %193

193:                                              ; preds = %188, %181
  %194 = load %struct.ds1305_platform_data*, %struct.ds1305_platform_data** %8, align 8
  %195 = icmp ne %struct.ds1305_platform_data* %194, null
  br i1 %195, label %196, label %264

196:                                              ; preds = %193
  %197 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %198 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 240
  %203 = load i32, i32* @DS1305_TRICKLE_MAGIC, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %196
  %206 = load i32, i32* @DS1305_TRICKLE_MAGIC, align 4
  %207 = load %struct.ds1305_platform_data*, %struct.ds1305_platform_data** %8, align 8
  %208 = getelementptr inbounds %struct.ds1305_platform_data, %struct.ds1305_platform_data* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %206, %209
  %211 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %212 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 2
  store i32 %210, i32* %214, align 4
  store i32 1, i32* %9, align 4
  br label %215

215:                                              ; preds = %205, %196
  %216 = load %struct.ds1305_platform_data*, %struct.ds1305_platform_data** %8, align 8
  %217 = getelementptr inbounds %struct.ds1305_platform_data, %struct.ds1305_platform_data* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %263

220:                                              ; preds = %215
  %221 = load %struct.ds1305_platform_data*, %struct.ds1305_platform_data** %8, align 8
  %222 = getelementptr inbounds %struct.ds1305_platform_data, %struct.ds1305_platform_data* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %243

225:                                              ; preds = %220
  %226 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %227 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @DS1306_1HZ, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %225
  %235 = load i32, i32* @DS1306_1HZ, align 4
  %236 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %237 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %235
  store i32 %241, i32* %239, align 4
  store i32 1, i32* %9, align 4
  br label %242

242:                                              ; preds = %234, %225
  br label %262

243:                                              ; preds = %220
  %244 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %245 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @DS1306_1HZ, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %243
  %253 = load i32, i32* @DS1306_1HZ, align 4
  %254 = xor i32 %253, -1
  %255 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %256 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, %254
  store i32 %260, i32* %258, align 4
  store i32 1, i32* %9, align 4
  br label %261

261:                                              ; preds = %252, %243
  br label %262

262:                                              ; preds = %261, %242
  br label %263

263:                                              ; preds = %262, %215
  br label %264

264:                                              ; preds = %263, %193
  %265 = load i32, i32* %9, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %308

267:                                              ; preds = %264
  %268 = load i32, i32* @DS1305_WRITE, align 4
  %269 = load i32, i32* @DS1305_CONTROL, align 4
  %270 = or i32 %268, %269
  %271 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %270, i32* %271, align 16
  %272 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %273 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %276, i32* %277, align 4
  %278 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %279 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %282, i32* %283, align 8
  %284 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %285 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 2
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %288, i32* %289, align 4
  %290 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %291 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %292 = call i32 @spi_write_then_read(%struct.spi_device* %290, i32* %291, i32 16, i32* null, i32 0)
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %5, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %267
  %296 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %297 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %296, i32 0, i32 3
  %298 = load i32, i32* %5, align 4
  %299 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %297, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* %5, align 4
  store i32 %300, i32* %2, align 4
  br label %414

301:                                              ; preds = %267
  %302 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %303 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %302, i32 0, i32 3
  %304 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %305 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %303, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %306)
  br label %308

308:                                              ; preds = %301, %264
  %309 = load i32, i32* @DS1305_HOUR, align 4
  store i32 %309, i32* %6, align 4
  %310 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %311 = call i32 @spi_write_then_read(%struct.spi_device* %310, i32* %6, i32 4, i32* %7, i32 4)
  store i32 %311, i32* %5, align 4
  %312 = load i32, i32* %5, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %316 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %315, i32 0, i32 3
  %317 = load i32, i32* %5, align 4
  %318 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %316, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %317)
  %319 = load i32, i32* %5, align 4
  store i32 %319, i32* %2, align 4
  br label %414

320:                                              ; preds = %308
  %321 = load i32, i32* @DS1305_HR_12, align 4
  %322 = load i32, i32* %7, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  %325 = zext i1 %324 to i32
  %326 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %327 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %326, i32 0, i32 1
  store i32 %325, i32* %327, align 8
  %328 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %329 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %320
  %333 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %334 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %333, i32 0, i32 3
  %335 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %334, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %336

336:                                              ; preds = %332, %320
  %337 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %338 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %337, i32 0, i32 3
  %339 = call %struct.TYPE_6__* @devm_rtc_allocate_device(i32* %338)
  %340 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %341 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %340, i32 0, i32 2
  store %struct.TYPE_6__* %339, %struct.TYPE_6__** %341, align 8
  %342 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %343 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %342, i32 0, i32 2
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %343, align 8
  %345 = call i64 @IS_ERR(%struct.TYPE_6__* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %336
  %348 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %349 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %348, i32 0, i32 2
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %349, align 8
  %351 = call i32 @PTR_ERR(%struct.TYPE_6__* %350)
  store i32 %351, i32* %2, align 4
  br label %414

352:                                              ; preds = %336
  %353 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %354 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %353, i32 0, i32 2
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 2
  store i32* @ds1305_ops, i32** %356, align 8
  %357 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %358 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %10, i32 0, i32 3
  store %struct.ds1305* %357, %struct.ds1305** %358, align 8
  %359 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %360 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %359, i32 0, i32 2
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 0
  store i32 1, i32* %362, align 8
  %363 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %364 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %363, i32 0, i32 2
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %364, align 8
  %366 = call i32 @rtc_register_device(%struct.TYPE_6__* %365)
  store i32 %366, i32* %5, align 4
  %367 = load i32, i32* %5, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %352
  %370 = load i32, i32* %5, align 4
  store i32 %370, i32* %2, align 4
  br label %414

371:                                              ; preds = %352
  %372 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %373 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %372, i32 0, i32 2
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %373, align 8
  %375 = call i32 @rtc_nvmem_register(%struct.TYPE_6__* %374, %struct.nvmem_config* %10)
  %376 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %377 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %413

380:                                              ; preds = %371
  %381 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %382 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %381, i32 0, i32 3
  %383 = load i32, i32* @ds1305_work, align 4
  %384 = call i32 @INIT_WORK(i32* %382, i32 %383)
  %385 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %386 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %385, i32 0, i32 3
  %387 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %388 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %387, i32 0, i32 4
  %389 = load i64, i64* %388, align 8
  %390 = load i32, i32* @ds1305_irq, align 4
  %391 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %392 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %391, i32 0, i32 2
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 1
  %395 = call i32 @dev_name(i32* %394)
  %396 = load %struct.ds1305*, %struct.ds1305** %4, align 8
  %397 = call i32 @devm_request_irq(i32* %386, i64 %389, i32 %390, i32 0, i32 %395, %struct.ds1305* %396)
  store i32 %397, i32* %5, align 4
  %398 = load i32, i32* %5, align 4
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %408

400:                                              ; preds = %380
  %401 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %402 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %401, i32 0, i32 3
  %403 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %404 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %403, i32 0, i32 4
  %405 = load i64, i64* %404, align 8
  %406 = load i32, i32* %5, align 4
  %407 = call i32 @dev_err(i32* %402, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %405, i32 %406)
  br label %412

408:                                              ; preds = %380
  %409 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %410 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %409, i32 0, i32 3
  %411 = call i32 @device_set_wakeup_capable(i32* %410, i32 1)
  br label %412

412:                                              ; preds = %408, %400
  br label %413

413:                                              ; preds = %412, %371
  store i32 0, i32* %2, align 4
  br label %414

414:                                              ; preds = %413, %369, %347, %314, %295, %157, %103, %75, %57, %47
  %415 = load i32, i32* %2, align 4
  ret i32 %415
}

declare dso_local %struct.ds1305_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.ds1305* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ds1305*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_6__*, %struct.nvmem_config*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.ds1305*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
