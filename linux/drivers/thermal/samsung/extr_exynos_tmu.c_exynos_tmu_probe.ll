; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos_tmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos_tmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.exynos_tmu_data = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vtmu\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to enable vtmu\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Regulator node (vtmu) not found\0A\00", align 1
@exynos_tmu_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"tmu_apbif\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"tmu_triminfo_apbif\00", align 1
@SOC_ARCH_EXYNOS5420_TRIMINFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to get triminfo clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"tmu_sclk\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Failed to get sclk\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Failed to enable sclk\0A\00", align 1
@exynos_sensor_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Failed to register sensor: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Failed to initialize TMU\0A\00", align 1
@exynos_tmu_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"Failed to request irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_tmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_tmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.exynos_tmu_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.exynos_tmu_data* @devm_kzalloc(i32* %7, i32 56, i32 %8)
  store %struct.exynos_tmu_data* %9, %struct.exynos_tmu_data** %4, align 8
  %10 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %11 = icmp ne %struct.exynos_tmu_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %270

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.exynos_tmu_data* %17)
  %19 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %20 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %19, i32 0, i32 8
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i8* @devm_regulator_get_optional(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %26 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %28 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @IS_ERR(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %15
  %33 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %34 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @regulator_enable(i8* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %270

44:                                               ; preds = %32
  br label %60

45:                                               ; preds = %15
  %46 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %47 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  %50 = load i32, i32* @EPROBE_DEFER, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EPROBE_DEFER, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %270

56:                                               ; preds = %45
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_info(i32* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %44
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = call i32 @exynos_map_dt_data(%struct.platform_device* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %257

66:                                               ; preds = %60
  %67 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %68 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %67, i32 0, i32 7
  %69 = load i32, i32* @exynos_tmu_work, align 4
  %70 = call i32 @INIT_WORK(i32* %68, i32 %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i8* @devm_clk_get(i32* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %75 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %77 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %66
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %86 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  store i32 %88, i32* %5, align 4
  br label %257

89:                                               ; preds = %66
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i8* @devm_clk_get(i32* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %94 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %96 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %89
  %101 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %102 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SOC_ARCH_EXYNOS5420_TRIMINFO, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %110 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %111 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %5, align 4
  br label %257

114:                                              ; preds = %100
  br label %127

115:                                              ; preds = %89
  %116 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %117 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @clk_prepare(i8* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %257

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %114
  %128 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %129 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @clk_prepare(i8* %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %245

138:                                              ; preds = %127
  %139 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %140 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %170 [
    i32 129, label %142
    i32 128, label %142
  ]

142:                                              ; preds = %138, %138
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i8* @devm_clk_get(i32* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %146 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %147 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %146, i32 0, i32 5
  store i8* %145, i8** %147, align 8
  %148 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %149 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %148, i32 0, i32 5
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @IS_ERR(i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %142
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 (i32*, i8*, ...) @dev_err(i32* %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %240

157:                                              ; preds = %142
  %158 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %159 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %158, i32 0, i32 5
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @clk_prepare_enable(i8* %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 (i32*, i8*, ...) @dev_err(i32* %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %240

168:                                              ; preds = %157
  br label %169

169:                                              ; preds = %168
  br label %171

170:                                              ; preds = %138
  br label %171

171:                                              ; preds = %170, %169
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %175 = call i8* @thermal_zone_of_sensor_register(i32* %173, i32 0, %struct.exynos_tmu_data* %174, i32* @exynos_sensor_ops)
  %176 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %177 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %176, i32 0, i32 6
  store i8* %175, i8** %177, align 8
  %178 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %179 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %178, i32 0, i32 6
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @IS_ERR(i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %171
  %184 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %185 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %184, i32 0, i32 6
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @PTR_ERR(i8* %186)
  store i32 %187, i32* %5, align 4
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = load i32, i32* %5, align 4
  %191 = call i32 (i32*, i8*, ...) @dev_err(i32* %189, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %190)
  br label %235

192:                                              ; preds = %171
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = call i32 @exynos_tmu_initialize(%struct.platform_device* %193)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = call i32 (i32*, i8*, ...) @dev_err(i32* %199, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %228

201:                                              ; preds = %192
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %205 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @exynos_tmu_irq, align 4
  %208 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %209 = load i32, i32* @IRQF_SHARED, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = call i32 @dev_name(i32* %212)
  %214 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %215 = call i32 @devm_request_irq(i32* %203, i32 %206, i32 %207, i32 %210, i32 %213, %struct.exynos_tmu_data* %214)
  store i32 %215, i32* %5, align 4
  %216 = load i32, i32* %5, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %201
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %222 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i32*, i8*, ...) @dev_err(i32* %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %223)
  br label %228

225:                                              ; preds = %201
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = call i32 @exynos_tmu_control(%struct.platform_device* %226, i32 1)
  store i32 0, i32* %2, align 4
  br label %270

228:                                              ; preds = %218, %197
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %232 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %231, i32 0, i32 6
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @thermal_zone_of_sensor_unregister(i32* %230, i8* %233)
  br label %235

235:                                              ; preds = %228, %183
  %236 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %237 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %236, i32 0, i32 5
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @clk_disable_unprepare(i8* %238)
  br label %240

240:                                              ; preds = %235, %164, %153
  %241 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %242 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %241, i32 0, i32 4
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @clk_unprepare(i8* %243)
  br label %245

245:                                              ; preds = %240, %134
  %246 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %247 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 @IS_ERR(i8* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %245
  %252 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %253 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %252, i32 0, i32 3
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @clk_unprepare(i8* %254)
  br label %256

256:                                              ; preds = %251, %245
  br label %257

257:                                              ; preds = %256, %122, %106, %81, %65
  %258 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %259 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %258, i32 0, i32 2
  %260 = load i8*, i8** %259, align 8
  %261 = call i64 @IS_ERR(i8* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %257
  %264 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %265 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @regulator_disable(i8* %266)
  br label %268

268:                                              ; preds = %263, %257
  %269 = load i32, i32* %5, align 4
  store i32 %269, i32* %2, align 4
  br label %270

270:                                              ; preds = %268, %225, %53, %39, %12
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local %struct.exynos_tmu_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.exynos_tmu_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @exynos_map_dt_data(%struct.platform_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i8* @thermal_zone_of_sensor_register(i32*, i32, %struct.exynos_tmu_data*, i32*) #1

declare dso_local i32 @exynos_tmu_initialize(%struct.platform_device*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.exynos_tmu_data*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @exynos_tmu_control(%struct.platform_device*, i32) #1

declare dso_local i32 @thermal_zone_of_sensor_unregister(i32*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @clk_unprepare(i8*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
