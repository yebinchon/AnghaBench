; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ad7746_platform_data* }
%struct.ad7746_platform_data = type { i32, i64, i64, i64, i64 }
%struct.i2c_device_id = type { i32, i32 }
%struct.ad7746_chip_info = type { i32, %struct.i2c_client*, i32 }
%struct.iio_dev = type { %struct.TYPE_5__, i32, i8*, i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@ENOMEM = common dso_local global i32 0, align 4
@ad7746_info = common dso_local global i32 0, align 4
@ad7746_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD7746_EXCSETUP_NEXCA = common dso_local global i8 0, align 1
@AD7746_EXCSETUP_EXCA = common dso_local global i8 0, align 1
@AD7746_EXCSETUP_NEXCB = common dso_local global i8 0, align 1
@AD7746_EXCSETUP_EXCB = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [33 x i8] c"No platform data? using default\0A\00", align 1
@AD7746_REG_EXC_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad7746_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7746_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ad7746_platform_data*, align 8
  %7 = alloca %struct.ad7746_chip_info*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.ad7746_platform_data*, %struct.ad7746_platform_data** %13, align 8
  store %struct.ad7746_platform_data* %14, %struct.ad7746_platform_data** %6, align 8
  store i8 0, i8* %9, align 1
  store i32 0, i32* %10, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__* %16, i32 24)
  store %struct.iio_dev* %17, %struct.iio_dev** %8, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %19 = icmp ne %struct.iio_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %173

23:                                               ; preds = %2
  %24 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %25 = call %struct.ad7746_chip_info* @iio_priv(%struct.iio_dev* %24)
  store %struct.ad7746_chip_info* %25, %struct.ad7746_chip_info** %7, align 8
  %26 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %7, align 8
  %27 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %26, i32 0, i32 2
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.iio_dev* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %7, align 8
  %34 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %33, i32 0, i32 1
  store %struct.i2c_client* %32, %struct.i2c_client** %34, align 8
  %35 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %7, align 8
  %36 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 4
  store i32* @ad7746_info, i32** %48, align 8
  %49 = load i32, i32* @ad7746_channels, align 4
  %50 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 7746
  br i1 %55, label %56, label %61

56:                                               ; preds = %23
  %57 = load i32, i32* @ad7746_channels, align 4
  %58 = call i8* @ARRAY_SIZE(i32 %57)
  %59 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %67

61:                                               ; preds = %23
  %62 = load i32, i32* @ad7746_channels, align 4
  %63 = call i8* @ARRAY_SIZE(i32 %62)
  %64 = getelementptr i8, i8* %63, i64 -2
  %65 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* @ad7746_channels, align 4
  %69 = call i8* @ARRAY_SIZE(i32 %68)
  %70 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %73 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ad7746_platform_data*, %struct.ad7746_platform_data** %6, align 8
  %76 = icmp ne %struct.ad7746_platform_data* %75, null
  br i1 %76, label %77, label %137

77:                                               ; preds = %67
  %78 = load %struct.ad7746_platform_data*, %struct.ad7746_platform_data** %6, align 8
  %79 = getelementptr inbounds %struct.ad7746_platform_data, %struct.ad7746_platform_data* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %77
  %83 = load %struct.ad7746_platform_data*, %struct.ad7746_platform_data** %6, align 8
  %84 = getelementptr inbounds %struct.ad7746_platform_data, %struct.ad7746_platform_data* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i8, i8* @AD7746_EXCSETUP_NEXCA, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* %9, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %91, %89
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %9, align 1
  br label %101

94:                                               ; preds = %82
  %95 = load i8, i8* @AD7746_EXCSETUP_EXCA, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* %9, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %98, %96
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %9, align 1
  br label %101

101:                                              ; preds = %94, %87
  br label %102

102:                                              ; preds = %101, %77
  %103 = load %struct.ad7746_platform_data*, %struct.ad7746_platform_data** %6, align 8
  %104 = getelementptr inbounds %struct.ad7746_platform_data, %struct.ad7746_platform_data* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = load %struct.ad7746_platform_data*, %struct.ad7746_platform_data** %6, align 8
  %109 = getelementptr inbounds %struct.ad7746_platform_data, %struct.ad7746_platform_data* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i8, i8* @AD7746_EXCSETUP_NEXCB, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* %9, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %116, %114
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %9, align 1
  br label %126

119:                                              ; preds = %107
  %120 = load i8, i8* @AD7746_EXCSETUP_EXCB, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* %9, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %123, %121
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %9, align 1
  br label %126

126:                                              ; preds = %119, %112
  br label %127

127:                                              ; preds = %126, %102
  %128 = load %struct.ad7746_platform_data*, %struct.ad7746_platform_data** %6, align 8
  %129 = getelementptr inbounds %struct.ad7746_platform_data, %struct.ad7746_platform_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call zeroext i8 @AD7746_EXCSETUP_EXCLVL(i32 %130)
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* %9, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %134, %132
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %9, align 1
  br label %150

137:                                              ; preds = %67
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 0
  %140 = call i32 @dev_warn(%struct.TYPE_6__* %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %141 = load i8, i8* @AD7746_EXCSETUP_EXCA, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @AD7746_EXCSETUP_EXCB, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %142, %144
  %146 = call zeroext i8 @AD7746_EXCSETUP_EXCLVL(i32 3)
  %147 = zext i8 %146 to i32
  %148 = or i32 %145, %147
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %9, align 1
  br label %150

150:                                              ; preds = %137, %127
  %151 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %7, align 8
  %152 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %151, i32 0, i32 1
  %153 = load %struct.i2c_client*, %struct.i2c_client** %152, align 8
  %154 = load i32, i32* @AD7746_REG_EXC_SETUP, align 4
  %155 = load i8, i8* %9, align 1
  %156 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %153, i32 %154, i8 zeroext %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %150
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %3, align 4
  br label %173

161:                                              ; preds = %150
  %162 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %163 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %167 = call i32 @devm_iio_device_register(%struct.TYPE_6__* %165, %struct.iio_dev* %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %3, align 4
  br label %173

172:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %170, %159, %20
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.ad7746_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i8* @ARRAY_SIZE(i32) #1

declare dso_local zeroext i8 @AD7746_EXCSETUP_EXCLVL(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i8 zeroext) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_6__*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
