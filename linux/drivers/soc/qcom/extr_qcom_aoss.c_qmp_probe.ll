; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.qmp = type { i32, %struct.TYPE_2__, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to acquire ipc mailbox\0A\00", align 1
@qmp_intr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"aoss-qmp\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to request interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to register aoss cooling devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qmp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.qmp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.qmp* @devm_kzalloc(i32* %9, i32 48, i32 %10)
  store %struct.qmp* %11, %struct.qmp** %5, align 8
  %12 = load %struct.qmp*, %struct.qmp** %5, align 8
  %13 = icmp ne %struct.qmp* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %133

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.qmp*, %struct.qmp** %5, align 8
  %21 = getelementptr inbounds %struct.qmp, %struct.qmp* %20, i32 0, i32 5
  store i32* %19, i32** %21, align 8
  %22 = load %struct.qmp*, %struct.qmp** %5, align 8
  %23 = getelementptr inbounds %struct.qmp, %struct.qmp* %22, i32 0, i32 4
  %24 = call i32 @init_waitqueue_head(i32* %23)
  %25 = load %struct.qmp*, %struct.qmp** %5, align 8
  %26 = getelementptr inbounds %struct.qmp, %struct.qmp* %25, i32 0, i32 3
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %4, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.resource*, %struct.resource** %4, align 8
  %34 = call i32 @devm_ioremap_resource(i32* %32, %struct.resource* %33)
  %35 = load %struct.qmp*, %struct.qmp** %5, align 8
  %36 = getelementptr inbounds %struct.qmp, %struct.qmp* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.qmp*, %struct.qmp** %5, align 8
  %38 = getelementptr inbounds %struct.qmp, %struct.qmp* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %17
  %43 = load %struct.qmp*, %struct.qmp** %5, align 8
  %44 = getelementptr inbounds %struct.qmp, %struct.qmp* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %133

47:                                               ; preds = %17
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.qmp*, %struct.qmp** %5, align 8
  %51 = getelementptr inbounds %struct.qmp, %struct.qmp* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32* %49, i32** %52, align 8
  %53 = load %struct.qmp*, %struct.qmp** %5, align 8
  %54 = getelementptr inbounds %struct.qmp, %struct.qmp* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.qmp*, %struct.qmp** %5, align 8
  %57 = getelementptr inbounds %struct.qmp, %struct.qmp* %56, i32 0, i32 1
  %58 = call i32 @mbox_request_channel(%struct.TYPE_2__* %57, i32 0)
  %59 = load %struct.qmp*, %struct.qmp** %5, align 8
  %60 = getelementptr inbounds %struct.qmp, %struct.qmp* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.qmp*, %struct.qmp** %5, align 8
  %62 = getelementptr inbounds %struct.qmp, %struct.qmp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %47
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.qmp*, %struct.qmp** %5, align 8
  %71 = getelementptr inbounds %struct.qmp, %struct.qmp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %133

74:                                               ; preds = %47
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @platform_get_irq(%struct.platform_device* %75, i32 0)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @qmp_intr, align 4
  %81 = load i32, i32* @IRQF_ONESHOT, align 4
  %82 = load %struct.qmp*, %struct.qmp** %5, align 8
  %83 = call i32 @devm_request_irq(i32* %78, i32 %79, i32 %80, i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.qmp* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %127

90:                                               ; preds = %74
  %91 = load %struct.qmp*, %struct.qmp** %5, align 8
  %92 = call i32 @qmp_open(%struct.qmp* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %127

96:                                               ; preds = %90
  %97 = load %struct.qmp*, %struct.qmp** %5, align 8
  %98 = call i32 @qmp_qdss_clk_add(%struct.qmp* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %124

102:                                              ; preds = %96
  %103 = load %struct.qmp*, %struct.qmp** %5, align 8
  %104 = call i32 @qmp_pd_add(%struct.qmp* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %121

108:                                              ; preds = %102
  %109 = load %struct.qmp*, %struct.qmp** %5, align 8
  %110 = call i32 @qmp_cooling_devices_register(%struct.qmp* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 @dev_err(i32* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = load %struct.qmp*, %struct.qmp** %5, align 8
  %120 = call i32 @platform_set_drvdata(%struct.platform_device* %118, %struct.qmp* %119)
  store i32 0, i32* %2, align 4
  br label %133

121:                                              ; preds = %107
  %122 = load %struct.qmp*, %struct.qmp** %5, align 8
  %123 = call i32 @qmp_qdss_clk_remove(%struct.qmp* %122)
  br label %124

124:                                              ; preds = %121, %101
  %125 = load %struct.qmp*, %struct.qmp** %5, align 8
  %126 = call i32 @qmp_close(%struct.qmp* %125)
  br label %127

127:                                              ; preds = %124, %95, %86
  %128 = load %struct.qmp*, %struct.qmp** %5, align 8
  %129 = getelementptr inbounds %struct.qmp, %struct.qmp* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @mbox_free_channel(i32 %130)
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %127, %117, %66, %42, %14
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.qmp* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mbox_request_channel(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.qmp*) #1

declare dso_local i32 @qmp_open(%struct.qmp*) #1

declare dso_local i32 @qmp_qdss_clk_add(%struct.qmp*) #1

declare dso_local i32 @qmp_pd_add(%struct.qmp*) #1

declare dso_local i32 @qmp_cooling_devices_register(%struct.qmp*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qmp*) #1

declare dso_local i32 @qmp_qdss_clk_remove(%struct.qmp*) #1

declare dso_local i32 @qmp_close(%struct.qmp*) #1

declare dso_local i32 @mbox_free_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
