; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_store_fexcit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_store_fexcit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ad2s1210_state = type { i32, i32 }

@AD2S1210_MIN_EXCIT = common dso_local global i32 0, align 4
@AD2S1210_MAX_EXCIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ad2s1210: excitation frequency out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad2s1210_store_fexcit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_store_fexcit(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ad2s1210_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @dev_to_iio_dev(%struct.device* %13)
  %15 = call %struct.ad2s1210_state* @iio_priv(i32 %14)
  store %struct.ad2s1210_state* %15, %struct.ad2s1210_state** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtouint(i8* %16, i32 10, i32* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %64

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @AD2S1210_MIN_EXCIT, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @AD2S1210_MAX_EXCIT, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %22
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %64

35:                                               ; preds = %26
  %36 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %37 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %41 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %43 = call i32 @ad2s1210_update_frequency_control_word(%struct.ad2s1210_state* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %50

47:                                               ; preds = %35
  %48 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %49 = call i32 @ad2s1210_soft_reset(%struct.ad2s1210_state* %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %10, align 8
  %52 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  br label %61

59:                                               ; preds = %50
  %60 = load i64, i64* %9, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i64 [ %58, %56 ], [ %60, %59 ]
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %30, %20
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.ad2s1210_state* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad2s1210_update_frequency_control_word(%struct.ad2s1210_state*) #1

declare dso_local i32 @ad2s1210_soft_reset(%struct.ad2s1210_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
