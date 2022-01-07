; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fm3130.c_fm3130_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fm3130.c_fm3130_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.fm3130 = type { i64, i64, i32*, i32, i32, i32, %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i64*, i8*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FM3130_RTC_SECONDS = common dso_local global i64 0, align 8
@FM3130_ALARM_SECONDS = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i8* null, align 8
@FM3130_CLOCK_REGS = common dso_local global i32 0, align 4
@FM3130_ALARM_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"read error %d\0A\00", align 1
@FM3130_RTC_CONTROL = common dso_local global i64 0, align 8
@FM3130_CAL_CONTROL = common dso_local global i64 0, align 8
@FM3130_RTC_CONTROL_BIT_CAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Disabling calibration mode!\0A\00", align 1
@FM3130_RTC_CONTROL_BIT_WRITE = common dso_local global i32 0, align 4
@FM3130_RTC_CONTROL_BIT_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Disabling READ or WRITE mode!\0A\00", align 1
@FM3130_CAL_CONTROL_BIT_nOSCEN = common dso_local global i32 0, align 4
@FM3130_RTC_CONTROL_BIT_LB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Low battery!\0A\00", align 1
@FM3130_RTC_CONTROL_BIT_POR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"POR bit is set\0A\00", align 1
@FM3130_ALARM_WP_CONTROL = common dso_local global i64 0, align 8
@FM3130_RTC_MINUTES = common dso_local global i64 0, align 8
@FM3130_RTC_HOURS = common dso_local global i64 0, align 8
@FM3130_RTC_DATE = common dso_local global i64 0, align 8
@FM3130_RTC_MONTHS = common dso_local global i64 0, align 8
@FM3130_RTC_DAY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"%s: %15ph\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"bogus registers\00", align 1
@fm3130_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"unable to register the class device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @fm3130_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm3130_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.fm3130*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 3
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %9, align 8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %16 = load i32, i32* @I2C_FUNC_I2C, align 4
  %17 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %533

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.fm3130* @devm_kzalloc(i32* %26, i32 56, i32 %27)
  store %struct.fm3130* %28, %struct.fm3130** %6, align 8
  %29 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %30 = icmp ne %struct.fm3130* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %533

34:                                               ; preds = %24
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %37 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %36, i32 0, i32 7
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %40 = call i32 @i2c_set_clientdata(%struct.i2c_client* %38, %struct.fm3130* %39)
  %41 = load i64, i64* @FM3130_RTC_SECONDS, align 8
  %42 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %43 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @FM3130_ALARM_SECONDS, align 8
  %45 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %46 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %51 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %50, i32 0, i32 6
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %49, i32* %54, align 8
  %55 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %56 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %55, i32 0, i32 6
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i8* null, i8** %59, align 8
  %60 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %61 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %60, i32 0, i32 6
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %66 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %65, i32 0, i32 0
  %67 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %68 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %67, i32 0, i32 6
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64* %66, i64** %71, align 8
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %76 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %75, i32 0, i32 6
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i32 %74, i32* %79, align 8
  %80 = load i8*, i8** @I2C_M_RD, align 8
  %81 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %82 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %81, i32 0, i32 6
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i8* %80, i8** %85, align 8
  %86 = load i32, i32* @FM3130_CLOCK_REGS, align 4
  %87 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %88 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %87, i32 0, i32 6
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 8
  %92 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %93 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @FM3130_RTC_SECONDS, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = bitcast i32* %96 to i64*
  %98 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %99 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %98, i32 0, i32 6
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i64* %97, i64** %102, align 8
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %107 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %106, i32 0, i32 6
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  store i32 %105, i32* %110, align 8
  %111 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %112 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %111, i32 0, i32 6
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store i8* null, i8** %115, align 8
  %116 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %117 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %116, i32 0, i32 6
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %122 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %121, i32 0, i32 1
  %123 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %124 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %123, i32 0, i32 6
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i64* %122, i64** %127, align 8
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %132 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %131, i32 0, i32 6
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 3
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  store i32 %130, i32* %135, align 8
  %136 = load i8*, i8** @I2C_M_RD, align 8
  %137 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %138 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %137, i32 0, i32 6
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 3
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  store i8* %136, i8** %141, align 8
  %142 = load i32, i32* @FM3130_ALARM_REGS, align 4
  %143 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %144 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %143, i32 0, i32 6
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 3
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i32 %142, i32* %147, align 8
  %148 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %149 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @FM3130_ALARM_SECONDS, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = bitcast i32* %152 to i64*
  %154 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %155 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %154, i32 0, i32 6
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 3
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  store i64* %153, i64** %158, align 8
  %159 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %160 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %159, i32 0, i32 3
  store i32 0, i32* %160, align 8
  %161 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %162 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %161, i32 0, i32 4
  store i32 0, i32* %162, align 4
  %163 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %164 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %165 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %164, i32 0, i32 6
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = call i32 @i2c_transfer(%struct.i2c_adapter* %163, %struct.TYPE_2__* %166, i32 4)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 4
  br i1 %169, label %170, label %177

170:                                              ; preds = %34
  %171 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 0
  %173 = load i32, i32* %8, align 4
  %174 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @EIO, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %7, align 4
  br label %531

177:                                              ; preds = %34
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %180 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %178, i64 %179)
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %183 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32 %181, i32* %186, align 4
  %187 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %188 = load i64, i64* @FM3130_CAL_CONTROL, align 8
  %189 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %187, i64 %188)
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %192 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @FM3130_CAL_CONTROL, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 %190, i32* %195, align 4
  %196 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %197 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @FM3130_RTC_CONTROL_BIT_CAL, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %221

