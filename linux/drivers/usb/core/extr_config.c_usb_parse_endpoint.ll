; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_config.c_usb_parse_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_config.c_usb_parse_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_6__, %struct.usb_host_endpoint* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_host_endpoint = type { i8*, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i8*, i32 }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@USB_DT_ENDPOINT_AUDIO_SIZE = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"config %d interface %d altsetting %d has an invalid endpoint descriptor of length %d, skipping\0A\00", align 1
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"config %d interface %d altsetting %d has an invalid endpoint with address 0x%X, skipping\0A\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"config %d interface %d altsetting %d has a duplicate endpoint with address 0x%X, skipping\0A\00", align 1
@USB_QUIRK_LINEAR_FRAME_INTR_BINTERVAL = common dso_local global i32 0, align 4
@USB_QUIRK_LINEAR_UFRAME_INTR_BINTERVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [96 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has an invalid bInterval %d, changing to %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"config %d interface %d altsetting %d endpoint 0x%X is Bulk; changing to Interrupt\0A\00", align 1
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [83 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has wMaxPacketSize 0, skipping\0A\00", align 1
@low_speed_maxpacket_maxes = common dso_local global i16* null, align 8
@full_speed_maxpacket_maxes = common dso_local global i16* null, align 8
@high_speed_maxpacket_maxes = common dso_local global i16* null, align 8
@super_speed_maxpacket_maxes = common dso_local global i16* null, align 8
@.str.6 = private unnamed_addr constant [92 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has invalid maxpacket %d, setting to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"config %d interface %d altsetting %d bulk endpoint 0x%X has invalid maxpacket %d\0A\00", align 1
@USB_DT_ENDPOINT = common dso_local global i32 0, align 4
@USB_DT_INTERFACE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"skipped %d descriptor%s after %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, %struct.usb_host_interface*, i32, i8*, i32)* @usb_parse_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_parse_endpoint(%struct.device* %0, i32 %1, i32 %2, i32 %3, %struct.usb_host_interface* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_host_interface*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.usb_endpoint_descriptor*, align 8
  %20 = alloca %struct.usb_host_endpoint*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i16*, align 8
  store %struct.device* %0, %struct.device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.usb_host_interface* %4, %struct.usb_host_interface** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = load i8*, i8** %16, align 8
  store i8* %27, i8** %18, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = bitcast i8* %28 to %struct.usb_endpoint_descriptor*
  store %struct.usb_endpoint_descriptor* %29, %struct.usb_endpoint_descriptor** %19, align 8
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %31 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %16, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %16, align 8
  %36 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %37 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %17, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %17, align 4
  %41 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %42 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @USB_DT_ENDPOINT_AUDIO_SIZE, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %8
  %47 = load i32, i32* @USB_DT_ENDPOINT_AUDIO_SIZE, align 4
  store i32 %47, i32* %21, align 4
  br label %66

48:                                               ; preds = %8
  %49 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %50 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @USB_DT_ENDPOINT_SIZE, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @USB_DT_ENDPOINT_SIZE, align 4
  store i32 %55, i32* %21, align 4
  br label %65

56:                                               ; preds = %48
  %57 = load %struct.device*, %struct.device** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %57, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i32 %63)
  br label %433

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %68 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %22, align 4
  %74 = icmp sge i32 %73, 16
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %22, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75, %66
  %79 = load %struct.device*, %struct.device** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %84 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %79, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81, i32 %82, i32 %85)
  br label %433

87:                                               ; preds = %75
  %88 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %89 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %433

95:                                               ; preds = %87
  store i32 0, i32* %22, align 4
  br label %96

96:                                               ; preds = %127, %95
  %97 = load i32, i32* %22, align 4
  %98 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %99 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %96
  %104 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %105 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %104, i32 0, i32 1
  %106 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %105, align 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %106, i64 %108
  %110 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %114 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %103
  %118 = load %struct.device*, %struct.device** %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %123 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %118, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %120, i32 %121, i32 %124)
  br label %433

126:                                              ; preds = %103
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %22, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %22, align 4
  br label %96

130:                                              ; preds = %96
  %131 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %132 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %131, i32 0, i32 1
  %133 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %132, align 8
  %134 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %135 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %133, i64 %138
  store %struct.usb_host_endpoint* %139, %struct.usb_host_endpoint** %20, align 8
  %140 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %141 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  %145 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %146 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %145, i32 0, i32 2
  %147 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %148 = load i32, i32* %21, align 4
  %149 = call i32 @memcpy(%struct.TYPE_7__* %146, %struct.usb_endpoint_descriptor* %147, i32 %148)
  %150 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %151 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %150, i32 0, i32 3
  %152 = call i32 @INIT_LIST_HEAD(i32* %151)
  store i32 0, i32* %22, align 4
  store i32 255, i32* %23, align 4
  %153 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %154 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %208

