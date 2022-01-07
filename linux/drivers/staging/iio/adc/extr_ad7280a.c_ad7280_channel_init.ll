; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_channel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7280a.c_ad7280_channel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7280_state = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7280_state*)* @ad7280_channel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7280_channel_init(%struct.ad7280_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7280_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ad7280_state* %0, %struct.ad7280_state** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %7 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %11 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = mul nsw i32 %13, 12
  %15 = add nsw i32 %14, 2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @devm_kcalloc(i32* %9, i32 %15, i32 4, i32 %16)
  %18 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %19 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %21 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %63

27:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %31 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ad7280_init_dev_channels(%struct.ad7280_state* %35, i32 %36, i32* %5)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %43 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ad7280_total_voltage_channel_init(i32* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  %53 = load %struct.ad7280_state*, %struct.ad7280_state** %3, align 8
  %54 = getelementptr inbounds %struct.ad7280_state, %struct.ad7280_state* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ad7280_timestamp_channel_init(i32* %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %41, %24
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @ad7280_init_dev_channels(%struct.ad7280_state*, i32, i32*) #1

declare dso_local i32 @ad7280_total_voltage_channel_init(i32*, i32, i32) #1

declare dso_local i32 @ad7280_timestamp_channel_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
