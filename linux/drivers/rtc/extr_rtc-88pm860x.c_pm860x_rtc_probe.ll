; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm860x.c_pm860x_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-88pm860x.c_pm860x_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.pm860x_chip = type { i64, i32, i32, i32 }
%struct.pm860x_rtc_pdata = type { i32, i32 (i64)* }
%struct.pm860x_rtc_info = type { i64, i32, i32, i32, i32, i32 (i64)*, %struct.TYPE_10__*, %struct.pm860x_chip* }
%struct.rtc_time = type { i32, i32, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHIP_PM8607 = common dso_local global i64 0, align 8
@rtc_update_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", align 1
@REG0_ADDR = common dso_local global i32 0, align 4
@REG0_DATA = common dso_local global i32 0, align 4
@REG1_ADDR = common dso_local global i32 0, align 4
@REG1_DATA = common dso_local global i32 0, align 4
@REG2_ADDR = common dso_local global i32 0, align 4
@REG2_DATA = common dso_local global i32 0, align 4
@REG3_ADDR = common dso_local global i32 0, align 4
@REG3_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to read initial time.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to set initial time.\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"88pm860x-rtc\00", align 1
@pm860x_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@PM8607_RTC1 = common dso_local global i32 0, align 4
@RTC1_USE_XO = common dso_local global i32 0, align 4
@MEAS2_VRTC = common dso_local global i32 0, align 4
@PM8607_MEAS_EN2 = common dso_local global i32 0, align 4
@VRTC_CALIB_INTERVAL = common dso_local global i32 0, align 4
@calibrate_vrtc_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm860x_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.pm860x_rtc_pdata*, align 8
  %6 = alloca %struct.pm860x_rtc_info*, align 8
  %7 = alloca %struct.rtc_time, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pm860x_chip* @dev_get_drvdata(i32 %13)
  store %struct.pm860x_chip* %14, %struct.pm860x_chip** %4, align 8
  store %struct.pm860x_rtc_pdata* null, %struct.pm860x_rtc_pdata** %5, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.pm860x_rtc_pdata* @dev_get_platdata(%struct.TYPE_10__* %16)
  store %struct.pm860x_rtc_pdata* %17, %struct.pm860x_rtc_pdata** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pm860x_rtc_info* @devm_kzalloc(%struct.TYPE_10__* %19, i32 48, i32 %20)
  store %struct.pm860x_rtc_info* %21, %struct.pm860x_rtc_info** %6, align 8
  %22 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %23 = icmp ne %struct.pm860x_rtc_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %214

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i64 @platform_get_irq(%struct.platform_device* %28, i32 0)
  %30 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %31 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %33 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %38 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %214

41:                                               ; preds = %27
  %42 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %43 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %44 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %43, i32 0, i32 7
  store %struct.pm860x_chip* %42, %struct.pm860x_chip** %44, align 8
  %45 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %46 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_PM8607, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %52 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  br label %58

54:                                               ; preds = %41
  %55 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %56 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  %60 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %61 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %65 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %64, i32 0, i32 6
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %69 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %67, %struct.pm860x_rtc_info* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %73 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @rtc_update_handler, align 4
  %77 = load i32, i32* @IRQF_ONESHOT, align 4
  %78 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %79 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %71, i32 %75, i32* null, i32 %76, i32 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.pm860x_rtc_info* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %58
  %83 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %84 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to %struct.TYPE_10__*
  %88 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %89 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %2, align 4
  br label %214

94:                                               ; preds = %58
  %95 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %96 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @REG0_ADDR, align 4
  %99 = load i32, i32* @REG0_DATA, align 4
  %100 = call i32 @pm860x_page_reg_write(i32 %97, i32 %98, i32 %99)
  %101 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %102 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @REG1_ADDR, align 4
  %105 = load i32, i32* @REG1_DATA, align 4
  %106 = call i32 @pm860x_page_reg_write(i32 %103, i32 %104, i32 %105)
  %107 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %108 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @REG2_ADDR, align 4
  %111 = load i32, i32* @REG2_DATA, align 4
  %112 = call i32 @pm860x_page_reg_write(i32 %109, i32 %110, i32 %111)
  %113 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %114 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @REG3_ADDR, align 4
  %117 = load i32, i32* @REG3_DATA, align 4
  %118 = call i32 @pm860x_page_reg_write(i32 %115, i32 %116, i32 %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @pm860x_rtc_read_time(%struct.TYPE_10__* %120, %struct.rtc_time* %7)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %94
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %2, align 4
  br label %214

129:                                              ; preds = %94
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %131, 70
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 138
  br i1 %136, label %137, label %155

137:                                              ; preds = %133, %129
  %138 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 0
  store i32 70, i32* %138, align 8
  %139 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 5
  store i64 0, i64* %139, align 8
  %140 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 1
  store i32 1, i32* %140, align 4
  %141 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 4
  store i64 0, i64* %141, align 8
  %142 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 2
  store i64 0, i64* %143, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @pm860x_rtc_set_time(%struct.TYPE_10__* %145, %struct.rtc_time* %7)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %137
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %2, align 4
  br label %214

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %133
  %156 = call i32 @rtc_tm_to_time(%struct.rtc_time* %7, i64* %8)
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %159 = call i64 @pm860x_rtc_dt_init(%struct.platform_device* %157, %struct.pm860x_rtc_info* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %155
  %162 = load %struct.pm860x_rtc_pdata*, %struct.pm860x_rtc_pdata** %5, align 8
  %163 = icmp ne %struct.pm860x_rtc_pdata* %162, null
  br i1 %163, label %164, label %180

164:                                              ; preds = %161
  %165 = load %struct.pm860x_rtc_pdata*, %struct.pm860x_rtc_pdata** %5, align 8
  %166 = getelementptr inbounds %struct.pm860x_rtc_pdata, %struct.pm860x_rtc_pdata* %165, i32 0, i32 1
  %167 = load i32 (i64)*, i32 (i64)** %166, align 8
  %168 = icmp ne i32 (i64)* %167, null
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load %struct.pm860x_rtc_pdata*, %struct.pm860x_rtc_pdata** %5, align 8
  %171 = getelementptr inbounds %struct.pm860x_rtc_pdata, %struct.pm860x_rtc_pdata* %170, i32 0, i32 1
  %172 = load i32 (i64)*, i32 (i64)** %171, align 8
  %173 = load i64, i64* %8, align 8
  %174 = call i32 %172(i64 %173)
  %175 = load %struct.pm860x_rtc_pdata*, %struct.pm860x_rtc_pdata** %5, align 8
  %176 = getelementptr inbounds %struct.pm860x_rtc_pdata, %struct.pm860x_rtc_pdata* %175, i32 0, i32 1
  %177 = load i32 (i64)*, i32 (i64)** %176, align 8
  %178 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %179 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %178, i32 0, i32 5
  store i32 (i64)* %177, i32 (i64)** %179, align 8
  br label %180

180:                                              ; preds = %169, %164, %161
  br label %181

181:                                              ; preds = %180, %155
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = load i32, i32* @THIS_MODULE, align 4
  %185 = call i32 @devm_rtc_device_register(%struct.TYPE_10__* %183, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* @pm860x_rtc_ops, i32 %184)
  %186 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %187 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 4
  %188 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %189 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @PTR_ERR(i32 %190)
  store i32 %191, i32* %9, align 4
  %192 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %193 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @IS_ERR(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %181
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = load i32, i32* %9, align 4
  %201 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %199, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %2, align 4
  br label %214

203:                                              ; preds = %181
  %204 = load %struct.pm860x_rtc_info*, %struct.pm860x_rtc_info** %6, align 8
  %205 = getelementptr inbounds %struct.pm860x_rtc_info, %struct.pm860x_rtc_info* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @PM8607_RTC1, align 4
  %208 = load i32, i32* @RTC1_USE_XO, align 4
  %209 = load i32, i32* @RTC1_USE_XO, align 4
  %210 = call i32 @pm860x_set_bits(i32 %206, i32 %207, i32 %208, i32 %209)
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = call i32 @device_init_wakeup(%struct.TYPE_10__* %212, i32 1)
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %203, %197, %149, %124, %82, %36, %24
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.pm860x_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.pm860x_rtc_pdata* @dev_get_platdata(%struct.TYPE_10__*) #1

declare dso_local %struct.pm860x_rtc_info* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.pm860x_rtc_info*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32, i32, i8*, %struct.pm860x_rtc_info*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @pm860x_page_reg_write(i32, i32, i32) #1

declare dso_local i32 @pm860x_rtc_read_time(%struct.TYPE_10__*, %struct.rtc_time*) #1

declare dso_local i32 @pm860x_rtc_set_time(%struct.TYPE_10__*, %struct.rtc_time*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i64 @pm860x_rtc_dt_init(%struct.platform_device*, %struct.pm860x_rtc_info*) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_10__*, i8*, i32*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pm860x_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