156:                                              ; preds = %130
  store i32 1, i32* %22, align 4
  %157 = load %struct.device*, %struct.device** %10, align 8
  %158 = call %struct.TYPE_8__* @to_usb_device(%struct.device* %157)
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  switch i32 %160, label %206 [
    i32 128, label %161
    i32 129, label %161
    i32 131, label %161
  ]

161:                                              ; preds = %156, %156, %156
  %162 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %163 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %164, 8
  %166 = call i32 @fls(i32 %165)
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* %21, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  store i32 7, i32* %21, align 4
  br label %170

170:                                              ; preds = %169, %161
  store i32 16, i32* %23, align 4
  %171 = load %struct.device*, %struct.device** %10, align 8
  %172 = call %struct.TYPE_8__* @to_usb_device(%struct.device* %171)
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @USB_QUIRK_LINEAR_FRAME_INTR_BINTERVAL, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %170
  %179 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %180 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @fls(i32 %181)
  %183 = add nsw i32 %182, 3
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* %23, align 4
  %186 = call i32 @clamp(i32 %183, i32 %184, i32 %185)
  store i32 %186, i32* %21, align 4
  %187 = load i32, i32* %21, align 4
  store i32 %187, i32* %23, align 4
  store i32 %187, i32* %22, align 4
  br label %188

188:                                              ; preds = %178, %170
  %189 = load %struct.device*, %struct.device** %10, align 8
  %190 = call %struct.TYPE_8__* @to_usb_device(%struct.device* %189)
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @USB_QUIRK_LINEAR_UFRAME_INTR_BINTERVAL, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %188
  %197 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %198 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @fls(i32 %199)
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %23, align 4
  %203 = call i32 @clamp(i32 %200, i32 %201, i32 %202)
  store i32 %203, i32* %21, align 4
  %204 = load i32, i32* %21, align 4
  store i32 %204, i32* %23, align 4
  store i32 %204, i32* %22, align 4
  br label %205

205:                                              ; preds = %196, %188
  br label %207

206:                                              ; preds = %156
  store i32 10, i32* %21, align 4
  br label %207

207:                                              ; preds = %206, %205
  br label %221

208:                                              ; preds = %130
  %209 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %210 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  store i32 1, i32* %22, align 4
  store i32 16, i32* %23, align 4
  %213 = load %struct.device*, %struct.device** %10, align 8
  %214 = call %struct.TYPE_8__* @to_usb_device(%struct.device* %213)
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  switch i32 %216, label %218 [
    i32 131, label %217
  ]

217:                                              ; preds = %212
  store i32 7, i32* %21, align 4
  br label %219

218:                                              ; preds = %212
  store i32 4, i32* %21, align 4
  br label %219

219:                                              ; preds = %218, %217
  br label %220

220:                                              ; preds = %219, %208
  br label %221

221:                                              ; preds = %220, %207
  %222 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %223 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %22, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %229 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %23, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %250

233:                                              ; preds = %227, %221
  %234 = load %struct.device*, %struct.device** %10, align 8
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %239 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %242 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %21, align 4
  %245 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %234, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0), i32 %235, i32 %236, i32 %237, i32 %240, i32 %243, i32 %244)
  %246 = load i32, i32* %21, align 4
  %247 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %248 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  store i32 %246, i32* %249, align 4
  br label %250

250:                                              ; preds = %233, %227
  %251 = load %struct.device*, %struct.device** %10, align 8
  %252 = call %struct.TYPE_8__* @to_usb_device(%struct.device* %251)
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 130
  br i1 %255, label %256, label %286

256:                                              ; preds = %250
  %257 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %258 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %286

260:                                              ; preds = %256
  %261 = load %struct.device*, %struct.device** %10, align 8
  %262 = load i32, i32* %11, align 4
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %13, align 4
  %265 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %266 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %261, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0), i32 %262, i32 %263, i32 %264, i32 %267)
  %269 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %270 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %271 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 3
  store i32 %269, i32* %272, align 8
  %273 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %274 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  store i32 1, i32* %275, align 4
  %276 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %277 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %276, i32 0, i32 2
  %278 = call i32 @usb_endpoint_maxp(%struct.TYPE_7__* %277)
  %279 = icmp sgt i32 %278, 8
  br i1 %279, label %280, label %285

