; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.arche_platform_drvdata = type { i32, %struct.TYPE_2__, i32, i8*, i32, %struct.device*, i32, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"svc,reset-active-high\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"svc,reset\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to request svc-reset GPIO: %d\0A\00", align 1
@ARCHE_PLATFORM_STATE_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"svc,sysboot\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to request sysboot0 GPIO: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"svc,refclk-req\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"failed to request svc-clk-req GPIO: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"svc_ref_clk\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to get svc_ref_clk: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Number of APB's available - %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"svc,wake-detect\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Failed requesting wake_detect GPIO: %d\0A\00", align 1
@WD_STATE_IDLE = common dso_local global i32 0, align 4
@arche_platform_wd_irq = common dso_local global i32 0, align 4
@arche_platform_wd_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"failed to request wake detect IRQ %d\0A\00", align 1
@dev_attr_state = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"failed to create state file in sysfs\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"failed to populate child nodes %d\0A\00", align 1
@arche_platform_pm_notifier = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"failed to register pm notifier %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"arche,init-off\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Failed to cold boot svc %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Device registered successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arche_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arche_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arche_platform_drvdata*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.arche_platform_drvdata* @devm_kzalloc(%struct.device* %15, i32 88, i32 %16)
  store %struct.arche_platform_drvdata* %17, %struct.arche_platform_drvdata** %4, align 8
  %18 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %19 = icmp ne %struct.arche_platform_drvdata* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %266

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call i64 @of_property_read_bool(%struct.device_node* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %27 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %26, i32 0, i32 11
  store i64 %25, i64* %27, align 8
  %28 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %29 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %28, i32 0, i32 11
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  store i32 %33, i32* %8, align 4
  br label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @GPIOD_OUT_LOW, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @devm_gpiod_get(%struct.device* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %41 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %40, i32 0, i32 10
  store i8* %39, i8** %41, align 8
  %42 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %43 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %42, i32 0, i32 10
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %49 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %48, i32 0, i32 10
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %266

56:                                               ; preds = %36
  %57 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %58 = load i32, i32* @ARCHE_PLATFORM_STATE_OFF, align 4
  %59 = call i32 @arche_platform_set_state(%struct.arche_platform_drvdata* %57, i32 %58)
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %62 = call i8* @devm_gpiod_get(%struct.device* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %64 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %63, i32 0, i32 9
  store i8* %62, i8** %64, align 8
  %65 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %66 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %65, i32 0, i32 9
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %56
  %71 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %72 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %71, i32 0, i32 9
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %266

79:                                               ; preds = %56
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load i32, i32* @GPIOD_IN, align 4
  %82 = call i8* @devm_gpiod_get(%struct.device* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %84 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %86 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %85, i32 0, i32 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @IS_ERR(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %92 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %91, i32 0, i32 8
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %7, align 4
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %266

99:                                               ; preds = %79
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = call i8* @devm_clk_get(%struct.device* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %102 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %103 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %102, i32 0, i32 7
  store i8* %101, i8** %103, align 8
  %104 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %105 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %104, i32 0, i32 7
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @IS_ERR(i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %99
  %110 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %111 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %110, i32 0, i32 7
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %7, align 4
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %266

118:                                              ; preds = %99
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.arche_platform_drvdata* %120)
  %122 = load %struct.device_node*, %struct.device_node** %6, align 8
  %123 = call i32 @of_get_child_count(%struct.device_node* %122)
  %124 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %125 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %128 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %129)
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = load i32, i32* @GPIOD_IN, align 4
  %133 = call i8* @devm_gpiod_get(%struct.device* %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  %134 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %135 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %137 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @IS_ERR(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %118
  %142 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %143 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @PTR_ERR(i8* %144)
  store i32 %145, i32* %7, align 4
  %146 = load %struct.device*, %struct.device** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %2, align 4
  br label %266

150:                                              ; preds = %118
  %151 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %152 = load i32, i32* @WD_STATE_IDLE, align 4
  %153 = call i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata* %151, i32 %152)
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %157 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %156, i32 0, i32 5
  store %struct.device* %155, %struct.device** %157, align 8
  %158 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %159 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %158, i32 0, i32 4
  %160 = call i32 @spin_lock_init(i32* %159)
  %161 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %162 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %161, i32 0, i32 0
  %163 = call i32 @mutex_init(i32* %162)
  %164 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %165 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %164, i32 0, i32 3
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @gpiod_to_irq(i8* %166)
  %168 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %169 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.device*, %struct.device** %5, align 8
  %171 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %172 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @arche_platform_wd_irq, align 4
  %175 = load i32, i32* @arche_platform_wd_irq_thread, align 4
  %176 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %177 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @IRQF_ONESHOT, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.device*, %struct.device** %5, align 8
  %182 = call i32 @dev_name(%struct.device* %181)
  %183 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %184 = call i32 @devm_request_threaded_irq(%struct.device* %170, i32 %173, i32 %174, i32 %175, i32 %180, i32 %182, %struct.arche_platform_drvdata* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %150
  %188 = load %struct.device*, %struct.device** %5, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %188, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %7, align 4
  store i32 %191, i32* %2, align 4
  br label %266

192:                                              ; preds = %150
  %193 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %194 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @disable_irq(i32 %195)
  %197 = load %struct.device*, %struct.device** %5, align 8
  %198 = call i32 @device_create_file(%struct.device* %197, i32* @dev_attr_state)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %192
  %202 = load %struct.device*, %struct.device** %5, align 8
  %203 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %202, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %2, align 4
  br label %266

205:                                              ; preds = %192
  %206 = load %struct.device_node*, %struct.device_node** %6, align 8
  %207 = load %struct.device*, %struct.device** %5, align 8
  %208 = call i32 @of_platform_populate(%struct.device_node* %206, i32* null, i32* null, %struct.device* %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load %struct.device*, %struct.device** %5, align 8
  %213 = load i32, i32* %7, align 4
  %214 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %212, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %213)
  br label %261

215:                                              ; preds = %205
  %216 = load i32, i32* @arche_platform_pm_notifier, align 4
  %217 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %218 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 4
  %220 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %221 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %220, i32 0, i32 1
  %222 = call i32 @register_pm_notifier(%struct.TYPE_2__* %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %215
  %226 = load %struct.device*, %struct.device** %5, align 8
  %227 = load i32, i32* %7, align 4
  %228 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %226, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %227)
  br label %261

229:                                              ; preds = %215
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.device, %struct.device* %231, i32 0, i32 0
  %233 = load %struct.device_node*, %struct.device_node** %232, align 8
  %234 = call i64 @of_property_read_bool(%struct.device_node* %233, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %254, label %236

236:                                              ; preds = %229
  %237 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %238 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %237, i32 0, i32 0
  %239 = call i32 @mutex_lock(i32* %238)
  %240 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %241 = call i32 @arche_platform_coldboot_seq(%struct.arche_platform_drvdata* %240)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %236
  %245 = load %struct.device*, %struct.device** %5, align 8
  %246 = load i32, i32* %7, align 4
  %247 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %246)
  br label %257

248:                                              ; preds = %236
  %249 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %250 = call i32 @arche_platform_wd_irq_en(%struct.arche_platform_drvdata* %249)
  %251 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %252 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %251, i32 0, i32 0
  %253 = call i32 @mutex_unlock(i32* %252)
  br label %254

254:                                              ; preds = %248, %229
  %255 = load %struct.device*, %struct.device** %5, align 8
  %256 = call i32 @dev_info(%struct.device* %255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %266

257:                                              ; preds = %244
  %258 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %4, align 8
  %259 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %258, i32 0, i32 0
  %260 = call i32 @mutex_unlock(i32* %259)
  br label %261

261:                                              ; preds = %257, %225, %211
  %262 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %263 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %262, i32 0, i32 0
  %264 = call i32 @device_remove_file(%struct.device* %263, i32* @dev_attr_state)
  %265 = load i32, i32* %7, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %261, %254, %201, %187, %141, %109, %90, %70, %47, %20
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local %struct.arche_platform_drvdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @arche_platform_set_state(%struct.arche_platform_drvdata*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.arche_platform_drvdata*) #1

declare dso_local i32 @of_get_child_count(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gpiod_to_irq(i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.arche_platform_drvdata*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32*, %struct.device*) #1

declare dso_local i32 @register_pm_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @arche_platform_coldboot_seq(%struct.arche_platform_drvdata*) #1

declare dso_local i32 @arche_platform_wd_irq_en(%struct.arche_platform_drvdata*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
