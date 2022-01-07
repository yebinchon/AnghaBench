; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7316_bus = type { i64, i32 (i32, i32, i32)*, i32 }
%struct.adt7316_chip_info = type { i32, i32, i32, i32, %struct.adt7316_bus, i32, i32 }
%struct.iio_dev = type { i8*, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@ID_ADT7316 = common dso_local global i32 0, align 4
@ID_ADT7516 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ID_ADT7317 = common dso_local global i32 0, align 4
@ID_ADT7517 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"adi,ldac\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to request ldac GPIO: %d\0A\00", align 1
@ADT7316_DA_EN_VIA_DAC_LDAC = common dso_local global i32 0, align 4
@ID_FAMILY_MASK = common dso_local global i32 0, align 4
@ID_ADT75XX = common dso_local global i32 0, align 4
@ADT7516_SEL_AIN3 = common dso_local global i32 0, align 4
@ADT7316_TEMP_INT_MASK = common dso_local global i32 0, align 4
@ADT7316_VDD_INT_MASK = common dso_local global i32 0, align 4
@ADT7516_AIN_INT_MASK = common dso_local global i32 0, align 4
@adt7516_info = common dso_local global i32 0, align 4
@adt7316_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ADT7316_CONFIG1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ADT7316_CONFIG3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"%s temperature sensor, ADC and DAC registered.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adt7316_probe(%struct.device* %0, %struct.adt7316_bus* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.adt7316_bus*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.adt7316_chip_info*, align 8
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.adt7316_bus* %1, %struct.adt7316_bus** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 48)
  store %struct.iio_dev* %12, %struct.iio_dev** %9, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %252

18:                                               ; preds = %3
  %19 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %20 = call %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev* %19)
  store %struct.adt7316_chip_info* %20, %struct.adt7316_chip_info** %8, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %23 = call i32 @dev_set_drvdata(%struct.device* %21, %struct.iio_dev* %22)
  %24 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %25 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %24, i32 0, i32 4
  %26 = load %struct.adt7316_bus*, %struct.adt7316_bus** %6, align 8
  %27 = bitcast %struct.adt7316_bus* %25 to i8*
  %28 = bitcast %struct.adt7316_bus* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 51
  br i1 %33, label %34, label %44

34:                                               ; preds = %18
  %35 = load i32, i32* @ID_ADT7316, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 6
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = sub nsw i32 %39, 54
  %41 = add nsw i32 %35, %40
  %42 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %43 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %64

44:                                               ; preds = %18
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 53
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load i32, i32* @ID_ADT7516, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 6
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 54
  %57 = add nsw i32 %51, %56
  %58 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %59 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %63

60:                                               ; preds = %44
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %252

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %66 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ID_ADT7316, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %72 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ID_ADT7516, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %64
  %77 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %78 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %77, i32 0, i32 1
  store i32 12, i32* %78, align 4
  br label %98

79:                                               ; preds = %70
  %80 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %81 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ID_ADT7317, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %87 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ID_ADT7517, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %79
  %92 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %93 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %92, i32 0, i32 1
  store i32 10, i32* %93, align 4
  br label %97

94:                                               ; preds = %85
  %95 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %96 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %95, i32 0, i32 1
  store i32 8, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %101 = call i32 @devm_gpiod_get_optional(%struct.device* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %103 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %105 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @IS_ERR(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %98
  %110 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %111 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @PTR_ERR(i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %252

118:                                              ; preds = %98
  %119 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %120 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %143, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @ADT7316_DA_EN_VIA_DAC_LDAC, align 4
  %125 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %126 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %130 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ID_FAMILY_MASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @ID_ADT75XX, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %123
  %137 = load i32, i32* @ADT7516_SEL_AIN3, align 4
  %138 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %139 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %123
  br label %143

143:                                              ; preds = %142, %118
  %144 = load i32, i32* @ADT7316_TEMP_INT_MASK, align 4
  %145 = load i32, i32* @ADT7316_VDD_INT_MASK, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %148 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %150 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @ID_FAMILY_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @ID_ADT75XX, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %143
  %157 = load i32, i32* @ADT7516_AIN_INT_MASK, align 4
  %158 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %159 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %156, %143
  %163 = load %struct.device*, %struct.device** %5, align 8
  %164 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %165 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  store %struct.device* %163, %struct.device** %166, align 8
  %167 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %168 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ID_FAMILY_MASK, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* @ID_ADT75XX, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %162
  %175 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %176 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %175, i32 0, i32 2
  store i32* @adt7516_info, i32** %176, align 8
  br label %180

177:                                              ; preds = %162
  %178 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %179 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %178, i32 0, i32 2
  store i32* @adt7316_info, i32** %179, align 8
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i8*, i8** %7, align 8
  %182 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %183 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %185 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %186 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 8
  %187 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %188 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %180
  %193 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %194 = call i32 @adt7316_setup_irq(%struct.iio_dev* %193)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %4, align 4
  br label %252

199:                                              ; preds = %192
  br label %200

200:                                              ; preds = %199, %180
  %201 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %202 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %202, i32 0, i32 1
  %204 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %203, align 8
  %205 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %206 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @ADT7316_CONFIG1, align 4
  %210 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %211 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = call i32 %204(i32 %208, i32 %209, i32 %212)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %200
  %217 = load i32, i32* @EIO, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %4, align 4
  br label %252

219:                                              ; preds = %200
  %220 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %221 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %221, i32 0, i32 1
  %223 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %222, align 8
  %224 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %225 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.adt7316_bus, %struct.adt7316_bus* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @ADT7316_CONFIG3, align 4
  %229 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %8, align 8
  %230 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 %223(i32 %227, i32 %228, i32 %231)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %219
  %236 = load i32, i32* @EIO, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %4, align 4
  br label %252

238:                                              ; preds = %219
  %239 = load %struct.device*, %struct.device** %5, align 8
  %240 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %241 = call i32 @devm_iio_device_register(%struct.device* %239, %struct.iio_dev* %240)
  store i32 %241, i32* %10, align 4
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = load i32, i32* %10, align 4
  store i32 %245, i32* %4, align 4
  br label %252

246:                                              ; preds = %238
  %247 = load %struct.device*, %struct.device** %5, align 8
  %248 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %249 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @dev_info(%struct.device* %247, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %250)
  store i32 0, i32* %4, align 4
  br label %252

252:                                              ; preds = %246, %244, %235, %216, %197, %109, %60, %15
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.adt7316_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @adt7316_setup_irq(%struct.iio_dev*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
