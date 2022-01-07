; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_store_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_store_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ad2s1210_state = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AD2S1210_REG_CONTROL = common dso_local global i8 0, align 1
@AD2S1210_MSB_IS_LOW = common dso_local global i8 0, align 1
@AD2S1210_MSB_IS_HIGH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ad2s1210: write control register fail\0A\00", align 1
@ad2s1210_resolution_value = common dso_local global i32* null, align 8
@AD2S1210_SET_RESOLUTION = common dso_local global i8 0, align 1
@AD2S1210_ENABLE_HYSTERESIS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad2s1210_store_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_store_control(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ad2s1210_state*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @dev_to_iio_dev(%struct.device* %14)
  %16 = call %struct.ad2s1210_state* @iio_priv(i32 %15)
  store %struct.ad2s1210_state* %16, %struct.ad2s1210_state** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @kstrtou8(i8* %17, i32 16, i8* %11)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %96

24:                                               ; preds = %4
  %25 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %26 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %29 = load i8, i8* @AD2S1210_REG_CONTROL, align 1
  %30 = call i32 @ad2s1210_config_write(%struct.ad2s1210_state* %28, i8 zeroext %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %91

34:                                               ; preds = %24
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @AD2S1210_MSB_IS_LOW, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %12, align 1
  %41 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %42 = load i8, i8* %12, align 1
  %43 = call i32 @ad2s1210_config_write(%struct.ad2s1210_state* %41, i8 zeroext %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %91

47:                                               ; preds = %34
  %48 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %49 = load i8, i8* @AD2S1210_REG_CONTROL, align 1
  %50 = call i32 @ad2s1210_config_read(%struct.ad2s1210_state* %48, i8 zeroext %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %91

54:                                               ; preds = %47
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @AD2S1210_MSB_IS_HIGH, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %13, align 4
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %91

64:                                               ; preds = %54
  %65 = load i32*, i32** @ad2s1210_resolution_value, align 8
  %66 = load i8, i8* %12, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @AD2S1210_SET_RESOLUTION, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %75 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %77 = call i32 @ad2s1210_set_resolution_pin(%struct.ad2s1210_state* %76)
  %78 = load i64, i64* %9, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %13, align 4
  %80 = load i8, i8* %12, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* @AD2S1210_ENABLE_HYSTERESIS, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %90 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %64, %59, %53, %46, %33
  %92 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %93 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %21
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.ad2s1210_state* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad2s1210_config_write(%struct.ad2s1210_state*, i8 zeroext) #1

declare dso_local i32 @ad2s1210_config_read(%struct.ad2s1210_state*, i8 zeroext) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ad2s1210_set_resolution_pin(%struct.ad2s1210_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
