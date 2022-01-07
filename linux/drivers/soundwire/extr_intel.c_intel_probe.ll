; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.platform_device = type { i32, i32 }
%struct.sdw_cdns_stream_config = type { i32 }
%struct.sdw_intel = type { %struct.TYPE_15__, %struct.TYPE_11__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32*, i64, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_13__*, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_prop_read = common dso_local global i32 0, align 4
@sdw_intel_ops = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"sdw_add_bus_master fail: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"SoundWire master %d is disabled, ignoring\0A\00", align 1
@sdw_cdns_irq = common dso_local global i32 0, align 4
@sdw_cdns_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"unable to grab IRQ %d, disabling device\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"DAI registration failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdw_cdns_stream_config, align 4
  %5 = alloca %struct.sdw_intel*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sdw_intel* @devm_kzalloc(i32* %8, i32 72, i32 %9)
  store %struct.sdw_intel* %10, %struct.sdw_intel** %5, align 8
  %11 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %12 = icmp ne %struct.sdw_intel* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %189

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %21 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.TYPE_11__* @dev_get_platdata(i32* %23)
  %25 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %26 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %25, i32 0, i32 1
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %30 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store i32* %28, i32** %31, align 8
  %32 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %33 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %38 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 4
  %40 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %41 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %44 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 8
  %46 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %47 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %52 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  store i32* %50, i32** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %59 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %63 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %62, i32 0, i32 0
  %64 = call i32 @sdw_cdns_probe(%struct.TYPE_15__* %63)
  %65 = load i32, i32* @intel_prop_read, align 4
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sdw_intel_ops, i32 0, i32 0), align 4
  %66 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %67 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  store %struct.TYPE_13__* @sdw_intel_ops, %struct.TYPE_13__** %69, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %72 = call i32 @platform_set_drvdata(%struct.platform_device* %70, %struct.sdw_intel* %71)
  %73 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %74 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = call i32 @sdw_add_bus_master(%struct.TYPE_14__* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %16
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %187

84:                                               ; preds = %16
  %85 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %86 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %96 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_info(i32* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  store i32 0, i32* %2, align 4
  br label %189

101:                                              ; preds = %84
  %102 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %103 = call i32 @intel_link_power_up(%struct.sdw_intel* %102)
  %104 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %105 = call i32 @intel_shim_init(%struct.sdw_intel* %104)
  %106 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %107 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %106, i32 0, i32 0
  %108 = call i32 @sdw_cdns_init(%struct.TYPE_15__* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %182

112:                                              ; preds = %101
  %113 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %114 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %113, i32 0, i32 0
  %115 = call i32 @sdw_cdns_enable_interrupt(%struct.TYPE_15__* %114)
  store i32 %115, i32* %6, align 4
  %116 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %117 = call i32 @intel_pdi_init(%struct.sdw_intel* %116, %struct.sdw_cdns_stream_config* %4)
  %118 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %119 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.sdw_cdns_stream_config, %struct.sdw_cdns_stream_config* %4, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sdw_cdns_pdi_init(%struct.TYPE_15__* %119, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  br label %182

126:                                              ; preds = %112
  %127 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %128 = call i32 @intel_pdi_ch_update(%struct.sdw_intel* %127)
  %129 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %130 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @sdw_cdns_irq, align 4
  %135 = load i32, i32* @sdw_cdns_thread, align 4
  %136 = load i32, i32* @IRQF_SHARED, align 4
  %137 = load i32, i32* @KBUILD_MODNAME, align 4
  %138 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %139 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %138, i32 0, i32 0
  %140 = call i32 @request_threaded_irq(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, %struct.TYPE_15__* %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %126
  %144 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %145 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %149 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dev_err(i32* %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  br label %182

154:                                              ; preds = %126
  %155 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %156 = call i32 @intel_register_dai(%struct.sdw_intel* %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %154
  %160 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %161 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  %166 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %167 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @snd_soc_unregister_component(i32* %169)
  br label %174

171:                                              ; preds = %154
  %172 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %173 = call i32 @intel_debugfs_init(%struct.sdw_intel* %172)
  store i32 0, i32* %2, align 4
  br label %189

174:                                              ; preds = %159
  %175 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %176 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %175, i32 0, i32 1
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %181 = call i32 @free_irq(i32 %179, %struct.sdw_intel* %180)
  br label %182

182:                                              ; preds = %174, %143, %125, %111
  %183 = load %struct.sdw_intel*, %struct.sdw_intel** %5, align 8
  %184 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = call i32 @sdw_delete_bus_master(%struct.TYPE_14__* %185)
  br label %187

187:                                              ; preds = %182, %79
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %171, %92, %13
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.sdw_intel* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @dev_get_platdata(i32*) #1

declare dso_local i32 @sdw_cdns_probe(%struct.TYPE_15__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sdw_intel*) #1

declare dso_local i32 @sdw_add_bus_master(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @intel_link_power_up(%struct.sdw_intel*) #1

declare dso_local i32 @intel_shim_init(%struct.sdw_intel*) #1

declare dso_local i32 @sdw_cdns_init(%struct.TYPE_15__*) #1

declare dso_local i32 @sdw_cdns_enable_interrupt(%struct.TYPE_15__*) #1

declare dso_local i32 @intel_pdi_init(%struct.sdw_intel*, %struct.sdw_cdns_stream_config*) #1

declare dso_local i32 @sdw_cdns_pdi_init(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @intel_pdi_ch_update(%struct.sdw_intel*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @intel_register_dai(%struct.sdw_intel*) #1

declare dso_local i32 @snd_soc_unregister_component(i32*) #1

declare dso_local i32 @intel_debugfs_init(%struct.sdw_intel*) #1

declare dso_local i32 @free_irq(i32, %struct.sdw_intel*) #1

declare dso_local i32 @sdw_delete_bus_master(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
