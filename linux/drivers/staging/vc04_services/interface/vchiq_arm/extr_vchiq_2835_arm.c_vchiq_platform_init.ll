; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_2835_arm.c_vchiq_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_2835_arm.c_vchiq_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.vchiq_state = type { i32 }
%struct.vchiq_drvdata = type { i32, %struct.rpi_firmware* }
%struct.rpi_firmware = type { i32 }
%struct.vchiq_slot_zero = type { i32* }
%struct.resource = type { i32 }

@g_cache_line_size = common dso_local global i32 0, align 4
@g_fragments_size = common dso_local global i32 0, align 4
@TOTAL_SLOTS = common dso_local global i32 0, align 4
@VCHIQ_SLOT_SIZE = common dso_local global i32 0, align 4
@MAX_FRAGMENTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not allocate DMA memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VCHIQ_PLATFORM_FRAGMENTS_OFFSET_IDX = common dso_local global i64 0, align 8
@VCHIQ_PLATFORM_FRAGMENTS_COUNT_IDX = common dso_local global i64 0, align 8
@g_fragments_base = common dso_local global i8* null, align 8
@g_free_fragments = common dso_local global i8* null, align 8
@g_free_fragments_sema = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@g_regs = common dso_local global i32 0, align 4
@vchiq_doorbell_irq = common dso_local global i32 0, align 4
@IRQF_IRQPOLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"VCHIQ doorbell\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to register irq=%d\0A\00", align 1
@RPI_FIRMWARE_VCHIQ_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to set channelbase\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@g_dev = common dso_local global %struct.device* null, align 8
@vchiq_arm_log_level = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"vchiq_init - done (slots %pK, phys %pad)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_platform_init(%struct.platform_device* %0, %struct.vchiq_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.vchiq_state*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.vchiq_drvdata*, align 8
  %8 = alloca %struct.rpi_firmware*, align 8
  %9 = alloca %struct.vchiq_slot_zero*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.vchiq_state* %1, %struct.vchiq_state** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = call %struct.vchiq_drvdata* @platform_get_drvdata(%struct.platform_device* %21)
  store %struct.vchiq_drvdata* %22, %struct.vchiq_drvdata** %7, align 8
  %23 = load %struct.vchiq_drvdata*, %struct.vchiq_drvdata** %7, align 8
  %24 = getelementptr inbounds %struct.vchiq_drvdata, %struct.vchiq_drvdata* %23, i32 0, i32 1
  %25 = load %struct.rpi_firmware*, %struct.rpi_firmware** %24, align 8
  store %struct.rpi_firmware* %25, %struct.rpi_firmware** %8, align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @DMA_BIT_MASK(i32 32)
  %28 = call i32 @dma_set_mask_and_coherent(%struct.device* %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %3, align 4
  br label %202

33:                                               ; preds = %2
  %34 = load %struct.vchiq_drvdata*, %struct.vchiq_drvdata** %7, align 8
  %35 = getelementptr inbounds %struct.vchiq_drvdata, %struct.vchiq_drvdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* @g_cache_line_size, align 4
  %37 = load i32, i32* @g_cache_line_size, align 4
  %38 = mul nsw i32 2, %37
  store i32 %38, i32* @g_fragments_size, align 4
  %39 = load i32, i32* @TOTAL_SLOTS, align 4
  %40 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @PAGE_ALIGN(i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* @g_fragments_size, align 4
  %44 = load i32, i32* @MAX_FRAGMENTS, align 4
  %45 = mul nsw i32 %43, %44
  %46 = call i32 @PAGE_ALIGN(i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @dmam_alloc_coherent(%struct.device* %47, i32 %50, i64* %12, i32 %51)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %33
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %202

60:                                               ; preds = %33
  %61 = load i8*, i8** %11, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = and i64 %62, %65
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call %struct.vchiq_slot_zero* @vchiq_init_slots(i8* %70, i32 %71)
  store %struct.vchiq_slot_zero* %72, %struct.vchiq_slot_zero** %9, align 8
  %73 = load %struct.vchiq_slot_zero*, %struct.vchiq_slot_zero** %9, align 8
  %74 = icmp ne %struct.vchiq_slot_zero* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %60
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %202

78:                                               ; preds = %60
  %79 = load i64, i64* %12, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.vchiq_slot_zero*, %struct.vchiq_slot_zero** %9, align 8
  %84 = getelementptr inbounds %struct.vchiq_slot_zero, %struct.vchiq_slot_zero* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @VCHIQ_PLATFORM_FRAGMENTS_OFFSET_IDX, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* @MAX_FRAGMENTS, align 4
  %89 = load %struct.vchiq_slot_zero*, %struct.vchiq_slot_zero** %9, align 8
  %90 = getelementptr inbounds %struct.vchiq_slot_zero, %struct.vchiq_slot_zero* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @VCHIQ_PLATFORM_FRAGMENTS_COUNT_IDX, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8* %97, i8** @g_fragments_base, align 8
  %98 = load i8*, i8** @g_fragments_base, align 8
  store i8* %98, i8** @g_free_fragments, align 8
  store i32 0, i32* %18, align 4
  br label %99

99:                                               ; preds = %119, %78
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* @MAX_FRAGMENTS, align 4
  %102 = sub nsw i32 %101, 1
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load i8*, i8** @g_fragments_base, align 8
  %106 = load i32, i32* %18, align 4
  %107 = add nsw i32 %106, 1
  %108 = load i32, i32* @g_fragments_size, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %105, i64 %110
  %112 = load i8*, i8** @g_fragments_base, align 8
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* @g_fragments_size, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = bitcast i8* %117 to i8**
  store i8* %111, i8** %118, align 8
  br label %119

119:                                              ; preds = %104
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %18, align 4
  br label %99

122:                                              ; preds = %99
  %123 = load i8*, i8** @g_fragments_base, align 8
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @g_fragments_size, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %123, i64 %127
  %129 = bitcast i8* %128 to i8**
  store i8* null, i8** %129, align 8
  %130 = load i32, i32* @MAX_FRAGMENTS, align 4
  %131 = call i32 @sema_init(i32* @g_free_fragments_sema, i32 %130)
  %132 = load %struct.vchiq_state*, %struct.vchiq_state** %5, align 8
  %133 = load %struct.vchiq_slot_zero*, %struct.vchiq_slot_zero** %9, align 8
  %134 = call i64 @vchiq_init_state(%struct.vchiq_state* %132, %struct.vchiq_slot_zero* %133)
  %135 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %122
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %202

140:                                              ; preds = %122
  %141 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %142 = load i32, i32* @IORESOURCE_MEM, align 4
  %143 = call %struct.resource* @platform_get_resource(%struct.platform_device* %141, i32 %142, i32 0)
  store %struct.resource* %143, %struct.resource** %10, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load %struct.resource*, %struct.resource** %10, align 8
  %147 = call i32 @devm_ioremap_resource(%struct.device* %145, %struct.resource* %146)
  store i32 %147, i32* @g_regs, align 4
  %148 = load i32, i32* @g_regs, align 4
  %149 = call i64 @IS_ERR(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %140
  %152 = load i32, i32* @g_regs, align 4
  %153 = call i32 @PTR_ERR(i32 %152)
  store i32 %153, i32* %3, align 4
  br label %202

154:                                              ; preds = %140
  %155 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %156 = call i32 @platform_get_irq(%struct.platform_device* %155, i32 0)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %17, align 4
  store i32 %160, i32* %3, align 4
  br label %202

161:                                              ; preds = %154
  %162 = load %struct.device*, %struct.device** %6, align 8
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* @vchiq_doorbell_irq, align 4
  %165 = load i32, i32* @IRQF_IRQPOLL, align 4
  %166 = load %struct.vchiq_state*, %struct.vchiq_state** %5, align 8
  %167 = call i32 @devm_request_irq(%struct.device* %162, i32 %163, i32 %164, i32 %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.vchiq_state* %166)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %161
  %171 = load %struct.device*, %struct.device** %6, align 8
  %172 = load i32, i32* %17, align 4
  %173 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %171, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %16, align 4
  store i32 %174, i32* %3, align 4
  br label %202

175:                                              ; preds = %161
  %176 = load i64, i64* %12, align 8
  store i64 %176, i64* %13, align 8
  %177 = load %struct.rpi_firmware*, %struct.rpi_firmware** %8, align 8
  %178 = load i32, i32* @RPI_FIRMWARE_VCHIQ_INIT, align 4
  %179 = call i32 @rpi_firmware_property(%struct.rpi_firmware* %177, i32 %178, i64* %13, i32 8)
  store i32 %179, i32* %16, align 4
  %180 = load i32, i32* %16, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %175
  %183 = load i64, i64* %13, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %182, %175
  %186 = load %struct.device*, %struct.device** %6, align 8
  %187 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %194

191:                                              ; preds = %185
  %192 = load i32, i32* @ENXIO, align 4
  %193 = sub nsw i32 0, %192
  br label %194

194:                                              ; preds = %191, %190
  %195 = phi i32 [ %188, %190 ], [ %193, %191 ]
  store i32 %195, i32* %3, align 4
  br label %202

196:                                              ; preds = %182
  %197 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %197, %struct.device** @g_dev, align 8
  %198 = load i32, i32* @vchiq_arm_log_level, align 4
  %199 = load %struct.vchiq_slot_zero*, %struct.vchiq_slot_zero** %9, align 8
  %200 = call i32 @vchiq_log_info(i32 %198, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.vchiq_slot_zero* %199, i64* %12)
  %201 = call i32 (...) @vchiq_call_connected_callbacks()
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %196, %194, %170, %159, %151, %137, %75, %55, %31
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.vchiq_drvdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i8* @dmam_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.vchiq_slot_zero* @vchiq_init_slots(i8*, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i64 @vchiq_init_state(%struct.vchiq_state*, %struct.vchiq_slot_zero*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.vchiq_state*) #1

declare dso_local i32 @rpi_firmware_property(%struct.rpi_firmware*, i32, i64*, i32) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, %struct.vchiq_slot_zero*, i64*) #1

declare dso_local i32 @vchiq_call_connected_callbacks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