280:                                              ; preds = %260
  %281 = call i8* @cpu_to_le16(i32 8)
  %282 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %283 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 2
  store i8* %281, i8** %284, align 8
  br label %285

285:                                              ; preds = %280, %260
  br label %286

286:                                              ; preds = %285, %256, %250
  %287 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %288 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %287, i32 0, i32 2
  %289 = call i32 @usb_endpoint_maxp(%struct.TYPE_7__* %288)
  store i32 %289, i32* %25, align 4
  %290 = load i32, i32* %25, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %286
  %293 = load %struct.device*, %struct.device** %10, align 8
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* %13, align 4
  %297 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %298 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %293, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i32 %294, i32 %295, i32 %296, i32 %299)
  br label %433

301:                                              ; preds = %286
  store i32 0, i32* %22, align 4
  %302 = load %struct.device*, %struct.device** %10, align 8
  %303 = call %struct.TYPE_8__* @to_usb_device(%struct.device* %302)
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  switch i32 %305, label %329 [
    i32 130, label %306
    i32 132, label %308
    i32 131, label %310
    i32 129, label %331
    i32 128, label %331
  ]

306:                                              ; preds = %301
  %307 = load i16*, i16** @low_speed_maxpacket_maxes, align 8
  store i16* %307, i16** %26, align 8
  br label %333

308:                                              ; preds = %301
  %309 = load i16*, i16** @full_speed_maxpacket_maxes, align 8
  store i16* %309, i16** %26, align 8
  br label %333

310:                                              ; preds = %301
  %311 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %312 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %310
  %315 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %316 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %328

318:                                              ; preds = %314, %310
  %319 = load i32, i32* %25, align 4
  %320 = call i32 @BIT(i32 12)
  %321 = call i32 @BIT(i32 11)
  %322 = or i32 %320, %321
  %323 = and i32 %319, %322
  store i32 %323, i32* %22, align 4
  %324 = load i32, i32* %22, align 4
  %325 = xor i32 %324, -1
  %326 = load i32, i32* %25, align 4
  %327 = and i32 %326, %325
  store i32 %327, i32* %25, align 4
  br label %328

328:                                              ; preds = %318, %314
  br label %329

329:                                              ; preds = %301, %328
  %330 = load i16*, i16** @high_speed_maxpacket_maxes, align 8
  store i16* %330, i16** %26, align 8
  br label %333

331:                                              ; preds = %301, %301
  %332 = load i16*, i16** @super_speed_maxpacket_maxes, align 8
  store i16* %332, i16** %26, align 8
  br label %333

333:                                              ; preds = %331, %329, %308, %306
  %334 = load i16*, i16** %26, align 8
  %335 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %336 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %335, i32 0, i32 2
  %337 = call i64 @usb_endpoint_type(%struct.TYPE_7__* %336)
  %338 = getelementptr inbounds i16, i16* %334, i64 %337
  %339 = load i16, i16* %338, align 2
  %340 = zext i16 %339 to i32
  store i32 %340, i32* %23, align 4
  %341 = load i32, i32* %25, align 4
  %342 = load i32, i32* %23, align 4
  %343 = icmp ugt i32 %341, %342
  br i1 %343, label %344, label %363

344:                                              ; preds = %333
  %345 = load %struct.device*, %struct.device** %10, align 8
  %346 = load i32, i32* %11, align 4
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* %13, align 4
  %349 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %350 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %25, align 4
  %353 = load i32, i32* %23, align 4
  %354 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %345, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.6, i64 0, i64 0), i32 %346, i32 %347, i32 %348, i32 %351, i32 %352, i32 %353)
  %355 = load i32, i32* %23, align 4
  store i32 %355, i32* %25, align 4
  %356 = load i32, i32* %22, align 4
  %357 = load i32, i32* %25, align 4
  %358 = or i32 %356, %357
  %359 = call i8* @cpu_to_le16(i32 %358)
  %360 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %361 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 2
  store i8* %359, i8** %362, align 8
  br label %363

363:                                              ; preds = %344, %333
  %364 = load %struct.device*, %struct.device** %10, align 8
  %365 = call %struct.TYPE_8__* @to_usb_device(%struct.device* %364)
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = icmp eq i32 %367, 131
  br i1 %368, label %369, label %387

369:                                              ; preds = %363
  %370 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %371 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %387

373:                                              ; preds = %369
  %374 = load i32, i32* %25, align 4
  %375 = icmp ne i32 %374, 512
  br i1 %375, label %376, label %386