205:                                              ; preds = %177
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %208 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %209 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @FM3130_RTC_CONTROL_BIT_CAL, align 4
  %215 = xor i32 %214, -1
  %216 = and i32 %213, %215
  %217 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %206, i64 %207, i32 %216)
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %218, i32 0, i32 0
  %220 = call i32 @dev_warn(i32* %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %221

221:                                              ; preds = %205, %177
  %222 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %223 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @FM3130_RTC_CONTROL_BIT_WRITE, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %221
  %232 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %233 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @FM3130_RTC_CONTROL_BIT_READ, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %259

241:                                              ; preds = %231, %221
  %242 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %243 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %244 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %245 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @FM3130_RTC_CONTROL_BIT_READ, align 4
  %251 = load i32, i32* @FM3130_RTC_CONTROL_BIT_WRITE, align 4
  %252 = or i32 %250, %251
  %253 = xor i32 %252, -1
  %254 = and i32 %249, %253
  %255 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %242, i64 %243, i32 %254)
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %256, i32 0, i32 0
  %258 = call i32 @dev_warn(i32* %257, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %259

259:                                              ; preds = %241, %231
  %260 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %261 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* @FM3130_CAL_CONTROL, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @FM3130_CAL_CONTROL_BIT_nOSCEN, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %282

269:                                              ; preds = %259
  %270 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %271 = load i64, i64* @FM3130_CAL_CONTROL, align 8
  %272 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %273 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %272, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i64, i64* @FM3130_CAL_CONTROL, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @FM3130_CAL_CONTROL_BIT_nOSCEN, align 4
  %279 = xor i32 %278, -1
  %280 = and i32 %277, %279
  %281 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %270, i64 %271, i32 %280)
  br label %282

282:                                              ; preds = %269, %259
  %283 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %284 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @FM3130_RTC_CONTROL_BIT_LB, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %308

292:                                              ; preds = %282
  %293 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %294 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %295 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %296 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %295, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  %298 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @FM3130_RTC_CONTROL_BIT_LB, align 4
  %302 = xor i32 %301, -1
  %303 = and i32 %300, %302
  %304 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %293, i64 %294, i32 %303)
  %305 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %306 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %305, i32 0, i32 0
  %307 = call i32 @dev_warn(i32* %306, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %308

308:                                              ; preds = %292, %282
  %309 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %310 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %309, i32 0, i32 2
  %311 = load i32*, i32** %310, align 8
  %312 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @FM3130_RTC_CONTROL_BIT_POR, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %334

318:                                              ; preds = %308
  %319 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %320 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %321 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %322 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %321, i32 0, i32 2
  %323 = load i32*, i32** %322, align 8
  %324 = load i64, i64* @FM3130_RTC_CONTROL, align 8
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @FM3130_RTC_CONTROL_BIT_POR, align 4
  %328 = xor i32 %327, -1
  %329 = and i32 %326, %328
  %330 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %319, i64 %320, i32 %329)
  %331 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %332 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %331, i32 0, i32 0
  %333 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %332, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %334

