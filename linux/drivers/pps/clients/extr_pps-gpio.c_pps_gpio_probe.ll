; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.pps_gpio_platform_data* }
%struct.pps_gpio_platform_data = type { i32, i64, i32, i64, i32 }
%struct.pps_gpio_device_data = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__, i64, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to map GPIO to IRQ: %d\0A\00", align 1
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_OFFSETASSERT = common dso_local global i32 0, align 4
@PPS_ECHOASSERT = common dso_local global i32 0, align 4
@PPS_CANWAIT = common dso_local global i32 0, align 4
@PPS_TSFMT_TSPEC = common dso_local global i32 0, align 4
@PPS_CAPTURECLEAR = common dso_local global i32 0, align 4
@PPS_OFFSETCLEAR = common dso_local global i32 0, align 4
@PPS_ECHOCLEAR = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@PPS_MAX_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@pps_gpio_echo = common dso_local global i32 0, align 4
@pps_gpio_echo_timer_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to register IRQ %d as PPS source\0A\00", align 1
@pps_gpio_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to acquire IRQ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Registered IRQ %d as PPS source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pps_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pps_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pps_gpio_device_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pps_gpio_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.pps_gpio_platform_data*, %struct.pps_gpio_platform_data** %10, align 8
  store %struct.pps_gpio_platform_data* %11, %struct.pps_gpio_platform_data** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pps_gpio_device_data* @devm_kzalloc(%struct.TYPE_11__* %13, i32 72, i32 %14)
  store %struct.pps_gpio_device_data* %15, %struct.pps_gpio_device_data** %4, align 8
  %16 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %17 = icmp ne %struct.pps_gpio_device_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %221

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.pps_gpio_device_data* %23)
  %25 = load %struct.pps_gpio_platform_data*, %struct.pps_gpio_platform_data** %7, align 8
  %26 = icmp ne %struct.pps_gpio_platform_data* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load %struct.pps_gpio_platform_data*, %struct.pps_gpio_platform_data** %7, align 8
  %29 = getelementptr inbounds %struct.pps_gpio_platform_data, %struct.pps_gpio_platform_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %32 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pps_gpio_platform_data*, %struct.pps_gpio_platform_data** %7, align 8
  %34 = getelementptr inbounds %struct.pps_gpio_platform_data, %struct.pps_gpio_platform_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %37 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %36, i32 0, i32 7
  store i64 %35, i64* %37, align 8
  %38 = load %struct.pps_gpio_platform_data*, %struct.pps_gpio_platform_data** %7, align 8
  %39 = getelementptr inbounds %struct.pps_gpio_platform_data, %struct.pps_gpio_platform_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %42 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pps_gpio_platform_data*, %struct.pps_gpio_platform_data** %7, align 8
  %44 = getelementptr inbounds %struct.pps_gpio_platform_data, %struct.pps_gpio_platform_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %47 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.pps_gpio_platform_data*, %struct.pps_gpio_platform_data** %7, align 8
  %49 = getelementptr inbounds %struct.pps_gpio_platform_data, %struct.pps_gpio_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %52 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  br label %62

53:                                               ; preds = %21
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i32 @pps_gpio_setup(%struct.platform_device* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %221

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %27
  %63 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %64 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @gpiod_to_irq(i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 2
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dev_err(%struct.TYPE_11__* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %221

76:                                               ; preds = %62
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %79 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %81 = load i32, i32* @PPS_OFFSETASSERT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @PPS_ECHOASSERT, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @PPS_CANWAIT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @PPS_TSFMT_TSPEC, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %90 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %93 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %76
  %97 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  %98 = load i32, i32* @PPS_OFFSETCLEAR, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @PPS_ECHOCLEAR, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %103 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %96, %76
  %108 = load i32, i32* @THIS_MODULE, align 4
  %109 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %110 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 4
  %112 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %113 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* @PPS_MAX_NAME_LEN, align 8
  %117 = sub nsw i64 %116, 1
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @snprintf(i32 %115, i64 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %120, i32 %123)
  %125 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %126 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %107
  %130 = load i32, i32* @pps_gpio_echo, align 4
  %131 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %132 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 8
  %134 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %135 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @msecs_to_jiffies(i32 %136)
  %138 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %139 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  %140 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %141 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %140, i32 0, i32 4
  %142 = load i32, i32* @pps_gpio_echo_timer_callback, align 4
  %143 = call i32 @timer_setup(i32* %141, i32 %142, i32 0)
  br label %144

144:                                              ; preds = %129, %107
  %145 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %146 = load i32, i32* @PPS_OFFSETASSERT, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %6, align 4
  %148 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %149 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  %154 = load i32, i32* @PPS_OFFSETCLEAR, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %152, %144
  %159 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %160 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %159, i32 0, i32 2
  %161 = load i32, i32* %6, align 4
  %162 = call %struct.TYPE_9__* @pps_register_source(%struct.TYPE_10__* %160, i32 %161)
  %163 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %164 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %163, i32 0, i32 1
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %164, align 8
  %165 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %166 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %165, i32 0, i32 1
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = call i64 @IS_ERR(%struct.TYPE_9__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %158
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 2
  %173 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %174 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @dev_err(%struct.TYPE_11__* %172, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  %177 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %178 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %177, i32 0, i32 1
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = call i32 @PTR_ERR(%struct.TYPE_9__* %179)
  store i32 %180, i32* %2, align 4
  br label %221

181:                                              ; preds = %158
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 2
  %184 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %185 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @pps_gpio_irq_handler, align 4
  %188 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %189 = call i32 @get_irqf_trigger_flags(%struct.pps_gpio_device_data* %188)
  %190 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %191 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %195 = call i32 @devm_request_irq(%struct.TYPE_11__* %183, i32 %186, i32 %187, i32 %189, i32 %193, %struct.pps_gpio_device_data* %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %181
  %199 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %200 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %199, i32 0, i32 1
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = call i32 @pps_unregister_source(%struct.TYPE_9__* %201)
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 2
  %205 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %206 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @dev_err(%struct.TYPE_11__* %204, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %221

211:                                              ; preds = %181
  %212 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %213 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %212, i32 0, i32 1
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %4, align 8
  %218 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @dev_info(i32 %216, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %219)
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %211, %198, %170, %69, %58, %18
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.pps_gpio_device_data* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pps_gpio_device_data*) #1

declare dso_local i32 @pps_gpio_setup(%struct.platform_device*) #1

declare dso_local i32 @gpiod_to_irq(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @pps_register_source(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i32, %struct.pps_gpio_device_data*) #1

declare dso_local i32 @get_irqf_trigger_flags(%struct.pps_gpio_device_data*) #1

declare dso_local i32 @pps_unregister_source(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
