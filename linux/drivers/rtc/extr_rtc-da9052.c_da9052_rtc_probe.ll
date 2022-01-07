; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.da9052_rtc = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DA9052_BBAT_CONT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to setup RTC battery charging: %d\0A\00", align 1
@DA9052_ALARM_Y_REG = common dso_local global i32 0, align 4
@DA9052_ALARM_Y_TICK_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to disable TICKS: %d\0A\00", align 1
@da9052_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@DA9052_IRQ_ALARM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ALM\00", align 1
@da9052_rtc_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"irq registration failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9052_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9052_rtc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.da9052_rtc* @devm_kzalloc(%struct.TYPE_4__* %7, i32 8, i32 %8)
  store %struct.da9052_rtc* %9, %struct.da9052_rtc** %4, align 8
  %10 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %11 = icmp ne %struct.da9052_rtc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %90

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_get_drvdata(i32 %19)
  %21 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %22 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.da9052_rtc* %24)
  %26 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %27 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DA9052_BBAT_CONT_REG, align 4
  %30 = call i32 @da9052_reg_write(i32 %28, i32 %29, i32 254)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %15
  %34 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @rtc_err(%struct.da9052_rtc* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %90

38:                                               ; preds = %15
  %39 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %40 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DA9052_ALARM_Y_REG, align 4
  %43 = load i32, i32* @DA9052_ALARM_Y_TICK_ON, align 4
  %44 = call i32 @da9052_reg_update(i32 %41, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @rtc_err(%struct.da9052_rtc* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %38
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 1
  %54 = call i32 @device_init_wakeup(%struct.TYPE_4__* %53, i32 1)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 1
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @THIS_MODULE, align 4
  %61 = call i32 @devm_rtc_device_register(%struct.TYPE_4__* %56, i32 %59, i32* @da9052_rtc_ops, i32 %60)
  %62 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %63 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %65 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %71 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %90

74:                                               ; preds = %51
  %75 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %76 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DA9052_IRQ_ALARM, align 4
  %79 = load i32, i32* @da9052_rtc_irq, align 4
  %80 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %81 = call i32 @da9052_request_irq(i32 %77, i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %79, %struct.da9052_rtc* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @rtc_err(%struct.da9052_rtc* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %84, %69, %33, %12
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.da9052_rtc* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9052_rtc*) #1

declare dso_local i32 @da9052_reg_write(i32, i32, i32) #1

declare dso_local i32 @rtc_err(%struct.da9052_rtc*, i8*, i32) #1

declare dso_local i32 @da9052_reg_update(i32, i32, i32, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @da9052_request_irq(i32, i32, i8*, i32, %struct.da9052_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
