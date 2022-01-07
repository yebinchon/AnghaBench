; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32, i64, i32 }
%struct.ad7746_chip_info = type { i32, i32, i32**, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@AD7746_CONF_MODE_SINGLE_CONV = common dso_local global i32 0, align 4
@AD7746_REG_CFG = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@AD7746_REG_CAP_GAINH = common dso_local global i32 0, align 4
@AD7746_REG_VOLT_GAINH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@AD7746_REG_CAP_OFFH = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@AD7746_CONF_CAPFS_MASK = common dso_local global i32 0, align 4
@AD7746_CONF_CAPFS_SHIFT = common dso_local global i32 0, align 4
@ad7746_cap_filter_rate_table = common dso_local global i32** null, align 8
@AD7746_CONF_VTFS_MASK = common dso_local global i32 0, align 4
@AD7746_CONF_VTFS_SHIFT = common dso_local global i32 0, align 4
@ad7746_vt_filter_rate_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7746_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7746_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ad7746_chip_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.ad7746_chip_info* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7746_chip_info* %18, %struct.ad7746_chip_info** %11, align 8
  %19 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %20 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i64, i64* %10, align 8
  switch i64 %22, label %214 [
    i64 132, label %23
    i64 133, label %23
    i64 135, label %97
    i64 136, label %124
    i64 134, label %137
    i64 130, label %156
    i64 131, label %172
  ]

23:                                               ; preds = %5, %5
  %24 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %26 = call i32 @ad7746_select_channel(%struct.iio_dev* %24, %struct.iio_chan_spec* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %218

30:                                               ; preds = %23
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %33 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AD7746_CONF_MODE_SINGLE_CONV, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %38 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AD7746_REG_CFG, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @i2c_smbus_write_byte_data(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %218

46:                                               ; preds = %30
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @msleep(i32 %47)
  %49 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %50 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %53 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 8
  %56 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %57 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = call i32 @i2c_smbus_read_i2c_block_data(i32 %51, i32 %55, i32 3, i32* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  br label %218

65:                                               ; preds = %46
  %66 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %67 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @be32_to_cpu(i32 %69)
  %71 = and i32 %70, 16777215
  %72 = sub nsw i32 %71, 8388608
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %75 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %94 [
    i32 129, label %77
    i32 128, label %83
  ]

77:                                               ; preds = %65
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 125
  %81 = sdiv i32 %80, 256
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  br label %95

83:                                               ; preds = %65
  %84 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %85 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 6
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %83
  br label %95

94:                                               ; preds = %65
  br label %95

95:                                               ; preds = %94, %93, %77
  %96 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %96, i32* %12, align 4
  br label %217

97:                                               ; preds = %5
  %98 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %99 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %105 [
    i32 137, label %101
    i32 128, label %103
  ]

101:                                              ; preds = %97
  %102 = load i32, i32* @AD7746_REG_CAP_GAINH, align 4
  store i32 %102, i32* %16, align 4
  br label %108

103:                                              ; preds = %97
  %104 = load i32, i32* @AD7746_REG_VOLT_GAINH, align 4
  store i32 %104, i32* %16, align 4
  br label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %12, align 4
  br label %218

108:                                              ; preds = %103, %101
  %109 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %110 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @i2c_smbus_read_word_swapped(i32 %111, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %218

117:                                              ; preds = %108
  %118 = load i32*, i32** %8, align 8
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  %120 = mul nsw i32 15625, %119
  %121 = sdiv i32 %120, 1024
  %122 = load i32*, i32** %9, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %123, i32* %12, align 4
  br label %217

124:                                              ; preds = %5
  %125 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %126 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @AD7746_REG_CAP_OFFH, align 4
  %129 = call i32 @i2c_smbus_read_word_swapped(i32 %127, i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %218

133:                                              ; preds = %124
  %134 = load i32, i32* %12, align 4
  %135 = load i32*, i32** %8, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %136, i32* %12, align 4
  br label %217

137:                                              ; preds = %5
  %138 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %139 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %138, i32 0, i32 2
  %140 = load i32**, i32*** %139, align 8
  %141 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %142 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %140, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %148 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @AD7746_CAPDAC_DACP(i32 %151)
  %153 = mul nsw i32 %152, 338646
  %154 = load i32*, i32** %8, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %155, i32* %12, align 4
  br label %217

156:                                              ; preds = %5
  %157 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %158 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  switch i32 %159, label %168 [
    i32 137, label %160
    i32 128, label %164
  ]

160:                                              ; preds = %156
  %161 = load i32*, i32** %8, align 8
  store i32 0, i32* %161, align 4
  %162 = load i32*, i32** %9, align 8
  store i32 488, i32* %162, align 4
  %163 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %163, i32* %12, align 4
  br label %171

164:                                              ; preds = %156
  %165 = load i32*, i32** %8, align 8
  store i32 1170, i32* %165, align 4
  %166 = load i32*, i32** %9, align 8
  store i32 23, i32* %166, align 4
  %167 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %167, i32* %12, align 4
  br label %171

168:                                              ; preds = %156
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %168, %164, %160
  br label %217

172:                                              ; preds = %5
  %173 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %174 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %210 [
    i32 137, label %176
    i32 128, label %193
  ]

176:                                              ; preds = %172
  %177 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %178 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @AD7746_CONF_CAPFS_MASK, align 4
  %181 = and i32 %179, %180
  %182 = load i32, i32* @AD7746_CONF_CAPFS_SHIFT, align 4
  %183 = ashr i32 %181, %182
  store i32 %183, i32* %14, align 4
  %184 = load i32**, i32*** @ad7746_cap_filter_rate_table, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %8, align 8
  store i32 %190, i32* %191, align 4
  %192 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %192, i32* %12, align 4
  br label %213

193:                                              ; preds = %172
  %194 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %195 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @AD7746_CONF_VTFS_MASK, align 4
  %198 = and i32 %196, %197
  %199 = load i32, i32* @AD7746_CONF_VTFS_SHIFT, align 4
  %200 = ashr i32 %198, %199
  store i32 %200, i32* %14, align 4
  %201 = load i32**, i32*** @ad7746_vt_filter_rate_table, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %8, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %209, i32* %12, align 4
  br label %213

210:                                              ; preds = %172
  %211 = load i32, i32* @EINVAL, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %12, align 4
  br label %213

213:                                              ; preds = %210, %193, %176
  br label %217

214:                                              ; preds = %5
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %12, align 4
  br label %217

217:                                              ; preds = %214, %213, %171, %137, %133, %117, %95
  br label %218

218:                                              ; preds = %217, %132, %116, %105, %64, %45, %29
  %219 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %220 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %219, i32 0, i32 1
  %221 = call i32 @mutex_unlock(i32* %220)
  %222 = load i32, i32* %12, align 4
  ret i32 %222
}

declare dso_local %struct.ad7746_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7746_select_channel(%struct.iio_dev*, %struct.iio_chan_spec*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @AD7746_CAPDAC_DACP(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
