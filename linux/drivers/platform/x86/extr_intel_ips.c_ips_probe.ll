; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.ips_driver = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32*, i32 }

@ips_blacklist = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"IPS not supported on this CPU\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"can't enable PCI device, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to map thermal regs, aborting\0A\00", align 1
@THM_TSE = common dso_local global i32 0, align 4
@TSE_EN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"thermal device not enabled (0x%02x), aborting\0A\00", align 1
@THM_TRC = common dso_local global i32 0, align 4
@TRC_CORE1_EN = common dso_local global i32 0, align 4
@TRC_CORE_PWR = common dso_local global i32 0, align 4
@TRC_MCH_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"thermal reporting for required devices not enabled, aborting\0A\00", align 1
@TRC_CORE2_EN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"max cpu power clamp: %dW\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"max core power clamp: %dW\0A\00", align 1
@THM_PSC = common dso_local global i32 0, align 4
@PSP_PBRT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [70 x i8] c"failed to get i915 symbols, graphics turbo disabled until i915 loads\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"graphics turbo enabled\0A\00", align 1
@PLATFORM_INFO = common dso_local global i32 0, align 4
@PLATFORM_TDP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"platform indicates TDP override unavailable, aborting\0A\00", align 1
@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@ips_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"ips\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"request irq failed, aborting\0A\00", align 1
@THM_TSPIEN = common dso_local global i32 0, align 4
@TSPIEN_AUX2_LOHI = common dso_local global i32 0, align 4
@TSPIEN_CRIT_LOHI = common dso_local global i32 0, align 4
@TSPIEN_HOT_LOHI = common dso_local global i32 0, align 4
@TSPIEN_AUX_LOHI = common dso_local global i32 0, align 4
@THM_TEN = common dso_local global i32 0, align 4
@TEN_UPDATE_EN = common dso_local global i32 0, align 4
@THM_CTA = common dso_local global i32 0, align 4
@THM_PTA = common dso_local global i32 0, align 4
@THM_MGTA = common dso_local global i32 0, align 4
@TURBO_POWER_CURRENT_LIMIT = common dso_local global i32 0, align 4
@ips_adjust = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"ips-adjust\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"failed to create thermal adjust thread, aborting\0A\00", align 1
@ips_monitor = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"ips-monitor\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"failed to create thermal monitor thread, aborting\0A\00", align 1
@HTS_PCPL_SHIFT = common dso_local global i32 0, align 4
@HTS_PTL_SHIFT = common dso_local global i32 0, align 4
@HTS_NVV = common dso_local global i32 0, align 4
@HTS2_PRST_RUNNING = common dso_local global i32 0, align 4
@HTS2_PRST_SHIFT = common dso_local global i32 0, align 4
@THM_HTSHI = common dso_local global i32 0, align 4
@THM_HTS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"IPS driver initialized, MCP temp limit %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ips_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ips_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @ips_blacklist, align 4
  %15 = call i64 @dmi_check_system(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %319

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.ips_driver* @devm_kzalloc(i32* %22, i32 96, i32 %23)
  store %struct.ips_driver* %24, %struct.ips_driver** %7, align 8
  %25 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %26 = icmp ne %struct.ips_driver* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %319

30:                                               ; preds = %20
  %31 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %32 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %31, i32 0, i32 17
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %37 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %36, i32 0, i32 16
  store i32* %35, i32** %37, align 8
  %38 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %39 = call i32 @ips_detect_cpu(%struct.ips_driver* %38)
  %40 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %41 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %40, i32 0, i32 15
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %43 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %42, i32 0, i32 15
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %30
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_info(i32* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %319

52:                                               ; preds = %30
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i32 @pcim_enable_device(%struct.pci_dev* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %319

62:                                               ; preds = %52
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i32 @pci_name(%struct.pci_dev* %64)
  %66 = call i32 @pcim_iomap_regions(%struct.pci_dev* %63, i32 1, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %319

74:                                               ; preds = %62
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i32* @pcim_iomap_table(%struct.pci_dev* %75)
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %80 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %79, i32 0, i32 14
  store i32 %78, i32* %80, align 8
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %83 = call i32 @pci_set_drvdata(%struct.pci_dev* %81, %struct.ips_driver* %82)
  %84 = load i32, i32* @THM_TSE, align 4
  %85 = call i64 @thm_readb(i32 %84)
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @TSE_EN, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %74
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %13, align 8
  %93 = call i32 (i32*, i8*, ...) @dev_err(i32* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* @ENXIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %319

96:                                               ; preds = %74
  %97 = load i32, i32* @THM_TRC, align 4
  %98 = call i8* @thm_readw(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* @TRC_CORE1_EN, align 4
  %101 = load i32, i32* @TRC_CORE_PWR, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @TRC_MCH_EN, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %96
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* @ENXIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %319

116:                                              ; preds = %96
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @TRC_CORE2_EN, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %123 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %121, %116
  %125 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %126 = call i32 @update_turbo_limits(%struct.ips_driver* %125)
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 0
  %129 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %130 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %131, 10
  %133 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 0
  %136 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %137 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sdiv i32 %138, 10
  %140 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @THM_PSC, align 4
  %142 = call i32 @thm_readl(i32 %141)
  %143 = load i32, i32* @PSP_PBRT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %124
  %147 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %148 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %147, i32 0, i32 3
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %124
  %150 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %151 = call i32 @ips_get_i915_syms(%struct.ips_driver* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %149
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %154, i32 0, i32 0
  %156 = call i32 (i32*, i8*, ...) @dev_info(i32* %155, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  %157 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %158 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %157, i32 0, i32 4
  store i32 0, i32* %158, align 8
  br label %165

159:                                              ; preds = %149
  %160 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %161 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %160, i32 0, i32 0
  %162 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %163 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %164 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %163, i32 0, i32 4
  store i32 1, i32* %164, align 8
  br label %165

165:                                              ; preds = %159, %153
  %166 = load i32, i32* @PLATFORM_INFO, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @rdmsrl(i32 %166, i32 %167)
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @PLATFORM_TDP, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %165
  %174 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %175 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %174, i32 0, i32 0
  %176 = call i32 (i32*, i8*, ...) @dev_err(i32* %175, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %177 = load i32, i32* @ENODEV, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %319

179:                                              ; preds = %165
  %180 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %181 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  %182 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %180, i32 1, i32 1, i32 %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %3, align 4
  br label %319

187:                                              ; preds = %179
  %188 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %189 = call i32 @pci_irq_vector(%struct.pci_dev* %188, i32 0)
  %190 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %191 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 8
  %192 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %193 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ips_irq_handler, align 4
  %196 = load i32, i32* @IRQF_SHARED, align 4
  %197 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %198 = call i32 @request_irq(i32 %194, i32 %195, i32 %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.ips_driver* %197)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %187
  %202 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %203 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %202, i32 0, i32 0
  %204 = call i32 (i32*, i8*, ...) @dev_err(i32* %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %3, align 4
  br label %319

206:                                              ; preds = %187
  %207 = load i32, i32* @THM_TSPIEN, align 4
  %208 = load i32, i32* @TSPIEN_AUX2_LOHI, align 4
  %209 = load i32, i32* @TSPIEN_CRIT_LOHI, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @TSPIEN_HOT_LOHI, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @TSPIEN_AUX_LOHI, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @thm_writeb(i32 %207, i32 %214)
  %216 = load i32, i32* @THM_TEN, align 4
  %217 = load i32, i32* @TEN_UPDATE_EN, align 4
  %218 = call i32 @thm_writeb(i32 %216, i32 %217)
  %219 = load i32, i32* @THM_CTA, align 4
  %220 = call i8* @thm_readw(i32 %219)
  %221 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %222 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %221, i32 0, i32 13
  store i8* %220, i8** %222, align 8
  %223 = load i32, i32* @THM_PTA, align 4
  %224 = call i8* @thm_readw(i32 %223)
  %225 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %226 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %225, i32 0, i32 12
  store i8* %224, i8** %226, align 8
  %227 = load i32, i32* @THM_MGTA, align 4
  %228 = call i8* @thm_readw(i32 %227)
  %229 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %230 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %229, i32 0, i32 11
  store i8* %228, i8** %230, align 8
  %231 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %232 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %233 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @rdmsrl(i32 %231, i32 %234)
  %236 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %237 = call i32 @ips_disable_cpu_turbo(%struct.ips_driver* %236)
  %238 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %239 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %238, i32 0, i32 6
  store i32 0, i32* %239, align 8
  %240 = load i32, i32* @ips_adjust, align 4
  %241 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %242 = call i32 @kthread_create(i32 %240, %struct.ips_driver* %241, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %243 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %244 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %243, i32 0, i32 9
  store i32 %242, i32* %244, align 4
  %245 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %246 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %245, i32 0, i32 9
  %247 = load i32, i32* %246, align 4
  %248 = call i64 @IS_ERR(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %206
  %251 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %252 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %251, i32 0, i32 0
  %253 = call i32 (i32*, i8*, ...) @dev_err(i32* %252, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %254 = load i32, i32* @ENOMEM, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %9, align 4
  br label %310

256:                                              ; preds = %206
  %257 = load i32, i32* @ips_monitor, align 4
  %258 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %259 = call i32 @kthread_run(i32 %257, %struct.ips_driver* %258, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %260 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %261 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %260, i32 0, i32 10
  store i32 %259, i32* %261, align 8
  %262 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %263 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %262, i32 0, i32 10
  %264 = load i32, i32* %263, align 8
  %265 = call i64 @IS_ERR(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %256
  %268 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %269 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %268, i32 0, i32 0
  %270 = call i32 (i32*, i8*, ...) @dev_err(i32* %269, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  %271 = load i32, i32* @ENOMEM, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %9, align 4
  br label %305

273:                                              ; preds = %256
  %274 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %275 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @HTS_PCPL_SHIFT, align 4
  %278 = shl i32 %276, %277
  %279 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %280 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @HTS_PTL_SHIFT, align 4
  %283 = shl i32 %281, %282
  %284 = or i32 %278, %283
  %285 = load i32, i32* @HTS_NVV, align 4
  %286 = or i32 %284, %285
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* @HTS2_PRST_RUNNING, align 4
  %288 = load i32, i32* @HTS2_PRST_SHIFT, align 4
  %289 = shl i32 %287, %288
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* @THM_HTSHI, align 4
  %291 = load i32, i32* %10, align 4
  %292 = call i32 @thm_writew(i32 %290, i32 %291)
  %293 = load i32, i32* @THM_HTS, align 4
  %294 = load i32, i32* %8, align 4
  %295 = call i32 @thm_writel(i32 %293, i32 %294)
  %296 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %297 = call i32 @ips_debugfs_init(%struct.ips_driver* %296)
  %298 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %299 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %298, i32 0, i32 0
  %300 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %301 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = call i32 (i32*, i8*, ...) @dev_info(i32* %299, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* %9, align 4
  store i32 %304, i32* %3, align 4
  br label %319

305:                                              ; preds = %267
  %306 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %307 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %306, i32 0, i32 9
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @kthread_stop(i32 %308)
  br label %310

310:                                              ; preds = %305, %250
  %311 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %312 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %311, i32 0, i32 8
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.ips_driver*, %struct.ips_driver** %7, align 8
  %315 = call i32 @free_irq(i32 %313, %struct.ips_driver* %314)
  %316 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %317 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %316)
  %318 = load i32, i32* %9, align 4
  store i32 %318, i32* %3, align 4
  br label %319

319:                                              ; preds = %310, %273, %201, %185, %173, %110, %89, %69, %57, %46, %27, %17
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local %struct.ips_driver* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ips_detect_cpu(%struct.ips_driver*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ips_driver*) #1

declare dso_local i64 @thm_readb(i32) #1

declare dso_local i8* @thm_readw(i32) #1

declare dso_local i32 @update_turbo_limits(%struct.ips_driver*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @thm_readl(i32) #1

declare dso_local i32 @ips_get_i915_syms(%struct.ips_driver*) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ips_driver*) #1

declare dso_local i32 @thm_writeb(i32, i32) #1

declare dso_local i32 @ips_disable_cpu_turbo(%struct.ips_driver*) #1

declare dso_local i32 @kthread_create(i32, %struct.ips_driver*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kthread_run(i32, %struct.ips_driver*, i8*) #1

declare dso_local i32 @thm_writew(i32, i32) #1

declare dso_local i32 @thm_writel(i32, i32) #1

declare dso_local i32 @ips_debugfs_init(%struct.ips_driver*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @free_irq(i32, %struct.ips_driver*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
