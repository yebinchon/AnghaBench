; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-test.c_test_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-test.c_test_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.rtc_test_data = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@test_rtc_ops_noalm = common dso_local global i32 0, align 4
@test_rtc_ops = common dso_local global i32 0, align 4
@test_rtc_alarm_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @test_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtc_test_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 1
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rtc_test_data* @devm_kzalloc(i32* %6, i32 16, i32 %7)
  store %struct.rtc_test_data* %8, %struct.rtc_test_data** %4, align 8
  %9 = load %struct.rtc_test_data*, %struct.rtc_test_data** %4, align 8
  %10 = icmp ne %struct.rtc_test_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load %struct.rtc_test_data*, %struct.rtc_test_data** %4, align 8
  %17 = call i32 @platform_set_drvdata(%struct.platform_device* %15, %struct.rtc_test_data* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 1
  %20 = call %struct.TYPE_7__* @devm_rtc_allocate_device(i32* %19)
  %21 = load %struct.rtc_test_data*, %struct.rtc_test_data** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %21, i32 0, i32 0
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %22, align 8
  %23 = load %struct.rtc_test_data*, %struct.rtc_test_data** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call i64 @IS_ERR(%struct.TYPE_7__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load %struct.rtc_test_data*, %struct.rtc_test_data** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = call i32 @PTR_ERR(%struct.TYPE_7__* %31)
  store i32 %32, i32* %2, align 4
  br label %62

33:                                               ; preds = %14
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %42 [
    i32 0, label %37
  ]

37:                                               ; preds = %33
  %38 = load %struct.rtc_test_data*, %struct.rtc_test_data** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32* @test_rtc_ops_noalm, i32** %41, align 8
  br label %50

42:                                               ; preds = %33
  %43 = load %struct.rtc_test_data*, %struct.rtc_test_data** %4, align 8
  %44 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32* @test_rtc_ops, i32** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = call i32 @device_init_wakeup(i32* %48, i32 1)
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.rtc_test_data*, %struct.rtc_test_data** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %51, i32 0, i32 1
  %53 = load i32, i32* @test_rtc_alarm_handler, align 4
  %54 = call i32 @timer_setup(%struct.TYPE_6__* %52, i32 %53, i32 0)
  %55 = load %struct.rtc_test_data*, %struct.rtc_test_data** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.rtc_test_data*, %struct.rtc_test_data** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_test_data, %struct.rtc_test_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = call i32 @rtc_register_device(%struct.TYPE_7__* %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %50, %28, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.rtc_test_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtc_test_data*) #1

declare dso_local %struct.TYPE_7__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @timer_setup(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
