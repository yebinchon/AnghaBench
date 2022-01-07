; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-a10sr.c_a10sr_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-a10sr.c_a10sr_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.altr_a10sr = type { i32 }
%struct.a10sr_reset = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@A10SR_RESET_NUM = common dso_local global i32 0, align 4
@a10sr_reset_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @a10sr_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10sr_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.altr_a10sr*, align 8
  %5 = alloca %struct.a10sr_reset*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.altr_a10sr* @dev_get_drvdata(i32 %9)
  store %struct.altr_a10sr* %10, %struct.altr_a10sr** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.a10sr_reset* @devm_kzalloc(%struct.TYPE_4__* %12, i32 32, i32 %13)
  store %struct.a10sr_reset* %14, %struct.a10sr_reset** %5, align 8
  %15 = load %struct.a10sr_reset*, %struct.a10sr_reset** %5, align 8
  %16 = icmp ne %struct.a10sr_reset* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %52

20:                                               ; preds = %1
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = load %struct.a10sr_reset*, %struct.a10sr_reset** %5, align 8
  %23 = getelementptr inbounds %struct.a10sr_reset, %struct.a10sr_reset* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @A10SR_RESET_NUM, align 4
  %26 = load %struct.a10sr_reset*, %struct.a10sr_reset** %5, align 8
  %27 = getelementptr inbounds %struct.a10sr_reset, %struct.a10sr_reset* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.a10sr_reset*, %struct.a10sr_reset** %5, align 8
  %30 = getelementptr inbounds %struct.a10sr_reset, %struct.a10sr_reset* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32* @a10sr_reset_ops, i32** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.a10sr_reset*, %struct.a10sr_reset** %5, align 8
  %37 = getelementptr inbounds %struct.a10sr_reset, %struct.a10sr_reset* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.altr_a10sr*, %struct.altr_a10sr** %4, align 8
  %40 = getelementptr inbounds %struct.altr_a10sr, %struct.altr_a10sr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.a10sr_reset*, %struct.a10sr_reset** %5, align 8
  %43 = getelementptr inbounds %struct.a10sr_reset, %struct.a10sr_reset* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.a10sr_reset*, %struct.a10sr_reset** %5, align 8
  %46 = call i32 @platform_set_drvdata(%struct.platform_device* %44, %struct.a10sr_reset* %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.a10sr_reset*, %struct.a10sr_reset** %5, align 8
  %50 = getelementptr inbounds %struct.a10sr_reset, %struct.a10sr_reset* %49, i32 0, i32 0
  %51 = call i32 @devm_reset_controller_register(%struct.TYPE_4__* %48, %struct.TYPE_5__* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %20, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.altr_a10sr* @dev_get_drvdata(i32) #1

declare dso_local %struct.a10sr_reset* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.a10sr_reset*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
