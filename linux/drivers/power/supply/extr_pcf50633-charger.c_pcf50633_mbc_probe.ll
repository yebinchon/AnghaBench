; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_pcf50633_mbc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_pcf50633_mbc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.power_supply_config = type { i32, %struct.pcf50633_mbc*, i32, i32 }
%struct.pcf50633_mbc = type { %struct.TYPE_9__*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mbc_irq_handlers = common dso_local global i32* null, align 8
@pcf50633_mbc_adapter_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to register adapter\0A\00", align 1
@pcf50633_mbc_sysfs_groups = common dso_local global i32 0, align 4
@pcf50633_mbc_usb_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to register usb\0A\00", align 1
@pcf50633_mbc_ac_desc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to register ac\0A\00", align 1
@PCF50633_REG_MBCS1 = common dso_local global i32 0, align 4
@PCF50633_MBCS1_USBPRES = common dso_local global i32 0, align 4
@PCF50633_IRQ_USBINS = common dso_local global i32 0, align 4
@PCF50633_MBCS1_ADAPTPRES = common dso_local global i32 0, align 4
@PCF50633_IRQ_ADPINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcf50633_mbc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_mbc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.power_supply_config, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.pcf50633_mbc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pcf50633_mbc* @devm_kzalloc(%struct.TYPE_8__* %11, i32 32, i32 %12)
  store %struct.pcf50633_mbc* %13, %struct.pcf50633_mbc** %6, align 8
  %14 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %15 = icmp ne %struct.pcf50633_mbc* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %173

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.pcf50633_mbc* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_9__* @dev_to_pcf50633(i32 %26)
  %28 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %29 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %28, i32 0, i32 0
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %29, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %46, %19
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** @mbc_irq_handlers, align 8
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %37 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32*, i32** @mbc_irq_handlers, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %45 = call i32 @pcf50633_register_irq(%struct.TYPE_9__* %38, i32 %43, i32 (i32, %struct.pcf50633_mbc*)* @pcf50633_mbc_irq_handler, %struct.pcf50633_mbc* %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %51 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %59 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %67 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 1
  store %struct.pcf50633_mbc* %66, %struct.pcf50633_mbc** %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i8* @power_supply_register(%struct.TYPE_8__* %69, i32* @pcf50633_mbc_adapter_desc, %struct.power_supply_config* %4)
  %71 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %72 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %74 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %49
  %79 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %80 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %86 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  store i32 %88, i32* %2, align 4
  br label %173

89:                                               ; preds = %49
  %90 = bitcast %struct.power_supply_config* %5 to i8*
  %91 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 24, i1 false)
  %92 = load i32, i32* @pcf50633_mbc_sysfs_groups, align 4
  %93 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i8* @power_supply_register(%struct.TYPE_8__* %95, i32* @pcf50633_mbc_usb_desc, %struct.power_supply_config* %5)
  %97 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %98 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %100 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @IS_ERR(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %89
  %105 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %106 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %112 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @power_supply_unregister(i8* %113)
  %115 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %116 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @PTR_ERR(i8* %117)
  store i32 %118, i32* %2, align 4
  br label %173

119:                                              ; preds = %89
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i8* @power_supply_register(%struct.TYPE_8__* %121, i32* @pcf50633_mbc_ac_desc, %struct.power_supply_config* %4)
  %123 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %124 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %126 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @IS_ERR(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %149

130:                                              ; preds = %119
  %131 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %132 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %137 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %138 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @power_supply_unregister(i8* %139)
  %141 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %142 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @power_supply_unregister(i8* %143)
  %145 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %146 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @PTR_ERR(i8* %147)
  store i32 %148, i32* %2, align 4
  br label %173

149:                                              ; preds = %119
  %150 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %151 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load i32, i32* @PCF50633_REG_MBCS1, align 4
  %154 = call i32 @pcf50633_reg_read(%struct.TYPE_9__* %152, i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @PCF50633_MBCS1_USBPRES, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load i32, i32* @PCF50633_IRQ_USBINS, align 4
  %161 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %162 = call i32 @pcf50633_mbc_irq_handler(i32 %160, %struct.pcf50633_mbc* %161)
  br label %163

163:                                              ; preds = %159, %149
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @PCF50633_MBCS1_ADAPTPRES, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @PCF50633_IRQ_ADPINS, align 4
  %170 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %6, align 8
  %171 = call i32 @pcf50633_mbc_irq_handler(i32 %169, %struct.pcf50633_mbc* %170)
  br label %172

172:                                              ; preds = %168, %163
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %130, %104, %78, %16
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.pcf50633_mbc* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pcf50633_mbc*) #2

declare dso_local %struct.TYPE_9__* @dev_to_pcf50633(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @pcf50633_register_irq(%struct.TYPE_9__*, i32, i32 (i32, %struct.pcf50633_mbc*)*, %struct.pcf50633_mbc*) #2

declare dso_local i32 @pcf50633_mbc_irq_handler(i32, %struct.pcf50633_mbc*) #2

declare dso_local i8* @power_supply_register(%struct.TYPE_8__*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @power_supply_unregister(i8*) #2

declare dso_local i32 @pcf50633_reg_read(%struct.TYPE_9__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