334:                                              ; preds = %318, %308
  %335 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %336 = load i64, i64* @FM3130_ALARM_WP_CONTROL, align 8
  %337 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %335, i64 %336, i32 128)
  %338 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %339 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %338, i32 0, i32 2
  %340 = load i32*, i32** %339, align 8
  %341 = load i64, i64* @FM3130_RTC_SECONDS, align 8
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = and i32 %343, 127
  %345 = call i32 @bcd2bin(i32 %344)
  store i32 %345, i32* %8, align 4
  %346 = load i32, i32* %8, align 4
  %347 = icmp sgt i32 %346, 59
  br i1 %347, label %348, label %349

348:                                              ; preds = %334
  br label %406

349:                                              ; preds = %334
  %350 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %351 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %350, i32 0, i32 2
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* @FM3130_RTC_MINUTES, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = and i32 %355, 127
  %357 = call i32 @bcd2bin(i32 %356)
  store i32 %357, i32* %8, align 4
  %358 = load i32, i32* %8, align 4
  %359 = icmp sgt i32 %358, 59
  br i1 %359, label %360, label %361

360:                                              ; preds = %349
  br label %406

361:                                              ; preds = %349
  %362 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %363 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %362, i32 0, i32 2
  %364 = load i32*, i32** %363, align 8
  %365 = load i64, i64* @FM3130_RTC_HOURS, align 8
  %366 = getelementptr inbounds i32, i32* %364, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = and i32 %367, 63
  %369 = call i32 @bcd2bin(i32 %368)
  store i32 %369, i32* %8, align 4
  %370 = load i32, i32* %8, align 4
  %371 = icmp sgt i32 %370, 23
  br i1 %371, label %372, label %373

372:                                              ; preds = %361
  br label %406

373:                                              ; preds = %361
  %374 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %375 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = load i64, i64* @FM3130_RTC_DATE, align 8
  %378 = getelementptr inbounds i32, i32* %376, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = and i32 %379, 63
  %381 = call i32 @bcd2bin(i32 %380)
  store i32 %381, i32* %8, align 4
  %382 = load i32, i32* %8, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %387, label %384

384:                                              ; preds = %373
  %385 = load i32, i32* %8, align 4
  %386 = icmp sgt i32 %385, 31
  br i1 %386, label %387, label %388

387:                                              ; preds = %384, %373
  br label %406

388:                                              ; preds = %384
  %389 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %390 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %389, i32 0, i32 2
  %391 = load i32*, i32** %390, align 8
  %392 = load i64, i64* @FM3130_RTC_MONTHS, align 8
  %393 = getelementptr inbounds i32, i32* %391, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, 31
  %396 = call i32 @bcd2bin(i32 %395)
  store i32 %396, i32* %8, align 4
  %397 = load i32, i32* %8, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %388
  %400 = load i32, i32* %8, align 4
  %401 = icmp sgt i32 %400, 12
  br i1 %401, label %402, label %403

402:                                              ; preds = %399, %388
  br label %406

403:                                              ; preds = %399
  %404 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %405 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %404, i32 0, i32 3
  store i32 1, i32* %405, align 8
  br label %406

406:                                              ; preds = %403, %402, %387, %372, %360, %348
  %407 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %408 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %407, i32 0, i32 2
  %409 = load i32*, i32** %408, align 8
  %410 = load i64, i64* @FM3130_RTC_SECONDS, align 8
  %411 = getelementptr inbounds i32, i32* %409, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = and i32 %412, 127
  %414 = call i32 @bcd2bin(i32 %413)
  store i32 %414, i32* %8, align 4
  %415 = load i32, i32* %8, align 4
  %416 = icmp sgt i32 %415, 59
  br i1 %416, label %417, label %418

417:                                              ; preds = %406
  br label %490

418:                                              ; preds = %406
  %419 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %420 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %419, i32 0, i32 2
  %421 = load i32*, i32** %420, align 8
  %422 = load i64, i64* @FM3130_RTC_MINUTES, align 8
  %423 = getelementptr inbounds i32, i32* %421, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = and i32 %424, 127
  %426 = call i32 @bcd2bin(i32 %425)
  store i32 %426, i32* %8, align 4
  %427 = load i32, i32* %8, align 4
  %428 = icmp sgt i32 %427, 59
  br i1 %428, label %429, label %430

429:                                              ; preds = %418
  br label %490

430:                                              ; preds = %418
  %431 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %432 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %431, i32 0, i32 2
  %433 = load i32*, i32** %432, align 8
  %434 = load i64, i64* @FM3130_RTC_HOURS, align 8
  %435 = getelementptr inbounds i32, i32* %433, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = and i32 %436, 63
  %438 = call i32 @bcd2bin(i32 %437)
  store i32 %438, i32* %8, align 4
  %439 = load i32, i32* %8, align 4
  %440 = icmp sgt i32 %439, 23
  br i1 %440, label %441, label %442

