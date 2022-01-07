; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad2s1210_state = type { i32*, i32, i32, i32*, i32, i32 }

@AD2S1210_SAMPLE = common dso_local global i64 0, align 8
@MOD_POS = common dso_local global i32 0, align 4
@MOD_VEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad2s1210_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad2s1210_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.ad2s1210_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad2s1210_state* %18, %struct.ad2s1210_state** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %20 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %23 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @AD2S1210_SAMPLE, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpiod_set_value(i32 %27, i32 0)
  %29 = call i32 @udelay(i32 1)
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 129, label %33
    i32 128, label %37
  ]

33:                                               ; preds = %5
  %34 = load i32, i32* @MOD_POS, align 4
  %35 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %36 = call i32 @ad2s1210_set_mode(i32 %34, %struct.ad2s1210_state* %35)
  br label %44

37:                                               ; preds = %5
  %38 = load i32, i32* @MOD_VEL, align 4
  %39 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %40 = call i32 @ad2s1210_set_mode(i32 %38, %struct.ad2s1210_state* %39)
  br label %44

41:                                               ; preds = %5
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %41, %37, %33
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %126

48:                                               ; preds = %44
  %49 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %50 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %53 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @spi_read(i32 %51, i32* %54, i32 2)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %126

59:                                               ; preds = %48
  %60 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %61 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %119 [
    i32 129, label %63
    i32 128, label %83
  ]

63:                                               ; preds = %59
  %64 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %65 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @be16_to_cpup(i32* %66)
  store i32 %67, i32* %15, align 4
  %68 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %69 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %74 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 16, %75
  %77 = load i32, i32* %15, align 4
  %78 = ashr i32 %77, %76
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %72, %63
  %80 = load i32, i32* %15, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %82, i32* %14, align 4
  br label %125

83:                                               ; preds = %59
  %84 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %85 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 128
  store i32 %89, i32* %13, align 4
  %90 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %91 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @be16_to_cpup(i32* %92)
  store i32 %93, i32* %16, align 4
  %94 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %95 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 16, %96
  %98 = load i32, i32* %16, align 4
  %99 = ashr i32 %98, %97
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = and i32 %100, 32768
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %83
  %104 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %105 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 65535, %106
  %108 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %109 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %107, %110
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %16, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %103, %83
  %116 = load i32, i32* %16, align 4
  %117 = load i32*, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %118, i32* %14, align 4
  br label %125

119:                                              ; preds = %59
  %120 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %121 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %120, i32 0, i32 2
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  br label %139

125:                                              ; preds = %115, %79
  br label %126

126:                                              ; preds = %125, %58, %47
  %127 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %128 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @AD2S1210_SAMPLE, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @gpiod_set_value(i32 %132, i32 1)
  %134 = call i32 @udelay(i32 1)
  %135 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %12, align 8
  %136 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %135, i32 0, i32 2
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %126, %119
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local %struct.ad2s1210_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ad2s1210_set_mode(i32, %struct.ad2s1210_state*) #1

declare dso_local i32 @spi_read(i32, i32*, i32) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
