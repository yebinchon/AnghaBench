; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i64, i32 }
%struct.ad7746_chip_info = type { i32**, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AD7746_REG_CAP_GAINH = common dso_local global i32 0, align 4
@AD7746_REG_VOLT_GAINH = common dso_local global i32 0, align 4
@AD7746_REG_CAP_OFFH = common dso_local global i32 0, align 4
@AD7746_CAPDAC_DACEN = common dso_local global i32 0, align 4
@AD7746_REG_CAPDACA = common dso_local global i32 0, align 4
@AD7746_REG_CAPDACB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad7746_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7746_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ad7746_chip_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.ad7746_chip_info* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7746_chip_info* %15, %struct.ad7746_chip_info** %11, align 8
  %16 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %17 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i64, i64* %10, align 8
  switch i64 %19, label %170 [
    i64 131, label %20
    i64 132, label %51
    i64 130, label %71
    i64 129, label %148
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  br label %174

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 1024
  %29 = sdiv i32 %28, 15625
  store i32 %29, i32* %8, align 4
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %37 [
    i32 133, label %33
    i32 128, label %35
  ]

33:                                               ; preds = %26
  %34 = load i32, i32* @AD7746_REG_CAP_GAINH, align 4
  store i32 %34, i32* %13, align 4
  br label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @AD7746_REG_VOLT_GAINH, align 4
  store i32 %36, i32* %13, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %174

40:                                               ; preds = %35, %33
  %41 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %42 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @i2c_smbus_write_word_swapped(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %174

50:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %173

51:                                               ; preds = %5
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 65535
  br i1 %56, label %57, label %60

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %174

60:                                               ; preds = %54
  %61 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %62 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AD7746_REG_CAP_OFFH, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @i2c_smbus_write_word_swapped(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %174

70:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %173

71:                                               ; preds = %5
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 43008000
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %71
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  br label %174

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = sdiv i32 %81, 338646
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @AD7746_CAPDAC_DACP(i32 %86)
  %88 = load i32, i32* @AD7746_CAPDAC_DACEN, align 4
  %89 = or i32 %87, %88
  br label %91

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %85
  %92 = phi i32 [ %89, %85 ], [ 0, %90 ]
  %93 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %94 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %93, i32 0, i32 0
  %95 = load i32**, i32*** %94, align 8
  %96 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %97 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32*, i32** %95, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %102 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %92, i32* %104, align 4
  %105 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %106 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AD7746_REG_CAPDACA, align 4
  %109 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %110 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %109, i32 0, i32 0
  %111 = load i32**, i32*** %110, align 8
  %112 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %113 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32*, i32** %111, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @i2c_smbus_write_byte_data(i32 %107, i32 %108, i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %91
  br label %174

123:                                              ; preds = %91
  %124 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %125 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @AD7746_REG_CAPDACB, align 4
  %128 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %129 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %132 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32*, i32** %130, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @i2c_smbus_write_byte_data(i32 %126, i32 %127, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %123
  br label %174

142:                                              ; preds = %123
  %143 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %144 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %147 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  store i32 0, i32* %12, align 4
  br label %173

148:                                              ; preds = %5
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %12, align 4
  br label %174

154:                                              ; preds = %148
  %155 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %156 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %166 [
    i32 133, label %158
    i32 128, label %162
  ]

158:                                              ; preds = %154
  %159 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @ad7746_store_cap_filter_rate_setup(%struct.ad7746_chip_info* %159, i32 %160)
  store i32 %161, i32* %12, align 4
  br label %169

162:                                              ; preds = %154
  %163 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @ad7746_store_vt_filter_rate_setup(%struct.ad7746_chip_info* %163, i32 %164)
  store i32 %165, i32* %12, align 4
  br label %169

166:                                              ; preds = %154
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %166, %162, %158
  br label %173

170:                                              ; preds = %5
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %170, %169, %142, %70, %50
  br label %174

174:                                              ; preds = %173, %151, %141, %122, %77, %69, %57, %49, %37, %23
  %175 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %11, align 8
  %176 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %175, i32 0, i32 2
  %177 = call i32 @mutex_unlock(i32* %176)
  %178 = load i32, i32* %12, align 4
  ret i32 %178
}

declare dso_local %struct.ad7746_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

declare dso_local i32 @AD7746_CAPDAC_DACP(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @ad7746_store_cap_filter_rate_setup(%struct.ad7746_chip_info*, i32) #1

declare dso_local i32 @ad7746_store_vt_filter_rate_setup(%struct.ad7746_chip_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
