; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_clear_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_clear_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ad2s1210_state = type { i32, i32* }

@AD2S1210_SAMPLE = common dso_local global i64 0, align 8
@AD2S1210_REG_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad2s1210_clear_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_clear_fault(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ad2s1210_state*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i32 @dev_to_iio_dev(%struct.device* %11)
  %13 = call %struct.ad2s1210_state* @iio_priv(i32 %12)
  store %struct.ad2s1210_state* %13, %struct.ad2s1210_state** %9, align 8
  %14 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %9, align 8
  %15 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %9, align 8
  %18 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @AD2S1210_SAMPLE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpiod_set_value(i32 %22, i32 0)
  %24 = call i32 @udelay(i32 1)
  %25 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %9, align 8
  %26 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @AD2S1210_SAMPLE, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gpiod_set_value(i32 %30, i32 1)
  %32 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %9, align 8
  %33 = load i32, i32* @AD2S1210_REG_FAULT, align 4
  %34 = call i32 @ad2s1210_config_read(%struct.ad2s1210_state* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  br label %53

38:                                               ; preds = %4
  %39 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %9, align 8
  %40 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @AD2S1210_SAMPLE, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gpiod_set_value(i32 %44, i32 0)
  %46 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %9, align 8
  %47 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @AD2S1210_SAMPLE, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gpiod_set_value(i32 %51, i32 1)
  br label %53

53:                                               ; preds = %38, %37
  %54 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %9, align 8
  %55 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  br label %64

62:                                               ; preds = %53
  %63 = load i64, i64* %8, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i64 [ %61, %59 ], [ %63, %62 ]
  %66 = trunc i64 %65 to i32
  ret i32 %66
}

declare dso_local %struct.ad2s1210_state* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ad2s1210_config_read(%struct.ad2s1210_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
