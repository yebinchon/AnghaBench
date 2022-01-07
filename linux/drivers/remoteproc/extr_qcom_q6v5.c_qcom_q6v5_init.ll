; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5.c_qcom_q6v5_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5.c_qcom_q6v5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_q6v5 = type { i32, void (%struct.qcom_q6v5*)*, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32*, %struct.rproc* }
%struct.platform_device = type { i32 }
%struct.rproc = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"wdog\00", align 1
@q6v5_wdog_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"q6v5 wdog\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to acquire wdog IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@q6v5_fatal_interrupt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"q6v5 fatal\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to acquire fatal IRQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@q6v5_ready_interrupt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"q6v5 ready\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to acquire ready IRQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"handover\00", align 1
@q6v5_handover_interrupt = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"q6v5 handover\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to acquire handover IRQ\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"stop-ack\00", align 1
@q6v5_stop_interrupt = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"q6v5 stop\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"failed to acquire stop-ack IRQ\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"failed to acquire stop state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_q6v5_init(%struct.qcom_q6v5* %0, %struct.platform_device* %1, %struct.rproc* %2, i32 %3, void (%struct.qcom_q6v5*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qcom_q6v5*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.rproc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.qcom_q6v5*)*, align 8
  %12 = alloca i32, align 4
  store %struct.qcom_q6v5* %0, %struct.qcom_q6v5** %7, align 8
  store %struct.platform_device* %1, %struct.platform_device** %8, align 8
  store %struct.rproc* %2, %struct.rproc** %9, align 8
  store i32 %3, i32* %10, align 4
  store void (%struct.qcom_q6v5*)* %4, void (%struct.qcom_q6v5*)** %11, align 8
  %13 = load %struct.rproc*, %struct.rproc** %9, align 8
  %14 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %15 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %14, i32 0, i32 12
  store %struct.rproc* %13, %struct.rproc** %15, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %19 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %18, i32 0, i32 11
  store i32* %17, i32** %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %22 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load void (%struct.qcom_q6v5*)*, void (%struct.qcom_q6v5*)** %11, align 8
  %24 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %25 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %24, i32 0, i32 1
  store void (%struct.qcom_q6v5*)* %23, void (%struct.qcom_q6v5*)** %25, align 8
  %26 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %27 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %26, i32 0, i32 10
  %28 = call i32 @init_completion(i32* %27)
  %29 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %30 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %29, i32 0, i32 9
  %31 = call i32 @init_completion(i32* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %33 = call i8* @platform_get_irq_byname(%struct.platform_device* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %36 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %38 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %5
  %42 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %43 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  br label %233

46:                                               ; preds = %5
  %47 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %50 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @q6v5_wdog_interrupt, align 4
  %54 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %55 = load i32, i32* @IRQF_ONESHOT, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %58 = call i32 @devm_request_threaded_irq(i32* %48, i32 %52, i32* null, i32 %53, i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.qcom_q6v5* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %6, align 4
  br label %233

66:                                               ; preds = %46
  %67 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %68 = call i8* @platform_get_irq_byname(%struct.platform_device* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %71 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %73 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %78 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %233

81:                                               ; preds = %66
  %82 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %85 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @q6v5_fatal_interrupt, align 4
  %89 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %90 = load i32, i32* @IRQF_ONESHOT, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %93 = call i32 @devm_request_threaded_irq(i32* %83, i32 %87, i32* null, i32 %88, i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.qcom_q6v5* %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %81
  %97 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  br label %233

101:                                              ; preds = %81
  %102 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %103 = call i8* @platform_get_irq_byname(%struct.platform_device* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %106 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  %107 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %108 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %113 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %6, align 4
  br label %233

116:                                              ; preds = %101
  %117 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %120 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* @q6v5_ready_interrupt, align 4
  %124 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %125 = load i32, i32* @IRQF_ONESHOT, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %128 = call i32 @devm_request_threaded_irq(i32* %118, i32 %122, i32* null, i32 %123, i32 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), %struct.qcom_q6v5* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %116
  %132 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %6, align 4
  br label %233

136:                                              ; preds = %116
  %137 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %138 = call i8* @platform_get_irq_byname(%struct.platform_device* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %139 = ptrtoint i8* %138 to i64
  %140 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %141 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %140, i32 0, i32 5
  store i64 %139, i64* %141, align 8
  %142 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %143 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %148 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %6, align 4
  br label %233

151:                                              ; preds = %136
  %152 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %155 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* @q6v5_handover_interrupt, align 4
  %159 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %160 = load i32, i32* @IRQF_ONESHOT, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %163 = call i32 @devm_request_threaded_irq(i32* %153, i32 %157, i32* null, i32 %158, i32 %161, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.qcom_q6v5* %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %151
  %167 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 @dev_err(i32* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %6, align 4
  br label %233

171:                                              ; preds = %151
  %172 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %173 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @disable_irq(i32 %175)
  %177 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %178 = call i8* @platform_get_irq_byname(%struct.platform_device* %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %179 = ptrtoint i8* %178 to i64
  %180 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %181 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %180, i32 0, i32 6
  store i64 %179, i64* %181, align 8
  %182 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %183 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %182, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %171
  %187 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %188 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %6, align 4
  br label %233

191:                                              ; preds = %171
  %192 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %195 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %194, i32 0, i32 6
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32, i32* @q6v5_stop_interrupt, align 4
  %199 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %200 = load i32, i32* @IRQF_ONESHOT, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %203 = call i32 @devm_request_threaded_irq(i32* %193, i32 %197, i32* null, i32 %198, i32 %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct.qcom_q6v5* %202)
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %191
  %207 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i32 @dev_err(i32* %208, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %6, align 4
  br label %233

211:                                              ; preds = %191
  %212 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %215 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %214, i32 0, i32 8
  %216 = call i32 @qcom_smem_state_get(i32* %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32* %215)
  %217 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %218 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %217, i32 0, i32 7
  store i32 %216, i32* %218, align 8
  %219 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %220 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @IS_ERR(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %211
  %225 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 @dev_err(i32* %226, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %228 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %7, align 8
  %229 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @PTR_ERR(i32 %230)
  store i32 %231, i32* %6, align 4
  br label %233

232:                                              ; preds = %211
  store i32 0, i32* %6, align 4
  br label %233

233:                                              ; preds = %232, %224, %206, %186, %166, %146, %131, %111, %96, %76, %61, %41
  %234 = load i32, i32* %6, align 4
  ret i32 %234
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.qcom_q6v5*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @qcom_smem_state_get(i32*, i8*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
