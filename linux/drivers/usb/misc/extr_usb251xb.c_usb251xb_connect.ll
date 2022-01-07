; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb251xb.c_usb251xb_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb251xb.c_usb251xb_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb251xb = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i64, %struct.device* }
%struct.device = type { i32 }

@USB251XB_I2C_REG_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Skip hub configuration, only attach.\0A\00", align 1
@USB251XB_STATUS_COMMAND_ATTACH = common dso_local global i8 0, align 1
@USB251XB_ADDR_STATUS_COMMAND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"attaching hub failed: %d\0A\00", align 1
@USB251XB_ADDR_VENDOR_ID_MSB = common dso_local global i64 0, align 8
@USB251XB_ADDR_VENDOR_ID_LSB = common dso_local global i64 0, align 8
@USB251XB_ADDR_PRODUCT_ID_MSB = common dso_local global i64 0, align 8
@USB251XB_ADDR_PRODUCT_ID_LSB = common dso_local global i64 0, align 8
@USB251XB_ADDR_DEVICE_ID_MSB = common dso_local global i64 0, align 8
@USB251XB_ADDR_DEVICE_ID_LSB = common dso_local global i64 0, align 8
@USB251XB_ADDR_CONFIG_DATA_1 = common dso_local global i64 0, align 8
@USB251XB_ADDR_CONFIG_DATA_2 = common dso_local global i64 0, align 8
@USB251XB_ADDR_CONFIG_DATA_3 = common dso_local global i64 0, align 8
@USB251XB_ADDR_NON_REMOVABLE_DEVICES = common dso_local global i64 0, align 8
@USB251XB_ADDR_PORT_DISABLE_SELF = common dso_local global i64 0, align 8
@USB251XB_ADDR_PORT_DISABLE_BUS = common dso_local global i64 0, align 8
@USB251XB_ADDR_MAX_POWER_SELF = common dso_local global i64 0, align 8
@USB251XB_ADDR_MAX_POWER_BUS = common dso_local global i64 0, align 8
@USB251XB_ADDR_MAX_CURRENT_SELF = common dso_local global i64 0, align 8
@USB251XB_ADDR_MAX_CURRENT_BUS = common dso_local global i64 0, align 8
@USB251XB_ADDR_POWER_ON_TIME = common dso_local global i64 0, align 8
@USB251XB_ADDR_LANGUAGE_ID_HIGH = common dso_local global i64 0, align 8
@USB251XB_ADDR_LANGUAGE_ID_LOW = common dso_local global i64 0, align 8
@USB251XB_ADDR_MANUFACTURER_STRING_LEN = common dso_local global i64 0, align 8
@USB251XB_ADDR_PRODUCT_STRING_LEN = common dso_local global i64 0, align 8
@USB251XB_ADDR_SERIAL_STRING_LEN = common dso_local global i64 0, align 8
@USB251XB_ADDR_MANUFACTURER_STRING = common dso_local global i64 0, align 8
@USB251XB_STRING_BUFSIZE = common dso_local global i32 0, align 4
@USB251XB_ADDR_SERIAL_STRING = common dso_local global i64 0, align 8
@USB251XB_ADDR_PRODUCT_STRING = common dso_local global i64 0, align 8
@USB251XB_ADDR_BATTERY_CHARGING_ENABLE = common dso_local global i64 0, align 8
@USB251XB_ADDR_BOOST_UP = common dso_local global i64 0, align 8
@USB251XB_ADDR_BOOST_57 = common dso_local global i64 0, align 8
@USB251XB_ADDR_BOOST_14 = common dso_local global i64 0, align 8
@USB251XB_ADDR_PORT_SWAP = common dso_local global i64 0, align 8
@USB251XB_ADDR_PORT_MAP_12 = common dso_local global i64 0, align 8
@USB251XB_ADDR_PORT_MAP_34 = common dso_local global i64 0, align 8
@USB251XB_ADDR_PORT_MAP_56 = common dso_local global i64 0, align 8
@USB251XB_ADDR_PORT_MAP_7 = common dso_local global i64 0, align 8
@USB251XB_I2C_WRITE_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"writing %d byte block %d to 0x%02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Hub configuration was successful.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"configuring block %d failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb251xb*)* @usb251xb_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb251xb_connect(%struct.usb251xb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb251xb*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.usb251xb* %0, %struct.usb251xb** %3, align 8
  %13 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %14 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %13, i32 0, i32 32
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load i32, i32* @USB251XB_I2C_REG_SZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @USB251XB_I2C_REG_SZ, align 4
  %21 = call i32 @memset(i8* %19, i32 0, i32 %20)
  %22 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %23 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %22, i32 0, i32 31
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_info(%struct.device* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 1, i8* %29, align 16
  %30 = load i8, i8* @USB251XB_STATUS_COMMAND_ATTACH, align 1
  %31 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %30, i8* %31, align 1
  %32 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %33 = call i32 @usb251xb_reset(%struct.usb251xb* %32, i32 0)
  %34 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %35 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %34, i32 0, i32 30
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @USB251XB_ADDR_STATUS_COMMAND, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @i2c_smbus_write_i2c_block_data(i32 %36, i32 %38, i32 2, i8* %19)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %306

47:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %306

48:                                               ; preds = %1
  %49 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %50 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = load i64, i64* @USB251XB_ADDR_VENDOR_ID_MSB, align 8
  %56 = getelementptr inbounds i8, i8* %19, i64 %55
  store i8 %54, i8* %56, align 1
  %57 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %58 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 255
  %61 = trunc i32 %60 to i8
  %62 = load i64, i64* @USB251XB_ADDR_VENDOR_ID_LSB, align 8
  %63 = getelementptr inbounds i8, i8* %19, i64 %62
  store i8 %61, i8* %63, align 1
  %64 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %65 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 8
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = load i64, i64* @USB251XB_ADDR_PRODUCT_ID_MSB, align 8
  %71 = getelementptr inbounds i8, i8* %19, i64 %70
  store i8 %69, i8* %71, align 1
  %72 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %73 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 255
  %76 = trunc i32 %75 to i8
  %77 = load i64, i64* @USB251XB_ADDR_PRODUCT_ID_LSB, align 8
  %78 = getelementptr inbounds i8, i8* %19, i64 %77
  store i8 %76, i8* %78, align 1
  %79 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %80 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = trunc i32 %83 to i8
  %85 = load i64, i64* @USB251XB_ADDR_DEVICE_ID_MSB, align 8
  %86 = getelementptr inbounds i8, i8* %19, i64 %85
  store i8 %84, i8* %86, align 1
  %87 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %88 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 255
  %91 = trunc i32 %90 to i8
  %92 = load i64, i64* @USB251XB_ADDR_DEVICE_ID_LSB, align 8
  %93 = getelementptr inbounds i8, i8* %19, i64 %92
  store i8 %91, i8* %93, align 1
  %94 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %95 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %94, i32 0, i32 3
  %96 = load i8, i8* %95, align 4
  %97 = load i64, i64* @USB251XB_ADDR_CONFIG_DATA_1, align 8
  %98 = getelementptr inbounds i8, i8* %19, i64 %97
  store i8 %96, i8* %98, align 1
  %99 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %100 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %99, i32 0, i32 4
  %101 = load i8, i8* %100, align 1
  %102 = load i64, i64* @USB251XB_ADDR_CONFIG_DATA_2, align 8
  %103 = getelementptr inbounds i8, i8* %19, i64 %102
  store i8 %101, i8* %103, align 1
  %104 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %105 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %104, i32 0, i32 5
  %106 = load i8, i8* %105, align 2
  %107 = load i64, i64* @USB251XB_ADDR_CONFIG_DATA_3, align 8
  %108 = getelementptr inbounds i8, i8* %19, i64 %107
  store i8 %106, i8* %108, align 1
  %109 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %110 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %109, i32 0, i32 6
  %111 = load i8, i8* %110, align 1
  %112 = load i64, i64* @USB251XB_ADDR_NON_REMOVABLE_DEVICES, align 8
  %113 = getelementptr inbounds i8, i8* %19, i64 %112
  store i8 %111, i8* %113, align 1
  %114 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %115 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %114, i32 0, i32 7
  %116 = load i8, i8* %115, align 8
  %117 = load i64, i64* @USB251XB_ADDR_PORT_DISABLE_SELF, align 8
  %118 = getelementptr inbounds i8, i8* %19, i64 %117
  store i8 %116, i8* %118, align 1
  %119 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %120 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %119, i32 0, i32 8
  %121 = load i8, i8* %120, align 1
  %122 = load i64, i64* @USB251XB_ADDR_PORT_DISABLE_BUS, align 8
  %123 = getelementptr inbounds i8, i8* %19, i64 %122
  store i8 %121, i8* %123, align 1
  %124 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %125 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %124, i32 0, i32 9
  %126 = load i8, i8* %125, align 2
  %127 = load i64, i64* @USB251XB_ADDR_MAX_POWER_SELF, align 8
  %128 = getelementptr inbounds i8, i8* %19, i64 %127
  store i8 %126, i8* %128, align 1
  %129 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %130 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %129, i32 0, i32 10
  %131 = load i8, i8* %130, align 1
  %132 = load i64, i64* @USB251XB_ADDR_MAX_POWER_BUS, align 8
  %133 = getelementptr inbounds i8, i8* %19, i64 %132
  store i8 %131, i8* %133, align 1
  %134 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %135 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %134, i32 0, i32 11
  %136 = load i8, i8* %135, align 4
  %137 = load i64, i64* @USB251XB_ADDR_MAX_CURRENT_SELF, align 8
  %138 = getelementptr inbounds i8, i8* %19, i64 %137
  store i8 %136, i8* %138, align 1
  %139 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %140 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %139, i32 0, i32 12
  %141 = load i8, i8* %140, align 1
  %142 = load i64, i64* @USB251XB_ADDR_MAX_CURRENT_BUS, align 8
  %143 = getelementptr inbounds i8, i8* %19, i64 %142
  store i8 %141, i8* %143, align 1
  %144 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %145 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %144, i32 0, i32 13
  %146 = load i8, i8* %145, align 2
  %147 = load i64, i64* @USB251XB_ADDR_POWER_ON_TIME, align 8
  %148 = getelementptr inbounds i8, i8* %19, i64 %147
  store i8 %146, i8* %148, align 1
  %149 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %150 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %149, i32 0, i32 14
  %151 = load i32, i32* %150, align 8
  %152 = ashr i32 %151, 8
  %153 = and i32 %152, 255
  %154 = trunc i32 %153 to i8
  %155 = load i64, i64* @USB251XB_ADDR_LANGUAGE_ID_HIGH, align 8
  %156 = getelementptr inbounds i8, i8* %19, i64 %155
  store i8 %154, i8* %156, align 1
  %157 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %158 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, 255
  %161 = trunc i32 %160 to i8
  %162 = load i64, i64* @USB251XB_ADDR_LANGUAGE_ID_LOW, align 8
  %163 = getelementptr inbounds i8, i8* %19, i64 %162
  store i8 %161, i8* %163, align 1
  %164 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %165 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %164, i32 0, i32 15
  %166 = load i8, i8* %165, align 4
  %167 = load i64, i64* @USB251XB_ADDR_MANUFACTURER_STRING_LEN, align 8
  %168 = getelementptr inbounds i8, i8* %19, i64 %167
  store i8 %166, i8* %168, align 1
  %169 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %170 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %169, i32 0, i32 16
  %171 = load i8, i8* %170, align 1
  %172 = load i64, i64* @USB251XB_ADDR_PRODUCT_STRING_LEN, align 8
  %173 = getelementptr inbounds i8, i8* %19, i64 %172
  store i8 %171, i8* %173, align 1
  %174 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %175 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %174, i32 0, i32 17
  %176 = load i8, i8* %175, align 2
  %177 = load i64, i64* @USB251XB_ADDR_SERIAL_STRING_LEN, align 8
  %178 = getelementptr inbounds i8, i8* %19, i64 %177
  store i8 %176, i8* %178, align 1
  %179 = load i64, i64* @USB251XB_ADDR_MANUFACTURER_STRING, align 8
  %180 = getelementptr inbounds i8, i8* %19, i64 %179
  %181 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %182 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %181, i32 0, i32 18
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* @USB251XB_STRING_BUFSIZE, align 4
  %185 = call i32 @memcpy(i8* %180, i8* %183, i32 %184)
  %186 = load i64, i64* @USB251XB_ADDR_SERIAL_STRING, align 8
  %187 = getelementptr inbounds i8, i8* %19, i64 %186
  %188 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %189 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %188, i32 0, i32 19
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* @USB251XB_STRING_BUFSIZE, align 4
  %192 = call i32 @memcpy(i8* %187, i8* %190, i32 %191)
  %193 = load i64, i64* @USB251XB_ADDR_PRODUCT_STRING, align 8
  %194 = getelementptr inbounds i8, i8* %19, i64 %193
  %195 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %196 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %195, i32 0, i32 20
  %197 = load i8*, i8** %196, align 8
  %198 = load i32, i32* @USB251XB_STRING_BUFSIZE, align 4
  %199 = call i32 @memcpy(i8* %194, i8* %197, i32 %198)
  %200 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %201 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %200, i32 0, i32 21
  %202 = load i8, i8* %201, align 8
  %203 = load i64, i64* @USB251XB_ADDR_BATTERY_CHARGING_ENABLE, align 8
  %204 = getelementptr inbounds i8, i8* %19, i64 %203
  store i8 %202, i8* %204, align 1
  %205 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %206 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %205, i32 0, i32 22
  %207 = load i8, i8* %206, align 1
  %208 = load i64, i64* @USB251XB_ADDR_BOOST_UP, align 8
  %209 = getelementptr inbounds i8, i8* %19, i64 %208
  store i8 %207, i8* %209, align 1
  %210 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %211 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %210, i32 0, i32 23
  %212 = load i8, i8* %211, align 2
  %213 = load i64, i64* @USB251XB_ADDR_BOOST_57, align 8
  %214 = getelementptr inbounds i8, i8* %19, i64 %213
  store i8 %212, i8* %214, align 1
  %215 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %216 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %215, i32 0, i32 24
  %217 = load i8, i8* %216, align 1
  %218 = load i64, i64* @USB251XB_ADDR_BOOST_14, align 8
  %219 = getelementptr inbounds i8, i8* %19, i64 %218
  store i8 %217, i8* %219, align 1
  %220 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %221 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %220, i32 0, i32 25
  %222 = load i8, i8* %221, align 4
  %223 = load i64, i64* @USB251XB_ADDR_PORT_SWAP, align 8
  %224 = getelementptr inbounds i8, i8* %19, i64 %223
  store i8 %222, i8* %224, align 1
  %225 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %226 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %225, i32 0, i32 26
  %227 = load i8, i8* %226, align 1
  %228 = load i64, i64* @USB251XB_ADDR_PORT_MAP_12, align 8
  %229 = getelementptr inbounds i8, i8* %19, i64 %228
  store i8 %227, i8* %229, align 1
  %230 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %231 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %230, i32 0, i32 27
  %232 = load i8, i8* %231, align 2
  %233 = load i64, i64* @USB251XB_ADDR_PORT_MAP_34, align 8
  %234 = getelementptr inbounds i8, i8* %19, i64 %233
  store i8 %232, i8* %234, align 1
  %235 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %236 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %235, i32 0, i32 28
  %237 = load i8, i8* %236, align 1
  %238 = load i64, i64* @USB251XB_ADDR_PORT_MAP_56, align 8
  %239 = getelementptr inbounds i8, i8* %19, i64 %238
  store i8 %237, i8* %239, align 1
  %240 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %241 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %240, i32 0, i32 29
  %242 = load i8, i8* %241, align 8
  %243 = load i64, i64* @USB251XB_ADDR_PORT_MAP_7, align 8
  %244 = getelementptr inbounds i8, i8* %19, i64 %243
  store i8 %242, i8* %244, align 1
  %245 = load i8, i8* @USB251XB_STATUS_COMMAND_ATTACH, align 1
  %246 = load i64, i64* @USB251XB_ADDR_STATUS_COMMAND, align 8
  %247 = getelementptr inbounds i8, i8* %19, i64 %246
  store i8 %245, i8* %247, align 1
  %248 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %249 = call i32 @usb251xb_reset(%struct.usb251xb* %248, i32 0)
  store i32 0, i32* %6, align 4
  br label %250

250:                                              ; preds = %294, %48
  %251 = load i32, i32* %6, align 4
  %252 = load i32, i32* @USB251XB_I2C_REG_SZ, align 4
  %253 = load i32, i32* @USB251XB_I2C_WRITE_SZ, align 4
  %254 = sdiv i32 %252, %253
  %255 = icmp slt i32 %251, %254
  br i1 %255, label %256, label %297

256:                                              ; preds = %250
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @USB251XB_I2C_WRITE_SZ, align 4
  %259 = mul nsw i32 %257, %258
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* @USB251XB_I2C_WRITE_SZ, align 4
  %261 = add nsw i32 %260, 1
  %262 = zext i32 %261 to i64
  %263 = call i8* @llvm.stacksave()
  store i8* %263, i8** %11, align 8
  %264 = alloca i8, i64 %262, align 16
  store i64 %262, i64* %12, align 8
  %265 = load i32, i32* @USB251XB_I2C_WRITE_SZ, align 4
  %266 = trunc i32 %265 to i8
  %267 = getelementptr inbounds i8, i8* %264, i64 0
  store i8 %266, i8* %267, align 16
  %268 = getelementptr inbounds i8, i8* %264, i64 1
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %19, i64 %270
  %272 = load i32, i32* @USB251XB_I2C_WRITE_SZ, align 4
  %273 = call i32 @memcpy(i8* %268, i8* %271, i32 %272)
  %274 = load %struct.device*, %struct.device** %4, align 8
  %275 = load i32, i32* @USB251XB_I2C_WRITE_SZ, align 4
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* %10, align 4
  %278 = call i32 @dev_dbg(%struct.device* %274, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %275, i32 %276, i32 %277)
  %279 = load %struct.usb251xb*, %struct.usb251xb** %3, align 8
  %280 = getelementptr inbounds %struct.usb251xb, %struct.usb251xb* %279, i32 0, i32 30
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @USB251XB_I2C_WRITE_SZ, align 4
  %284 = add nsw i32 %283, 1
  %285 = call i32 @i2c_smbus_write_i2c_block_data(i32 %281, i32 %282, i32 %284, i8* %264)
  store i32 %285, i32* %5, align 4
  %286 = load i32, i32* %5, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %256
  store i32 5, i32* %9, align 4
  br label %290

289:                                              ; preds = %256
  store i32 0, i32* %9, align 4
  br label %290

290:                                              ; preds = %288, %289
  %291 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %291)
  %292 = load i32, i32* %9, align 4
  switch i32 %292, label %306 [
    i32 0, label %293
    i32 5, label %300
  ]

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %6, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %6, align 4
  br label %250

297:                                              ; preds = %250
  %298 = load %struct.device*, %struct.device** %4, align 8
  %299 = call i32 @dev_info(%struct.device* %298, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %306

300:                                              ; preds = %290
  %301 = load %struct.device*, %struct.device** %4, align 8
  %302 = load i32, i32* %6, align 4
  %303 = load i32, i32* %5, align 4
  %304 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %301, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %302, i32 %303)
  %305 = load i32, i32* %5, align 4
  store i32 %305, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %306

306:                                              ; preds = %300, %297, %290, %47, %42
  %307 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %307)
  %308 = load i32, i32* %2, align 4
  ret i32 %308
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @dev_info(%struct.device*, i8*) #2

declare dso_local i32 @usb251xb_reset(%struct.usb251xb*, i32) #2

declare dso_local i32 @i2c_smbus_write_i2c_block_data(i32, i32, i32, i8*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