441:                                              ; preds = %430
  br label %490

442:                                              ; preds = %430
  %443 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %444 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %443, i32 0, i32 2
  %445 = load i32*, i32** %444, align 8
  %446 = load i64, i64* @FM3130_RTC_DAY, align 8
  %447 = getelementptr inbounds i32, i32* %445, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = and i32 %448, 7
  %450 = call i32 @bcd2bin(i32 %449)
  store i32 %450, i32* %8, align 4
  %451 = load i32, i32* %8, align 4
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %456, label %453

453:                                              ; preds = %442
  %454 = load i32, i32* %8, align 4
  %455 = icmp sgt i32 %454, 7
  br i1 %455, label %456, label %457

456:                                              ; preds = %453, %442
  br label %490

457:                                              ; preds = %453
  %458 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %459 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %458, i32 0, i32 2
  %460 = load i32*, i32** %459, align 8
  %461 = load i64, i64* @FM3130_RTC_DATE, align 8
  %462 = getelementptr inbounds i32, i32* %460, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = and i32 %463, 63
  %465 = call i32 @bcd2bin(i32 %464)
  store i32 %465, i32* %8, align 4
  %466 = load i32, i32* %8, align 4
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %471, label %468

468:                                              ; preds = %457
  %469 = load i32, i32* %8, align 4
  %470 = icmp sgt i32 %469, 31
  br i1 %470, label %471, label %472

471:                                              ; preds = %468, %457
  br label %490

472:                                              ; preds = %468
  %473 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %474 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %473, i32 0, i32 2
  %475 = load i32*, i32** %474, align 8
  %476 = load i64, i64* @FM3130_RTC_MONTHS, align 8
  %477 = getelementptr inbounds i32, i32* %475, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = and i32 %478, 31
  %480 = call i32 @bcd2bin(i32 %479)
  store i32 %480, i32* %8, align 4
  %481 = load i32, i32* %8, align 4
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %486, label %483

483:                                              ; preds = %472
  %484 = load i32, i32* %8, align 4
  %485 = icmp sgt i32 %484, 12
  br i1 %485, label %486, label %487

486:                                              ; preds = %483, %472
  br label %490

487:                                              ; preds = %483
  %488 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %489 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %488, i32 0, i32 4
  store i32 1, i32* %489, align 4
  br label %490

490:                                              ; preds = %487, %486, %471, %456, %441, %429, %417
  %491 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %492 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %491, i32 0, i32 4
  %493 = load i32, i32* %492, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %500

495:                                              ; preds = %490
  %496 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %497 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 8
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %507, label %500

500:                                              ; preds = %495, %490
  %501 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %502 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %501, i32 0, i32 0
  %503 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %504 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %503, i32 0, i32 2
  %505 = load i32*, i32** %504, align 8
  %506 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %502, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %505)
  br label %507

507:                                              ; preds = %500, %495
  %508 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %509 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %508, i32 0, i32 0
  %510 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %511 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* @THIS_MODULE, align 4
  %514 = call i32 @devm_rtc_device_register(i32* %509, i32 %512, i32* @fm3130_rtc_ops, i32 %513)
  %515 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %516 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %515, i32 0, i32 5
  store i32 %514, i32* %516, align 8
  %517 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %518 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %517, i32 0, i32 5
  %519 = load i32, i32* %518, align 8
  %520 = call i64 @IS_ERR(i32 %519)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %530

522:                                              ; preds = %507
  %523 = load %struct.fm3130*, %struct.fm3130** %6, align 8
  %524 = getelementptr inbounds %struct.fm3130, %struct.fm3130* %523, i32 0, i32 5
  %525 = load i32, i32* %524, align 8
  %526 = call i32 @PTR_ERR(i32 %525)
  store i32 %526, i32* %7, align 4
  %527 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %528 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %527, i32 0, i32 0
  %529 = call i32 @dev_err(i32* %528, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %531

530:                                              ; preds = %507
  store i32 0, i32* %3, align 4
  br label %533

531:                                              ; preds = %522, %170
  %532 = load i32, i32* %7, align 4
  store i32 %532, i32* %3, align 4
  br label %533

533:                                              ; preds = %531, %530, %31, %21
  %534 = load i32, i32* %3, align 4
  ret i32 %534
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.fm3130* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.fm3130*) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
