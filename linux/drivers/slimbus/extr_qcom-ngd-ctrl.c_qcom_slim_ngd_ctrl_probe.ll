; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_ctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_ctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.qcom_slim_ngd_ctrl = type { %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.device*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no slimbus IRQ resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@qcom_slim_ngd_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"slim-ngd\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"request IRQ failed\0A\00", align 1
@SLIM_ROOT_FREQ = common dso_local global i32 0, align 4
@SLIM_CL_PER_SUPERFRAME_DIV8 = common dso_local global i32 0, align 4
@SLIM_MAX_CLK_GEAR = common dso_local global i32 0, align 4
@qcom_slim_ngd_get_laddr = common dso_local global i32 0, align 4
@qcom_slim_ngd_enable_stream = common dso_local global i32 0, align 4
@qcom_slim_ngd_xfer_msg = common dso_local global i32 0, align 4
@QCOM_SLIM_NGD_CTRL_DOWN = common dso_local global i32 0, align 4
@qcom_slim_ngd_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_slim_ngd_ctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_ngd_ctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.qcom_slim_ngd_ctrl* @devm_kzalloc(%struct.device* %10, i32 72, i32 %11)
  store %struct.qcom_slim_ngd_ctrl* %12, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %13 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %14 = icmp ne %struct.qcom_slim_ngd_ctrl* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %127

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %21 = call i32 @dev_set_drvdata(%struct.device* %19, %struct.qcom_slim_ngd_ctrl* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %6, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = call i32 @devm_ioremap_resource(%struct.device* %25, %struct.resource* %26)
  %28 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %29 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %31 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %37 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %127

40:                                               ; preds = %18
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_IRQ, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 0)
  store %struct.resource* %43, %struct.resource** %6, align 8
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = icmp ne %struct.resource* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %127

52:                                               ; preds = %40
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @qcom_slim_ngd_interrupt, align 4
  %58 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %59 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %60 = call i32 @devm_request_irq(%struct.device* %53, i32 %56, i32 %57, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.qcom_slim_ngd_ctrl* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %127

68:                                               ; preds = %52
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %71 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %70, i32 0, i32 6
  store %struct.device* %69, %struct.device** %71, align 8
  %72 = load i32, i32* @SLIM_ROOT_FREQ, align 4
  %73 = ashr i32 %72, 3
  %74 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %75 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %78 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SLIM_CL_PER_SUPERFRAME_DIV8, align 4
  %82 = sdiv i32 %80, %81
  %83 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %84 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %87 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %86, i32 0, i32 5
  %88 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %89 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %90, align 8
  %91 = load i32, i32* @SLIM_MAX_CLK_GEAR, align 4
  %92 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %93 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @qcom_slim_ngd_get_laddr, align 4
  %96 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %97 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @qcom_slim_ngd_enable_stream, align 4
  %100 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %101 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @qcom_slim_ngd_xfer_msg, align 4
  %104 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %105 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 8
  %107 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %108 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  %110 = load i32, i32* @QCOM_SLIM_NGD_CTRL_DOWN, align 4
  %111 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %112 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %114 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %113, i32 0, i32 2
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %117 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %116, i32 0, i32 1
  %118 = call i32 @init_completion(i32* %117)
  %119 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %120 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = call i32 @init_completion(i32* %121)
  %123 = call i32 @platform_driver_register(i32* @qcom_slim_ngd_driver)
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %5, align 8
  %126 = call i32 @of_qcom_slim_ngd_register(%struct.device* %124, %struct.qcom_slim_ngd_ctrl* %125)
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %68, %63, %46, %35, %15
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.qcom_slim_ngd_ctrl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.qcom_slim_ngd_ctrl*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.qcom_slim_ngd_ctrl*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_driver_register(i32*) #1

declare dso_local i32 @of_qcom_slim_ngd_register(%struct.device*, %struct.qcom_slim_ngd_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
