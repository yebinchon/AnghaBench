; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_punit_ipc.c_intel_punit_ipc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_punit_ipc.c_intel_punit_ipc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@punit_ipcdev = common dso_local global %struct.TYPE_5__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid IRQ, using polling mode\0A\00", align 1
@intel_punit_ioc = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"intel_punit_ipc\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to request irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_punit_ipc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_punit_ipc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_5__* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** @punit_ipcdev, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @punit_ipcdev, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @punit_ipcdev, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.TYPE_5__* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @platform_get_irq_optional(%struct.platform_device* %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %46

27:                                               ; preds = %15
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @intel_punit_ioc, align 4
  %32 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %33 = call i32 @devm_request_irq(i32* %29, i32 %30, i32 %31, i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__** @punit_ipcdev)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %65

42:                                               ; preds = %27
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @punit_ipcdev, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %23
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i32 @intel_punit_get_bars(%struct.platform_device* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %63

52:                                               ; preds = %46
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @punit_ipcdev, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @punit_ipcdev, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @punit_ipcdev, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = call i32 @init_completion(i32* %61)
  br label %63

63:                                               ; preds = %52, %51
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %36, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_5__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @platform_get_irq_optional(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.TYPE_5__**) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @intel_punit_get_bars(%struct.platform_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
