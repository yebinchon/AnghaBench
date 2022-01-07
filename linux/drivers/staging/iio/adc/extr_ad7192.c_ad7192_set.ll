; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7192_state = type { i32, i32, i32 }
%struct.iio_dev_attr = type { i32 }

@AD7192_GPOCON_BPDSW = common dso_local global i32 0, align 4
@AD7192_MODE_ACX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad7192_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7192_set(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ad7192_state*, align 8
  %12 = alloca %struct.iio_dev_attr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %10, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %18 = call %struct.ad7192_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7192_state* %18, %struct.ad7192_state** %11, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %19)
  store %struct.iio_dev_attr* %20, %struct.iio_dev_attr** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strtobool(i8* %21, i32* %14)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %100

27:                                               ; preds = %4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %29 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  br label %100

34:                                               ; preds = %27
  %35 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %36 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %84 [
    i32 129, label %38
    i32 128, label %61
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @AD7192_GPOCON_BPDSW, align 4
  %43 = load %struct.ad7192_state*, %struct.ad7192_state** %11, align 8
  %44 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %54

47:                                               ; preds = %38
  %48 = load i32, i32* @AD7192_GPOCON_BPDSW, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.ad7192_state*, %struct.ad7192_state** %11, align 8
  %51 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.ad7192_state*, %struct.ad7192_state** %11, align 8
  %56 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %55, i32 0, i32 1
  %57 = load %struct.ad7192_state*, %struct.ad7192_state** %11, align 8
  %58 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ad_sd_write_reg(i32* %56, i32 129, i32 1, i32 %59)
  br label %87

61:                                               ; preds = %34
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @AD7192_MODE_ACX, align 4
  %66 = load %struct.ad7192_state*, %struct.ad7192_state** %11, align 8
  %67 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %77

70:                                               ; preds = %61
  %71 = load i32, i32* @AD7192_MODE_ACX, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.ad7192_state*, %struct.ad7192_state** %11, align 8
  %74 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %70, %64
  %78 = load %struct.ad7192_state*, %struct.ad7192_state** %11, align 8
  %79 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %78, i32 0, i32 1
  %80 = load %struct.ad7192_state*, %struct.ad7192_state** %11, align 8
  %81 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ad_sd_write_reg(i32* %79, i32 128, i32 3, i32 %82)
  br label %87

84:                                               ; preds = %34
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %77, %54
  %88 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %89 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %88)
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  br label %97

95:                                               ; preds = %87
  %96 = load i64, i64* %9, align 8
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i64 [ %94, %92 ], [ %96, %95 ]
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %32, %25
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad7192_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ad_sd_write_reg(i32*, i32, i32, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
