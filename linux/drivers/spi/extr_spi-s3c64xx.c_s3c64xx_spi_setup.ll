; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c64xx.c_s3c64xx_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c64xx.c_s3c64xx_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.TYPE_7__, i32, %struct.s3c64xx_spi_csinfo*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.s3c64xx_spi_csinfo = type { i32 }
%struct.s3c64xx_spi_driver_data = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"No CS for SPI(%d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get /CS gpio [%d]: %d\0A\00", align 1
@S3C64XX_SPI_PSR_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Can't set %dHz transfer speed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @s3c64xx_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.s3c64xx_spi_csinfo*, align 8
  %5 = alloca %struct.s3c64xx_spi_driver_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 4
  %11 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %10, align 8
  store %struct.s3c64xx_spi_csinfo* %11, %struct.s3c64xx_spi_csinfo** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.s3c64xx_spi_driver_data* @spi_master_get_devdata(i32 %14)
  store %struct.s3c64xx_spi_driver_data* %15, %struct.s3c64xx_spi_driver_data** %5, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = call %struct.s3c64xx_spi_csinfo* @s3c64xx_get_slave_ctrldata(%struct.spi_device* %22)
  store %struct.s3c64xx_spi_csinfo* %23, %struct.s3c64xx_spi_csinfo** %4, align 8
  %24 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %4, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 4
  store %struct.s3c64xx_spi_csinfo* %24, %struct.s3c64xx_spi_csinfo** %26, align 8
  br label %37

27:                                               ; preds = %1
  %28 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %4, align 8
  %29 = icmp ne %struct.s3c64xx_spi_csinfo* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %4, align 8
  %32 = getelementptr inbounds %struct.s3c64xx_spi_csinfo, %struct.s3c64xx_spi_csinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %30, %27
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %4, align 8
  %39 = call i64 @IS_ERR_OR_NULL(%struct.s3c64xx_spi_csinfo* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 2
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %236

50:                                               ; preds = %37
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = call i32 @spi_get_ctldata(%struct.spi_device* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %50
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @gpio_is_valid(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %54
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 2
  %67 = call i32 @dev_name(%struct.TYPE_7__* %66)
  %68 = call i32 @gpio_request_one(i32 %63, i32 %64, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %60
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 2
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  br label %225

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79, %54
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %4, align 8
  %83 = call i32 @spi_set_ctldata(%struct.spi_device* %81, %struct.s3c64xx_spi_csinfo* %82)
  br label %84

84:                                               ; preds = %80, %50
  %85 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %86 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @pm_runtime_get_sync(i32* %88)
  %90 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %91 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %186, label %96

96:                                               ; preds = %84
  %97 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %98 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @clk_get_rate(i32 %99)
  %101 = sdiv i32 %100, 2
  %102 = sdiv i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %104 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %96
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %111 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %96
  %113 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %114 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @clk_get_rate(i32 %115)
  %117 = sdiv i32 %116, 2
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %117, %120
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* @S3C64XX_SPI_PSR_MASK, align 4
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @S3C64XX_SPI_PSR_MASK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %112
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %129, %112
  %133 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %134 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @clk_get_rate(i32 %135)
  %137 = sdiv i32 %136, 2
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  %140 = sdiv i32 %137, %139
  store i32 %140, i32* %8, align 4
  %141 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %142 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %132
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* @S3C64XX_SPI_PSR_MASK, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %157

154:                                              ; preds = %146
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %199

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %157, %132
  %159 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %160 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @clk_get_rate(i32 %161)
  %163 = sdiv i32 %162, 2
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  %166 = sdiv i32 %163, %165
  store i32 %166, i32* %8, align 4
  %167 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %168 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %158
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %175 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  br label %185

176:                                              ; preds = %158
  %177 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %178 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %177, i32 0, i32 2
  %179 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %180 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %6, align 4
  br label %199

185:                                              ; preds = %172
  br label %186

186:                                              ; preds = %185, %84
  %187 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %188 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %187, i32 0, i32 0
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = call i32 @pm_runtime_mark_last_busy(i32* %190)
  %192 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %193 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = call i32 @pm_runtime_put_autosuspend(i32* %195)
  %197 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %198 = call i32 @s3c64xx_spi_set_cs(%struct.spi_device* %197, i32 0)
  store i32 0, i32* %2, align 4
  br label %236

199:                                              ; preds = %176, %154
  %200 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %201 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %200, i32 0, i32 0
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = call i32 @pm_runtime_mark_last_busy(i32* %203)
  %205 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %206 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %205, i32 0, i32 0
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = call i32 @pm_runtime_put_autosuspend(i32* %208)
  %210 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %211 = call i32 @s3c64xx_spi_set_cs(%struct.spi_device* %210, i32 0)
  %212 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %213 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i64 @gpio_is_valid(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %199
  %218 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %219 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @gpio_free(i32 %220)
  br label %222

222:                                              ; preds = %217, %199
  %223 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %224 = call i32 @spi_set_ctldata(%struct.spi_device* %223, %struct.s3c64xx_spi_csinfo* null)
  br label %225

225:                                              ; preds = %222, %71
  %226 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %227 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load %struct.s3c64xx_spi_csinfo*, %struct.s3c64xx_spi_csinfo** %4, align 8
  %233 = call i32 @kfree(%struct.s3c64xx_spi_csinfo* %232)
  br label %234

234:                                              ; preds = %231, %225
  %235 = load i32, i32* %6, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %234, %186, %41
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local %struct.s3c64xx_spi_driver_data* @spi_master_get_devdata(i32) #1

declare dso_local %struct.s3c64xx_spi_csinfo* @s3c64xx_get_slave_ctrldata(%struct.spi_device*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.s3c64xx_spi_csinfo*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request_one(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, %struct.s3c64xx_spi_csinfo*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @s3c64xx_spi_set_cs(%struct.spi_device*, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.s3c64xx_spi_csinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
