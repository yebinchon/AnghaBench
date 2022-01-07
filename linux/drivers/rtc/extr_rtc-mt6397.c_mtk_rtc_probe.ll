; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.resource = type { i32 }
%struct.mt6397_chip = type { i32 }
%struct.mt6397_rtc = type { i64, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@mtk_rtc_irq_handler_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mt6397-rtc\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", align 1
@mtk_rtc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.mt6397_chip*, align 8
  %6 = alloca %struct.mt6397_rtc*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mt6397_chip* @dev_get_drvdata(i32 %11)
  store %struct.mt6397_chip* %12, %struct.mt6397_chip** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mt6397_rtc* @devm_kzalloc(%struct.TYPE_10__* %14, i32 40, i32 %15)
  store %struct.mt6397_rtc* %16, %struct.mt6397_rtc** %6, align 8
  %17 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %18 = icmp ne %struct.mt6397_rtc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %123

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %30 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i64 @platform_get_irq(%struct.platform_device* %31, i32 0)
  %33 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %34 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %36 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %41 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %123

44:                                               ; preds = %22
  %45 = load %struct.mt6397_chip*, %struct.mt6397_chip** %5, align 8
  %46 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %49 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %53 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %52, i32 0, i32 2
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %53, align 8
  %54 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %55 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %54, i32 0, i32 3
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %59 = call i32 @platform_set_drvdata(%struct.platform_device* %57, %struct.mt6397_rtc* %58)
  %60 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %61 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = call %struct.TYPE_9__* @devm_rtc_allocate_device(%struct.TYPE_10__* %62)
  %64 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %65 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %64, i32 0, i32 1
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %65, align 8
  %66 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %67 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i64 @IS_ERR(%struct.TYPE_9__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %44
  %72 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %73 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.TYPE_9__* %74)
  store i32 %75, i32* %2, align 4
  br label %123

76:                                               ; preds = %44
  %77 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %78 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @mtk_rtc_irq_handler_thread, align 4
  %82 = load i32, i32* @IRQF_ONESHOT, align 4
  %83 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %86 = call i32 @request_threaded_irq(i32 %80, i32* null, i32 %81, i32 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.mt6397_rtc* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %76
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %93 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dev_err(%struct.TYPE_10__* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %123

99:                                               ; preds = %76
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @device_init_wakeup(%struct.TYPE_10__* %101, i32 1)
  %103 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %104 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i32* @mtk_rtc_ops, i32** %106, align 8
  %107 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %108 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = call i32 @rtc_register_device(%struct.TYPE_9__* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %115

114:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %123

115:                                              ; preds = %113
  %116 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %117 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %121 = call i32 @free_irq(i32 %119, %struct.mt6397_rtc* %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %115, %114, %89, %71, %39, %19
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.mt6397_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.mt6397_rtc* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mt6397_rtc*) #1

declare dso_local %struct.TYPE_9__* @devm_rtc_allocate_device(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.mt6397_rtc*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_9__*) #1

declare dso_local i32 @free_irq(i32, %struct.mt6397_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
