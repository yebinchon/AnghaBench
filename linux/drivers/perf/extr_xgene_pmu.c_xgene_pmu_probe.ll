; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.xgene_pmu*)* }
%struct.xgene_pmu = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32* }
%struct.platform_device = type { i32 }
%struct.xgene_pmu_data = type { i32 }
%struct.of_device_id = type { i64 }
%struct.resource = type { i32 }

@CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE\00", align 1
@xgene_pmu_online_cpu = common dso_local global i32 0, align 4
@xgene_pmu_offline_cpu = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@xgene_pmu_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCP_PMU_V3 = common dso_local global i32 0, align 4
@xgene_pmu_v3_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@xgene_pmu_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"X-Gene PMU version %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"ioremap failed for PCP PMU resource\0A\00", align 1
@xgene_pmu_isr = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not request IRQ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unknown MCB/MCU active status\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error %d registering hotplug\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"No PMU perf devices found!\0A\00", align 1
@xgene_pmu_acpi_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_pmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_pmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xgene_pmu_data*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.xgene_pmu*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE, align 4
  %12 = load i32, i32* @xgene_pmu_online_cpu, align 4
  %13 = load i32, i32* @xgene_pmu_offline_cpu, align 4
  %14 = call i32 @cpuhp_setup_state_multi(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %2, align 4
  br label %199

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.xgene_pmu* @devm_kzalloc(i32* %21, i32 64, i32 %22)
  store %struct.xgene_pmu* %23, %struct.xgene_pmu** %6, align 8
  %24 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %25 = icmp ne %struct.xgene_pmu* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %199

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %33 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %32, i32 0, i32 12
  store i32* %31, i32** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.xgene_pmu* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @xgene_pmu_of_match, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call %struct.of_device_id* @of_match_device(i32 %39, i32* %41)
  store %struct.of_device_id* %42, %struct.of_device_id** %5, align 8
  %43 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %44 = icmp ne %struct.of_device_id* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %29
  %46 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.xgene_pmu_data*
  store %struct.xgene_pmu_data* %49, %struct.xgene_pmu_data** %4, align 8
  %50 = load %struct.xgene_pmu_data*, %struct.xgene_pmu_data** %4, align 8
  %51 = getelementptr inbounds %struct.xgene_pmu_data, %struct.xgene_pmu_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %45, %29
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %199

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @PCP_PMU_V3, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %65 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %64, i32 0, i32 5
  store %struct.TYPE_3__* @xgene_pmu_v3_ops, %struct.TYPE_3__** %65, align 8
  br label %69

66:                                               ; preds = %59
  %67 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %68 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %67, i32 0, i32 5
  store %struct.TYPE_3__* @xgene_pmu_ops, %struct.TYPE_3__** %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %71 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %70, i32 0, i32 11
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %74 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %73, i32 0, i32 10
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %77 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %76, i32 0, i32 9
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %80 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %79, i32 0, i32 8
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %84 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %88 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_info(i32* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load i32, i32* @IORESOURCE_MEM, align 4
  %93 = call %struct.resource* @platform_get_resource(%struct.platform_device* %91, i32 %92, i32 0)
  store %struct.resource* %93, %struct.resource** %7, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.resource*, %struct.resource** %7, align 8
  %97 = call i32 @devm_ioremap_resource(i32* %95, %struct.resource* %96)
  %98 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %99 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  %100 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %101 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %69
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %110 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @PTR_ERR(i32 %111)
  store i32 %112, i32* %2, align 4
  br label %199

113:                                              ; preds = %69
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = call i32 @platform_get_irq(%struct.platform_device* %114, i32 0)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %199

121:                                              ; preds = %113
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @xgene_pmu_isr, align 4
  %126 = load i32, i32* @IRQF_NOBALANCING, align 4
  %127 = load i32, i32* @IRQF_NO_THREAD, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @dev_name(i32* %130)
  %132 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %133 = call i32 @devm_request_irq(i32* %123, i32 %124, i32 %125, i32 %128, i32 %131, %struct.xgene_pmu* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %121
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %2, align 4
  br label %199

142:                                              ; preds = %121
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %145 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %147 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %146, i32 0, i32 6
  %148 = call i32 @raw_spin_lock_init(i32* %147)
  %149 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = call i32 @xgene_pmu_probe_active_mcb_mcu_l3c(%struct.xgene_pmu* %149, %struct.platform_device* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %142
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = call i32 @dev_warn(i32* %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %158 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %159 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  %160 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %161 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %160, i32 0, i32 3
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %154, %142
  %163 = load i32, i32* @CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE, align 4
  %164 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %165 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %164, i32 0, i32 4
  %166 = call i32 @cpuhp_state_add_instance(i32 %163, i32* %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load i32, i32* %9, align 4
  %173 = call i32 (i32*, i8*, ...) @dev_err(i32* %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %2, align 4
  br label %199

175:                                              ; preds = %162
  %176 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = call i32 @xgene_pmu_probe_pmu_dev(%struct.xgene_pmu* %176, %struct.platform_device* %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i32 (i32*, i8*, ...) @dev_err(i32* %183, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %193

185:                                              ; preds = %175
  %186 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %187 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %186, i32 0, i32 5
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32 (%struct.xgene_pmu*)*, i32 (%struct.xgene_pmu*)** %189, align 8
  %191 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %192 = call i32 %190(%struct.xgene_pmu* %191)
  store i32 0, i32* %2, align 4
  br label %199

193:                                              ; preds = %181
  %194 = load i32, i32* @CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE, align 4
  %195 = load %struct.xgene_pmu*, %struct.xgene_pmu** %6, align 8
  %196 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %195, i32 0, i32 4
  %197 = call i32 @cpuhp_state_remove_instance(i32 %194, i32* %196)
  %198 = load i32, i32* %9, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %193, %185, %169, %136, %118, %105, %56, %26, %17
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @cpuhp_setup_state_multi(i32, i8*, i32, i32) #1

declare dso_local %struct.xgene_pmu* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xgene_pmu*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.xgene_pmu*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @xgene_pmu_probe_active_mcb_mcu_l3c(%struct.xgene_pmu*, %struct.platform_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @cpuhp_state_add_instance(i32, i32*) #1

declare dso_local i32 @xgene_pmu_probe_pmu_dev(%struct.xgene_pmu*, %struct.platform_device*) #1

declare dso_local i32 @cpuhp_state_remove_instance(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
