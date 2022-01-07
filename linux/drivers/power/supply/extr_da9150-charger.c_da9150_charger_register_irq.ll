; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_register_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_register_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da9150_charger = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to get IRQ CHG_STATUS: %d\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, i8*)* @da9150_charger_register_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_register_irq(%struct.platform_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.da9150_charger*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = call %struct.da9150_charger* @platform_get_drvdata(%struct.platform_device* %14)
  store %struct.da9150_charger* %15, %struct.da9150_charger** %9, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @platform_get_irq_byname(%struct.platform_device* %16, i8* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %42

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IRQF_ONESHOT, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.da9150_charger*, %struct.da9150_charger** %9, align 8
  %32 = call i32 @request_threaded_irq(i32 %27, i32* null, i32 %28, i32 %29, i8* %30, %struct.da9150_charger* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %26
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.da9150_charger* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.da9150_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
