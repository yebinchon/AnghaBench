; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_update_frequency_control_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/resolver/extr_ad2s1210.c_ad2s1210_update_frequency_control_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad2s1210_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AD2S1210_MIN_FCW = common dso_local global i8 0, align 1
@AD2S1210_MAX_FCW = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [28 x i8] c"ad2s1210: FCW out of range\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@AD2S1210_REG_EXCIT_FREQ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad2s1210_state*)* @ad2s1210_update_frequency_control_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad2s1210_update_frequency_control_word(%struct.ad2s1210_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad2s1210_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.ad2s1210_state* %0, %struct.ad2s1210_state** %3, align 8
  %6 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %3, align 8
  %7 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = mul nsw i32 %8, 32768
  %10 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %3, align 8
  %11 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %9, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @AD2S1210_MIN_FCW, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @AD2S1210_MAX_FCW, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20, %1
  %27 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %3, align 8
  %28 = getelementptr inbounds %struct.ad2s1210_state, %struct.ad2s1210_state* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %20
  %35 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %3, align 8
  %36 = load i8, i8* @AD2S1210_REG_EXCIT_FREQ, align 1
  %37 = call i32 @ad2s1210_config_write(%struct.ad2s1210_state* %35, i8 zeroext %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.ad2s1210_state*, %struct.ad2s1210_state** %3, align 8
  %44 = load i8, i8* %5, align 1
  %45 = call i32 @ad2s1210_config_write(%struct.ad2s1210_state* %43, i8 zeroext %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %40, %26
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ad2s1210_config_write(%struct.ad2s1210_state*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
