; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_store_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_store_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ad2s1210_state = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ad2s1210: resolution out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AD2S1210_REG_CONTROL = common dso_local global i8 0, align 1
@AD2S1210_SET_RESOLUTION = common dso_local global i8 0, align 1
@AD2S1210_MSB_IS_LOW = common dso_local global i8 0, align 1
@AD2S1210_MSB_IS_HIGH = common dso_local global i8 0, align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ad2s1210: setting resolution fail\0A\00", align 1
@ad2s1210_resolution_value = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad2s1210_store_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_store_resolution(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %18 = call i32 @kstrtou8(i8* %17, i32 10, i8* %12)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load i8, i8* %12, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* %12, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sgt i32 %27, 16
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %21, %4
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %122

34:                                               ; preds = %25
  %35 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %36 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %39 = load i8, i8* @AD2S1210_REG_CONTROL, align 1
  %40 = call i32 @ad2s1210_config_read(%struct.ad2s1210_state* %38, i8 zeroext %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %117

44:                                               ; preds = %34
  %45 = load i32, i32* %13, align 4
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %11, align 1
  %47 = load i8, i8* @AD2S1210_SET_RESOLUTION, align 1
  %48 = zext i8 %47 to i32
  %49 = xor i32 %48, -1
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %11, align 1
  %54 = load i8, i8* %12, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %55, 10
  %57 = ashr i32 %56, 1
  %58 = load i8, i8* %11, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %11, align 1
  %62 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %63 = load i8, i8* @AD2S1210_REG_CONTROL, align 1
  %64 = call i32 @ad2s1210_config_write(%struct.ad2s1210_state* %62, i8 zeroext %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %44
  br label %117

68:                                               ; preds = %44
  %69 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %70 = load i8, i8* %11, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @AD2S1210_MSB_IS_LOW, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = trunc i32 %74 to i8
  %76 = call i32 @ad2s1210_config_write(%struct.ad2s1210_state* %69, i8 zeroext %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %117

80:                                               ; preds = %68
  %81 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %82 = load i8, i8* @AD2S1210_REG_CONTROL, align 1
  %83 = call i32 @ad2s1210_config_read(%struct.ad2s1210_state* %81, i8 zeroext %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %117

87:                                               ; preds = %80
  %88 = load i32, i32* %13, align 4
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %11, align 1
  %90 = load i8, i8* %11, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @AD2S1210_MSB_IS_HIGH, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %13, align 4
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %117

101:                                              ; preds = %87
  %102 = load i32*, i32** @ad2s1210_resolution_value, align 8
  %103 = load i8, i8* %11, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @AD2S1210_SET_RESOLUTION, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %104, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %112 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %114 = call i32 @ad2s1210_set_resolution_pin(%struct.ad2s1210_state* %113)
  %115 = load i64, i64* %9, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %101, %96, %86, %79, %67, %43
  %118 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %119 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %117, %29
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.ad2s1210_state* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad2s1210_config_read(%struct.ad2s1210_state*, i8 zeroext) #1

declare dso_local i32 @ad2s1210_config_write(%struct.ad2s1210_state*, i8 zeroext) #1

declare dso_local i32 @ad2s1210_set_resolution_pin(%struct.ad2s1210_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
