; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_get_3db_filter_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7192.c_ad7192_get_3db_filter_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7192_state = type { i32, i32, i32, i32 }

@AD7192_CONF_CHOP = common dso_local global i32 0, align 4
@AD7192_MODE_SINC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7192_state*)* @ad7192_get_3db_filter_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7192_get_3db_filter_freq(%struct.ad7192_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7192_state*, align 8
  %4 = alloca i32, align 4
  store %struct.ad7192_state* %0, %struct.ad7192_state** %3, align 8
  %5 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %6 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %9 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %12 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @AD7192_MODE_RATE(i32 %13)
  %15 = mul nsw i32 %10, %14
  %16 = call i32 @DIV_ROUND_CLOSEST(i32 %7, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %18 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AD7192_CONF_CHOP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = mul i32 %24, 240
  %26 = call i32 @DIV_ROUND_CLOSEST(i32 %25, i32 1024)
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %1
  %28 = load %struct.ad7192_state*, %struct.ad7192_state** %3, align 8
  %29 = getelementptr inbounds %struct.ad7192_state, %struct.ad7192_state* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AD7192_MODE_SINC3, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = mul i32 %35, 272
  %37 = call i32 @DIV_ROUND_CLOSEST(i32 %36, i32 1024)
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = mul i32 %39, 230
  %41 = call i32 @DIV_ROUND_CLOSEST(i32 %40, i32 1024)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %34, %23
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @AD7192_MODE_RATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
