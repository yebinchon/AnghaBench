; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7280_state = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@AD7280A_CELL_VOLTAGE_6 = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ad7280_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ad7280_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.iio_dev*
  store %struct.iio_dev* %16, %struct.iio_dev** %6, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.ad7280_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7280_state* %18, %struct.ad7280_state** %7, align 8
  %19 = load %struct.ad7280_state*, %struct.ad7280_state** %7, align 8
  %20 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kcalloc(i32 %21, i32 4, i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %156

28:                                               ; preds = %2
  %29 = load %struct.ad7280_state*, %struct.ad7280_state** %7, align 8
  %30 = load %struct.ad7280_state*, %struct.ad7280_state** %7, align 8
  %31 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @ad7280_read_all_channels(%struct.ad7280_state* %29, i32 %32, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %152

38:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %148, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ad7280_state*, %struct.ad7280_state** %7, align 8
  %42 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %151

45:                                               ; preds = %39
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = lshr i32 %50, 23
  %52 = and i32 %51, 15
  %53 = load i32, i32* @AD7280A_CELL_VOLTAGE_6, align 4
  %54 = icmp ule i32 %52, %53
  br i1 %54, label %55, label %101

55:                                               ; preds = %45
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = lshr i32 %60, 11
  %62 = and i32 %61, 4095
  %63 = load %struct.ad7280_state*, %struct.ad7280_state** %7, align 8
  %64 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp uge i32 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %55
  %68 = load i32, i32* @IIO_VOLTAGE, align 4
  %69 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %70 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %71 = call i32 @IIO_EVENT_CODE(i32 %68, i32 1, i32 0, i32 %69, i32 %70, i32 0, i32 0, i32 0)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %75 = call i32 @iio_get_time_ns(%struct.iio_dev* %74)
  %76 = call i32 @iio_push_event(%struct.iio_dev* %72, i32 %73, i32 %75)
  br label %100

77:                                               ; preds = %55
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = lshr i32 %82, 11
  %84 = and i32 %83, 4095
  %85 = load %struct.ad7280_state*, %struct.ad7280_state** %7, align 8
  %86 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ule i32 %84, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %77
  %90 = load i32, i32* @IIO_VOLTAGE, align 4
  %91 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %92 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %93 = call i32 @IIO_EVENT_CODE(i32 %90, i32 1, i32 0, i32 %91, i32 %92, i32 0, i32 0, i32 0)
  store i32 %93, i32* %12, align 4
  %94 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %97 = call i32 @iio_get_time_ns(%struct.iio_dev* %96)
  %98 = call i32 @iio_push_event(%struct.iio_dev* %94, i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %89, %77
  br label %100

100:                                              ; preds = %99, %67
  br label %147

101:                                              ; preds = %45
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = lshr i32 %106, 11
  %108 = and i32 %107, 4095
  %109 = load %struct.ad7280_state*, %struct.ad7280_state** %7, align 8
  %110 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp uge i32 %108, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %101
  %114 = load i32, i32* @IIO_TEMP, align 4
  %115 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %116 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %117 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %114, i32 0, i32 %115, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %121 = call i32 @iio_get_time_ns(%struct.iio_dev* %120)
  %122 = call i32 @iio_push_event(%struct.iio_dev* %118, i32 %119, i32 %121)
  br label %146

123:                                              ; preds = %101
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = lshr i32 %128, 11
  %130 = and i32 %129, 4095
  %131 = load %struct.ad7280_state*, %struct.ad7280_state** %7, align 8
  %132 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = icmp ule i32 %130, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %123
  %136 = load i32, i32* @IIO_TEMP, align 4
  %137 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %138 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %139 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %136, i32 0, i32 %137, i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %143 = call i32 @iio_get_time_ns(%struct.iio_dev* %142)
  %144 = call i32 @iio_push_event(%struct.iio_dev* %140, i32 %141, i32 %143)
  br label %145

145:                                              ; preds = %135, %123
  br label %146

146:                                              ; preds = %145, %113
  br label %147

147:                                              ; preds = %146, %100
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %39

151:                                              ; preds = %39
  br label %152

152:                                              ; preds = %151, %37
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @kfree(i32* %153)
  %155 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %26
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.ad7280_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ad7280_read_all_channels(%struct.ad7280_state*, i32, i32*) #1

declare dso_local i32 @IIO_EVENT_CODE(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
