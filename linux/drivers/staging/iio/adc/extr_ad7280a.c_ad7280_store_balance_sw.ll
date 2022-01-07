; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_store_balance_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_store_balance_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7280_state = type { i32*, i32 }
%struct.iio_dev_attr = type { i32 }

@AD7280A_CELL_BALANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad7280_store_balance_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_store_balance_sw(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ad7280_state*, align 8
  %12 = alloca %struct.iio_dev_attr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %17)
  store %struct.iio_dev* %18, %struct.iio_dev** %10, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %20 = call %struct.ad7280_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad7280_state* %20, %struct.ad7280_state** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %21)
  store %struct.iio_dev_attr* %22, %struct.iio_dev_attr** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strtobool(i8* %23, i32* %13)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %93

29:                                               ; preds = %4
  %30 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %31 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  store i32 %33, i32* %15, align 4
  %34 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %35 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 255
  store i32 %37, i32* %16, align 4
  %38 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %39 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %29
  %44 = load i32, i32* %16, align 4
  %45 = add i32 %44, 2
  %46 = shl i32 1, %45
  %47 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %48 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %46
  store i32 %54, i32* %52, align 4
  br label %68

55:                                               ; preds = %29
  %56 = load i32, i32* %16, align 4
  %57 = add i32 %56, 2
  %58 = shl i32 1, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %61 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %59
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %55, %43
  %69 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @AD7280A_CELL_BALANCE, align 4
  %72 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %73 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ad7280_write(%struct.ad7280_state* %69, i32 %70, i32 %71, i32 0, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load %struct.ad7280_state*, %struct.ad7280_state** %11, align 8
  %81 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %68
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  br label %90

88:                                               ; preds = %68
  %89 = load i64, i64* %9, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i64 [ %87, %85 ], [ %89, %88 ]
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %27
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7280_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad7280_write(%struct.ad7280_state*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
