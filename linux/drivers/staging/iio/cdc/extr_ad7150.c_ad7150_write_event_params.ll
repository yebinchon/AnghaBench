; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_write_event_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7150.c_ad7150_write_event_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7150_chip_info = type { i64, i32, i32**, i32**, i32**, i32**, i32** }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_CAPACITANCE = common dso_local global i32 0, align 4
@ad7150_addresses = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32, i32)* @ad7150_write_event_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7150_write_event_params(%struct.iio_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ad7150_chip_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7150_chip_info* %18, %struct.ad7150_chip_info** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* @IIO_CAPACITANCE, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @IIO_UNMOD_EVENT_CODE(i32 %23, i32 %24, i32 %25, i32 %26)
  store i64 %27, i64* %16, align 8
  %28 = load i64, i64* %16, align 8
  %29 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %14, align 8
  %30 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %140

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %107 [
    i32 129, label %36
    i32 130, label %61
    i32 128, label %84
  ]

36:                                               ; preds = %34
  %37 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %14, align 8
  %38 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %37, i32 0, i32 6
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %14, align 8
  %49 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32**, i32*** @ad7150_addresses, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @swab16(i32 %58)
  %60 = call i32 @i2c_smbus_write_word_data(i32 %50, i32 %57, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %140

61:                                               ; preds = %34
  %62 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %14, align 8
  %63 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %62, i32 0, i32 5
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  %73 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %14, align 8
  %74 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %73, i32 0, i32 4
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %13, align 4
  br label %110

84:                                               ; preds = %34
  %85 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %14, align 8
  %86 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %85, i32 0, i32 3
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %12, align 4
  %96 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %14, align 8
  %97 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %96, i32 0, i32 2
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %13, align 4
  br label %110

107:                                              ; preds = %34
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %140

110:                                              ; preds = %84, %61
  %111 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %14, align 8
  %112 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32**, i32*** @ad7150_addresses, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @i2c_smbus_write_byte_data(i32 %113, i32 %120, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %110
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %5, align 4
  br label %140

127:                                              ; preds = %110
  %128 = load %struct.ad7150_chip_info*, %struct.ad7150_chip_info** %14, align 8
  %129 = getelementptr inbounds %struct.ad7150_chip_info, %struct.ad7150_chip_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32**, i32*** @ad7150_addresses, align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 5
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @i2c_smbus_write_byte_data(i32 %130, i32 %137, i32 %138)
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %127, %125, %107, %36, %33
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.ad7150_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_word_data(i32, i32, i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
