; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_init_dev_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_init_dev_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_state = type { %struct.iio_dev_attr*, %struct.TYPE_3__* }
%struct.iio_dev_attr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@AD7280A_CELL_VOLTAGE_1 = common dso_local global i32 0, align 4
@AD7280A_CELL_VOLTAGE_6 = common dso_local global i32 0, align 4
@AD7280A_CELLS_PER_DEV = common dso_local global i32 0, align 4
@ad7280_attributes = common dso_local global i32** null, align 8
@AD7280A_CB1_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7280_state*, i32, i32*)* @ad7280_init_dev_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_init_dev_attrs(%struct.ad7280_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7280_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iio_dev_attr*, align 8
  %13 = alloca %struct.device*, align 8
  store %struct.ad7280_state* %0, %struct.ad7280_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %15 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %13, align 8
  %18 = load i32, i32* @AD7280A_CELL_VOLTAGE_1, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %97, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @AD7280A_CELL_VOLTAGE_6, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %100

23:                                               ; preds = %19
  %24 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %25 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %24, i32 0, i32 0
  %26 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %26, i64 %29
  store %struct.iio_dev_attr* %30, %struct.iio_dev_attr** %12, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ad7280a_devaddr(i32 %31)
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @AD7280A_CELLS_PER_DEV, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %42 = load %struct.device*, %struct.device** %13, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ad7280_balance_switch_attr_init(%struct.iio_dev_attr* %41, %struct.device* %42, i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %23
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %106

50:                                               ; preds = %23
  %51 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %52 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32**, i32*** @ad7280_attributes, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  store i32* %53, i32** %58, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ad7280_state*, %struct.ad7280_state** %5, align 8
  %63 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %62, i32 0, i32 0
  %64 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %63, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %64, i64 %67
  store %struct.iio_dev_attr* %68, %struct.iio_dev_attr** %12, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ad7280a_devaddr(i32 %69)
  %71 = shl i32 %70, 8
  %72 = load i32, i32* @AD7280A_CB1_TIMER, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %72, %73
  %75 = or i32 %71, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %77 = load %struct.device*, %struct.device** %13, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @ad7280_balance_timer_attr_init(%struct.iio_dev_attr* %76, %struct.device* %77, i32 %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %50
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %106

85:                                               ; preds = %50
  %86 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %87 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32**, i32*** @ad7280_attributes, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %89, i64 %92
  store i32* %88, i32** %93, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %19

100:                                              ; preds = %19
  %101 = load i32**, i32*** @ad7280_attributes, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %101, i64 %104
  store i32* null, i32** %105, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %100, %83, %48
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @ad7280a_devaddr(i32) #1

declare dso_local i32 @ad7280_balance_switch_attr_init(%struct.iio_dev_attr*, %struct.device*, i32, i32) #1

declare dso_local i32 @ad7280_balance_timer_attr_init(%struct.iio_dev_attr*, %struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
