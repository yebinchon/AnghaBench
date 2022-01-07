; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_setup_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_setup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { %struct.fsl_mc_device_irq**, %struct.TYPE_3__, %struct.device }
%struct.fsl_mc_device_irq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }
%struct.ethsw_core = type { i32, i32 }

@DPSW_IRQ_EVENT_LINK_CHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MC irqs allocation failed\0A\00", align 1
@DPSW_IRQ_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DPSW_IRQ_INDEX_IF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"dpsw_set_irq_enable err %d\0A\00", align 1
@ethsw_irq0_handler_thread = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"devm_request_threaded_irq(): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"dpsw_set_irq_mask(): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"dpsw_set_irq_enable(): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @ethsw_setup_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_setup_irqs(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ethsw_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_mc_device_irq*, align 8
  %8 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  %9 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %9, i32 0, i32 2
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ethsw_core* @dev_get_drvdata(%struct.device* %11)
  store %struct.ethsw_core* %12, %struct.ethsw_core** %5, align 8
  %13 = load i32, i32* @DPSW_IRQ_EVENT_LINK_CHANGED, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %15 = call i32 @fsl_mc_allocate_irqs(%struct.fsl_mc_device* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %122

22:                                               ; preds = %1
  %23 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DPSW_IRQ_NUM, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %118

35:                                               ; preds = %22
  %36 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %37 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %40 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @DPSW_IRQ_INDEX_IF, align 8
  %43 = call i32 @dpsw_set_irq_enable(i32 %38, i32 0, i32 %41, i64 %42, i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %118

50:                                               ; preds = %35
  %51 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %52 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %51, i32 0, i32 0
  %53 = load %struct.fsl_mc_device_irq**, %struct.fsl_mc_device_irq*** %52, align 8
  %54 = load i64, i64* @DPSW_IRQ_INDEX_IF, align 8
  %55 = getelementptr inbounds %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %53, i64 %54
  %56 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %55, align 8
  store %struct.fsl_mc_device_irq* %56, %struct.fsl_mc_device_irq** %7, align 8
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %7, align 8
  %59 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ethsw_irq0_handler_thread, align 4
  %64 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %65 = load i32, i32* @IRQF_ONESHOT, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @dev_name(%struct.device* %67)
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @devm_request_threaded_irq(%struct.device* %57, i32 %62, i32* null, i32 %63, i32 %66, i32 %68, %struct.device* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %50
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %118

77:                                               ; preds = %50
  %78 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %79 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %82 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* @DPSW_IRQ_INDEX_IF, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dpsw_set_irq_mask(i32 %80, i32 0, i32 %83, i64 %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %109

93:                                               ; preds = %77
  %94 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %95 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %98 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* @DPSW_IRQ_INDEX_IF, align 8
  %101 = call i32 @dpsw_set_irq_enable(i32 %96, i32 0, i32 %99, i64 %100, i32 1)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %109

108:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %122

109:                                              ; preds = %104, %89
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %7, align 8
  %112 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @devm_free_irq(%struct.device* %110, i32 %115, %struct.device* %116)
  br label %118

118:                                              ; preds = %109, %73, %46, %32
  %119 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %120 = call i32 @fsl_mc_free_irqs(%struct.fsl_mc_device* %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %108, %18
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.ethsw_core* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @fsl_mc_allocate_irqs(%struct.fsl_mc_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dpsw_set_irq_enable(i32, i32, i32, i64, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.device*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dpsw_set_irq_mask(i32, i32, i32, i64, i32) #1

declare dso_local i32 @devm_free_irq(%struct.device*, i32, %struct.device*) #1

declare dso_local i32 @fsl_mc_free_irqs(%struct.fsl_mc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
