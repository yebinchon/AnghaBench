; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lp8788 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.lp8788_charger = type { i32*, %struct.lp8788* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to register charger irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp8788_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp8788*, align 8
  %5 = alloca %struct.lp8788_charger*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.lp8788* @dev_get_drvdata(i32 %11)
  store %struct.lp8788* %12, %struct.lp8788** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.lp8788_charger* @devm_kzalloc(%struct.device* %15, i32 16, i32 %16)
  store %struct.lp8788_charger* %17, %struct.lp8788_charger** %5, align 8
  %18 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %19 = icmp ne %struct.lp8788_charger* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %75

23:                                               ; preds = %1
  %24 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %25 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %26 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %25, i32 0, i32 1
  store %struct.lp8788* %24, %struct.lp8788** %26, align 8
  %27 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %28 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %33 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  br label %38

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32* [ %36, %31 ], [ null, %37 ]
  %40 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %41 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.lp8788_charger* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %47 = call i32 @lp8788_update_charger_params(%struct.platform_device* %45, %struct.lp8788_charger* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %75

52:                                               ; preds = %38
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %56 = call i32 @lp8788_setup_adc_channel(%struct.device* %54, %struct.lp8788_charger* %55)
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %59 = call i32 @lp8788_psy_register(%struct.platform_device* %57, %struct.lp8788_charger* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %75

64:                                               ; preds = %52
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %67 = call i32 @lp8788_irq_register(%struct.platform_device* %65, %struct.lp8788_charger* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_warn(%struct.device* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %64
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %62, %50, %20
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.lp8788* @dev_get_drvdata(i32) #1

declare dso_local %struct.lp8788_charger* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp8788_charger*) #1

declare dso_local i32 @lp8788_update_charger_params(%struct.platform_device*, %struct.lp8788_charger*) #1

declare dso_local i32 @lp8788_setup_adc_channel(%struct.device*, %struct.lp8788_charger*) #1

declare dso_local i32 @lp8788_psy_register(%struct.platform_device*, %struct.lp8788_charger*) #1

declare dso_local i32 @lp8788_irq_register(%struct.platform_device*, %struct.lp8788_charger*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
