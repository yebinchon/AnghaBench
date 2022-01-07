; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-brcmstb-waketimer.c_brcmstb_waketmr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-brcmstb-waketimer.c_brcmstb_waketmr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.brcmstb_waketmr = type { i64, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_13__*, i8*, %struct.TYPE_13__*, %struct.device* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BRCMSTB_WKTMR_DEFAULT_FREQ = common dso_local global i8* null, align 8
@brcmstb_waketmr_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"brcmstb-waketimer\00", align 1
@brcmstb_waketmr_reboot = common dso_local global i32 0, align 4
@brcmstb_waketmr_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"registered, with irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @brcmstb_waketmr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_waketmr_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.brcmstb_waketmr*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.brcmstb_waketmr* @devm_kzalloc(%struct.device* %10, i32 56, i32 %11)
  store %struct.brcmstb_waketmr* %12, %struct.brcmstb_waketmr** %5, align 8
  %13 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %14 = icmp ne %struct.brcmstb_waketmr* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %172

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.brcmstb_waketmr* %20)
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %24 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %23, i32 0, i32 6
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = call %struct.TYPE_13__* @devm_ioremap_resource(%struct.device* %28, %struct.resource* %29)
  %31 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %32 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %31, i32 0, i32 5
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %32, align 8
  %33 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %34 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %33, i32 0, i32 5
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = call i64 @IS_ERR(%struct.TYPE_13__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %40 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %39, i32 0, i32 5
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = call i32 @PTR_ERR(%struct.TYPE_13__* %41)
  store i32 %42, i32* %2, align 4
  br label %172

43:                                               ; preds = %18
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.device* %44)
  %46 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %47 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %46, i32 0, i32 3
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %47, align 8
  %48 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %49 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %48, i32 0, i32 3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = call i64 @IS_ERR(%struct.TYPE_13__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %55 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %54, i32 0, i32 3
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.TYPE_13__* %56)
  store i32 %57, i32* %2, align 4
  br label %172

58:                                               ; preds = %43
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @device_set_wakeup_capable(%struct.device* %59, i32 1)
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @device_wakeup_enable(%struct.device* %61)
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = call i64 @platform_get_irq(%struct.platform_device* %63, i32 0)
  %65 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %66 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %68 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %172

74:                                               ; preds = %58
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call %struct.TYPE_13__* @devm_clk_get(%struct.device* %75, i32* null)
  %77 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %78 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %77, i32 0, i32 1
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %78, align 8
  %79 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %80 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %79, i32 0, i32 1
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = call i64 @IS_ERR(%struct.TYPE_13__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %109, label %84

84:                                               ; preds = %74
  %85 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %86 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %85, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = call i32 @clk_prepare_enable(%struct.TYPE_13__* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %172

93:                                               ; preds = %84
  %94 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %95 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %94, i32 0, i32 1
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = call i8* @clk_get_rate(%struct.TYPE_13__* %96)
  %98 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %99 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %101 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %93
  %105 = load i8*, i8** @BRCMSTB_WKTMR_DEFAULT_FREQ, align 8
  %106 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %107 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %93
  br label %115

109:                                              ; preds = %74
  %110 = load i8*, i8** @BRCMSTB_WKTMR_DEFAULT_FREQ, align 8
  %111 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %112 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %114 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %113, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %114, align 8
  br label %115

115:                                              ; preds = %109, %108
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %118 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @brcmstb_waketmr_irq, align 4
  %121 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %122 = call i32 @devm_request_irq(%struct.device* %116, i64 %119, i32 %120, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.brcmstb_waketmr* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %160

126:                                              ; preds = %115
  %127 = load i32, i32* @brcmstb_waketmr_reboot, align 4
  %128 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %129 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %132 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %131, i32 0, i32 2
  %133 = call i32 @register_reboot_notifier(%struct.TYPE_12__* %132)
  %134 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %135 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %134, i32 0, i32 3
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store i32* @brcmstb_waketmr_ops, i32** %137, align 8
  %138 = load i32, i32* @U32_MAX, align 4
  %139 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %140 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %139, i32 0, i32 3
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 8
  %143 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %144 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %143, i32 0, i32 3
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = call i32 @rtc_register_device(%struct.TYPE_13__* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %126
  br label %156

150:                                              ; preds = %126
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %153 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @dev_info(%struct.device* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %154)
  store i32 0, i32* %2, align 4
  br label %172

156:                                              ; preds = %149
  %157 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %158 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %157, i32 0, i32 2
  %159 = call i32 @unregister_reboot_notifier(%struct.TYPE_12__* %158)
  br label %160

160:                                              ; preds = %156, %125
  %161 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %162 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %161, i32 0, i32 1
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = icmp ne %struct.TYPE_13__* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.brcmstb_waketmr*, %struct.brcmstb_waketmr** %5, align 8
  %167 = getelementptr inbounds %struct.brcmstb_waketmr, %struct.brcmstb_waketmr* %166, i32 0, i32 1
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = call i32 @clk_disable_unprepare(%struct.TYPE_13__* %168)
  br label %170

170:                                              ; preds = %165, %160
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %150, %91, %71, %53, %38, %15
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.brcmstb_waketmr* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.brcmstb_waketmr*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.device*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

declare dso_local i32 @device_wakeup_enable(%struct.device*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.TYPE_13__* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.TYPE_13__*) #1

declare dso_local i8* @clk_get_rate(%struct.TYPE_13__*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32, i32, i8*, %struct.brcmstb_waketmr*) #1

declare dso_local i32 @register_reboot_notifier(%struct.TYPE_12__*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i32 @unregister_reboot_notifier(%struct.TYPE_12__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
