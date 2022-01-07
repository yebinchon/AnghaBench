; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_select_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_select_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32, i64 }
%struct.ad7746_chip_info = type { i32, i32, i64, i64**, i32, i32 }

@AD7746_CAPSETUP_CAPEN = common dso_local global i32 0, align 4
@AD7746_VTSETUP_VTEN = common dso_local global i32 0, align 4
@AD7746_CONF_CAPFS_MASK = common dso_local global i32 0, align 4
@AD7746_CONF_CAPFS_SHIFT = common dso_local global i32 0, align 4
@ad7746_cap_filter_rate_table = common dso_local global i32** null, align 8
@AD7746_REG_CAPDACA = common dso_local global i32 0, align 4
@AD7746_REG_CAPDACB = common dso_local global i32 0, align 4
@AD7746_CONF_VTFS_MASK = common dso_local global i32 0, align 4
@AD7746_CONF_VTFS_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD7746_REG_CAP_SETUP = common dso_local global i32 0, align 4
@AD7746_REG_VT_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*)* @ad7746_select_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7746_select_channel(%struct.iio_dev* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca %struct.ad7746_chip_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %13 = call %struct.ad7746_chip_info* @iio_priv(%struct.iio_dev* %12)
  store %struct.ad7746_chip_info* %13, %struct.ad7746_chip_info** %6, align 8
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %15 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %129 [
    i32 130, label %17
    i32 128, label %100
    i32 129, label %100
  ]

17:                                               ; preds = %2
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  %22 = load i32, i32* @AD7746_CAPSETUP_CAPEN, align 4
  %23 = or i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  %25 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %26 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AD7746_VTSETUP_VTEN, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  %32 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %33 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AD7746_CONF_CAPFS_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @AD7746_CONF_CAPFS_SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32**, i32*** @ad7746_cap_filter_rate_table, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %47 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %99

53:                                               ; preds = %17
  %54 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %55 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AD7746_REG_CAPDACA, align 4
  %58 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %59 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %58, i32 0, i32 3
  %60 = load i64**, i64*** %59, align 8
  %61 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %62 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i64*, i64** %60, i64 %63
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @i2c_smbus_write_byte_data(i32 %56, i32 %57, i64 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %180

73:                                               ; preds = %53
  %74 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %75 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AD7746_REG_CAPDACB, align 4
  %78 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %79 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %78, i32 0, i32 3
  %80 = load i64**, i64*** %79, align 8
  %81 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %82 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64*, i64** %80, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @i2c_smbus_write_byte_data(i32 %76, i32 %77, i64 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %73
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %180

93:                                               ; preds = %73
  %94 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %95 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %98 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %17
  br label %132

100:                                              ; preds = %2, %2
  %101 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %102 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 255
  %105 = load i32, i32* @AD7746_VTSETUP_VTEN, align 4
  %106 = or i32 %104, %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %7, align 8
  %108 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %109 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @AD7746_CAPSETUP_CAPEN, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %8, align 8
  %115 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %116 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AD7746_CONF_VTFS_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @AD7746_CONF_VTFS_SHIFT, align 4
  %121 = ashr i32 %119, %120
  store i32 %121, i32* %11, align 4
  %122 = load i32**, i32*** @ad7746_cap_filter_rate_table, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %10, align 4
  br label %132

129:                                              ; preds = %2
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %180

132:                                              ; preds = %100, %99
  %133 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %134 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %8, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %132
  %140 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %141 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @AD7746_REG_CAP_SETUP, align 4
  %144 = load i64, i64* %8, align 8
  %145 = call i32 @i2c_smbus_write_byte_data(i32 %142, i32 %143, i64 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %3, align 4
  br label %180

150:                                              ; preds = %139
  %151 = load i64, i64* %8, align 8
  %152 = trunc i64 %151 to i32
  %153 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %154 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %132
  %156 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %157 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %7, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %155
  %163 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %164 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AD7746_REG_VT_SETUP, align 4
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @i2c_smbus_write_byte_data(i32 %165, i32 %166, i64 %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %162
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %3, align 4
  br label %180

173:                                              ; preds = %162
  %174 = load i64, i64* %7, align 8
  %175 = trunc i64 %174 to i32
  %176 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %6, align 8
  %177 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %173, %155
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %171, %148, %129, %91, %71
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.ad7746_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