376:                                              ; preds = %373
  %377 = load %struct.device*, %struct.device** %10, align 8
  %378 = load i32, i32* %11, align 4
  %379 = load i32, i32* %12, align 4
  %380 = load i32, i32* %13, align 4
  %381 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %382 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* %25, align 4
  %385 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %377, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0), i32 %378, i32 %379, i32 %380, i32 %383, i32 %384)
  br label %386

386:                                              ; preds = %376, %373
  br label %387

387:                                              ; preds = %386, %369, %363
  %388 = load %struct.device*, %struct.device** %10, align 8
  %389 = call %struct.TYPE_8__* @to_usb_device(%struct.device* %388)
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = icmp sge i32 %391, 129
  br i1 %392, label %393, label %402

393:                                              ; preds = %387
  %394 = load %struct.device*, %struct.device** %10, align 8
  %395 = load i32, i32* %11, align 4
  %396 = load i32, i32* %12, align 4
  %397 = load i32, i32* %13, align 4
  %398 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %399 = load i8*, i8** %16, align 8
  %400 = load i32, i32* %17, align 4
  %401 = call i32 @usb_parse_ss_endpoint_companion(%struct.device* %394, i32 %395, i32 %396, i32 %397, %struct.usb_host_endpoint* %398, i8* %399, i32 %400)
  br label %402

402:                                              ; preds = %393, %387
  %403 = load i8*, i8** %16, align 8
  %404 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %405 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %404, i32 0, i32 0
  store i8* %403, i8** %405, align 8
  %406 = load i8*, i8** %16, align 8
  %407 = load i32, i32* %17, align 4
  %408 = load i32, i32* @USB_DT_ENDPOINT, align 4
  %409 = load i32, i32* @USB_DT_INTERFACE, align 4
  %410 = call i32 @find_next_descriptor(i8* %406, i32 %407, i32 %408, i32 %409, i32* %21)
  store i32 %410, i32* %22, align 4
  %411 = load i32, i32* %22, align 4
  %412 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %413 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %412, i32 0, i32 1
  store i32 %411, i32* %413, align 8
  %414 = load i8*, i8** %16, align 8
  %415 = load i8*, i8** %18, align 8
  %416 = ptrtoint i8* %414 to i64
  %417 = ptrtoint i8* %415 to i64
  %418 = sub i64 %416, %417
  %419 = load i32, i32* %22, align 4
  %420 = sext i32 %419 to i64
  %421 = add nsw i64 %418, %420
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %24, align 4
  %423 = load i32, i32* %21, align 4
  %424 = icmp sgt i32 %423, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %402
  %426 = load %struct.device*, %struct.device** %10, align 8
  %427 = load i32, i32* %21, align 4
  %428 = load i32, i32* %21, align 4
  %429 = call i32 @plural(i32 %428)
  %430 = call i32 @dev_dbg(%struct.device* %426, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %427, i32 %429, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %431

431:                                              ; preds = %425, %402
  %432 = load i32, i32* %24, align 4
  store i32 %432, i32* %9, align 4
  br label %448

433:                                              ; preds = %292, %117, %94, %78, %56
  %434 = load i8*, i8** %16, align 8
  %435 = load i32, i32* %17, align 4
  %436 = load i32, i32* @USB_DT_ENDPOINT, align 4
  %437 = load i32, i32* @USB_DT_INTERFACE, align 4
  %438 = call i32 @find_next_descriptor(i8* %434, i32 %435, i32 %436, i32 %437, i32* null)
  store i32 %438, i32* %22, align 4
  %439 = load i8*, i8** %16, align 8
  %440 = load i8*, i8** %18, align 8
  %441 = ptrtoint i8* %439 to i64
  %442 = ptrtoint i8* %440 to i64
  %443 = sub i64 %441, %442
  %444 = load i32, i32* %22, align 4
  %445 = sext i32 %444 to i64
  %446 = add nsw i64 %443, %445
  %447 = trunc i64 %446 to i32
  store i32 %447, i32* %9, align 4
  br label %448

448:                                              ; preds = %433, %431
  %449 = load i32, i32* %9, align 4
  ret i32 %449
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.usb_endpoint_descriptor*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.TYPE_8__* @to_usb_device(%struct.device*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.TYPE_7__*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @usb_endpoint_type(%struct.TYPE_7__*) #1

declare dso_local i32 @usb_parse_ss_endpoint_companion(%struct.device*, i32, i32, i32, %struct.usb_host_endpoint*, i8*, i32) #1

declare dso_local i32 @find_next_descriptor(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8*) #1

declare dso_local i32 @plural(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
