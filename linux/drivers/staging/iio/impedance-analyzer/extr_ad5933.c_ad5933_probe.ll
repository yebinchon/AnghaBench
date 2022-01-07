; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ad5933_state = type { i32, i64, i32, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to enable specified VDD supply\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AD5933_CTRL_EXT_SYSCLK = common dso_local global i32 0, align 4
@AD5933_INT_OSC_FREQ_Hz = common dso_local global i64 0, align 8
@AD5933_CTRL_INT_SYSCLK = common dso_local global i32 0, align 4
@ad5933_work = common dso_local global i32 0, align 4
@AD5933_POLL_TIME_ms = common dso_local global i32 0, align 4
@ad5933_info = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad5933_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad5933_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad5933_state*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 48)
  store %struct.iio_dev* %12, %struct.iio_dev** %8, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %198

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %20 = call %struct.ad5933_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad5933_state* %20, %struct.ad5933_state** %7, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.iio_dev* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %26 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %25, i32 0, i32 8
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %28 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %27, i32 0, i32 7
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @devm_regulator_get(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %34 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %36 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %18
  %41 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %42 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %198

45:                                               ; preds = %18
  %46 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %47 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @regulator_enable(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %198

57:                                               ; preds = %45
  %58 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %59 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @regulator_get_voltage(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %192

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = sdiv i32 %66, 1000
  %68 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %69 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = call i32 @devm_clk_get(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %74 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %76 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %65
  %81 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %82 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PTR_ERR(i32 %83)
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %90 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %6, align 4
  br label %192

93:                                               ; preds = %80, %65
  %94 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %95 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %93
  %100 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %101 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @clk_prepare_enable(i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %192

107:                                              ; preds = %99
  %108 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %109 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @clk_get_rate(i32 %110)
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %107, %93
  %113 = load i64, i64* %9, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %118 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* @AD5933_CTRL_EXT_SYSCLK, align 4
  %120 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %121 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  br label %129

122:                                              ; preds = %112
  %123 = load i64, i64* @AD5933_INT_OSC_FREQ_Hz, align 8
  %124 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %125 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* @AD5933_CTRL_INT_SYSCLK, align 4
  %127 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %128 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %122, %115
  %130 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %131 = call i32 @ad5933_calc_out_ranges(%struct.ad5933_state* %130)
  %132 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %133 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %132, i32 0, i32 5
  %134 = load i32, i32* @ad5933_work, align 4
  %135 = call i32 @INIT_DELAYED_WORK(i32* %133, i32 %134)
  %136 = load i32, i32* @AD5933_POLL_TIME_ms, align 4
  %137 = call i32 @msecs_to_jiffies(i32 %136)
  %138 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %139 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %143 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i32* %141, i32** %144, align 8
  %145 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %146 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %145, i32 0, i32 5
  store i32* @ad5933_info, i32** %146, align 8
  %147 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %148 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %151 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %153 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %156 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @ad5933_channels, align 4
  %158 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %159 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @ad5933_channels, align 4
  %161 = call i32 @ARRAY_SIZE(i32 %160)
  %162 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %163 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %165 = call i32 @ad5933_register_ring_funcs_and_init(%struct.iio_dev* %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %129
  br label %187

169:                                              ; preds = %129
  %170 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %171 = call i32 @ad5933_setup(%struct.ad5933_state* %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %182

175:                                              ; preds = %169
  %176 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %177 = call i32 @iio_device_register(%struct.iio_dev* %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %182

181:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %198

182:                                              ; preds = %180, %174
  %183 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %184 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @iio_kfifo_free(i32 %185)
  br label %187

187:                                              ; preds = %182, %168
  %188 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %189 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @clk_disable_unprepare(i32 %190)
  br label %192

192:                                              ; preds = %187, %106, %88, %64
  %193 = load %struct.ad5933_state*, %struct.ad5933_state** %7, align 8
  %194 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @regulator_disable(i32 %195)
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %192, %181, %52, %40, %15
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad5933_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @ad5933_calc_out_ranges(%struct.ad5933_state*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ad5933_register_ring_funcs_and_init(%struct.iio_dev*) #1

declare dso_local i32 @ad5933_setup(%struct.ad5933_state*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_kfifo_free(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
