; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_qcserial.c_qcprobe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_qcserial.c_qcprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_8__*, %struct.device }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.usb_host_interface*, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.usb_device_id = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Num Interfaces = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"This Interface = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"QDL port found\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"unknown number of interfaces: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Gobi 1K DM/DIAG interface found\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Modem port found\0A\00", align 1
@QUECTEL_EC20_PID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Gobi 2K+ DM/DIAG interface found\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Gobi 2K+ NMEA GPS interface found\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"DM/DIAG interface found\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"NMEA GPS interface found\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Huawei type serial port found (%02x/%02x/%02x)\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"unsupported device layout type: %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Could not set interface, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_device_id*)* @qcprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcprobe(%struct.usb_serial* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %12 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %13 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %15, align 8
  store %struct.usb_host_interface* %16, %struct.usb_host_interface** %5, align 8
  %17 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %18 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  store %struct.device* %20, %struct.device** %6, align 8
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %24 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %216

30:                                               ; preds = %2
  %31 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %32 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %43 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %109

51:                                               ; preds = %30
  %52 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %53 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %60 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.usb_host_interface*, %struct.usb_host_interface** %62, align 8
  %64 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %63, i64 1
  store %struct.usb_host_interface* %64, %struct.usb_host_interface** %5, align 8
  br label %74

65:                                               ; preds = %51
  %66 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %67 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %216

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %76 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %108

80:                                               ; preds = %74
  %81 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %82 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = call i64 @usb_endpoint_is_bulk_in(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %80
  %89 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %90 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = call i64 @usb_endpoint_is_bulk_out(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %100 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %107

106:                                              ; preds = %96
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %88, %80, %74
  br label %216

109:                                              ; preds = %30
  store i32 0, i32* %10, align 4
  %110 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %111 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %209 [
    i32 131, label %113
    i32 130, label %138
    i32 128, label %174
    i32 129, label %187
  ]

113:                                              ; preds = %109
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = icmp sgt i32 %117, 4
  br i1 %118, label %119, label %123

119:                                              ; preds = %116, %113
  %120 = load %struct.device*, %struct.device** %6, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  store i32 -1, i32* %10, align 4
  br label %216

123:                                              ; preds = %116
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %137

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.device*, %struct.device** %6, align 8
  %134 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %136

135:                                              ; preds = %129
  store i32 -1, i32* %10, align 4
  br label %136

136:                                              ; preds = %135, %132
  br label %137

137:                                              ; preds = %136, %126
  br label %215

138:                                              ; preds = %109
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %139, 5
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %143 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @QUECTEL_EC20_PID, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.device*, %struct.device** %6, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @handle_quectel_ec20(%struct.device* %148, i32 %149)
  store i32 %150, i32* %10, align 4
  br label %216

151:                                              ; preds = %141, %138
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 3
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = icmp sgt i32 %155, 4
  br i1 %156, label %157, label %161

157:                                              ; preds = %154, %151
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @dev_err(%struct.device* %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  store i32 -1, i32* %10, align 4
  br label %216

161:                                              ; preds = %154
  %162 = load i32, i32* %9, align 4
  switch i32 %162, label %173 [
    i32 0, label %163
    i32 1, label %164
    i32 2, label %167
    i32 3, label %170
  ]

163:                                              ; preds = %161
  store i32 -1, i32* %10, align 4
  br label %173

164:                                              ; preds = %161
  %165 = load %struct.device*, %struct.device** %6, align 8
  %166 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %165, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %173

167:                                              ; preds = %161
  %168 = load %struct.device*, %struct.device** %6, align 8
  %169 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %173

170:                                              ; preds = %161
  %171 = load %struct.device*, %struct.device** %6, align 8
  %172 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %173

173:                                              ; preds = %161, %170, %167, %164, %163
  br label %215

174:                                              ; preds = %109
  %175 = load i32, i32* %9, align 4
  switch i32 %175, label %185 [
    i32 0, label %176
    i32 2, label %179
    i32 3, label %182
  ]

176:                                              ; preds = %174
  %177 = load %struct.device*, %struct.device** %6, align 8
  %178 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %186

179:                                              ; preds = %174
  %180 = load %struct.device*, %struct.device** %6, align 8
  %181 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %180, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %186

182:                                              ; preds = %174
  %183 = load %struct.device*, %struct.device** %6, align 8
  %184 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %183, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %186

185:                                              ; preds = %174
  store i32 -1, i32* %10, align 4
  br label %186

186:                                              ; preds = %185, %182, %179, %176
  br label %215

187:                                              ; preds = %109
  %188 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %189 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  switch i32 %191, label %193 [
    i32 7, label %192
    i32 55, label %192
    i32 103, label %192
    i32 8, label %192
    i32 56, label %192
    i32 104, label %192
    i32 9, label %192
    i32 57, label %192
    i32 105, label %192
    i32 22, label %192
    i32 70, label %192
    i32 118, label %192
  ]

192:                                              ; preds = %187, %187, %187, %187, %187, %187, %187, %187, %187, %187, %187, %187
  store i32 -1, i32* %10, align 4
  br label %208

193:                                              ; preds = %187
  %194 = load %struct.device*, %struct.device** %6, align 8
  %195 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %196 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %200 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %204 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %194, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i64 %198, i32 %202, i32 %206)
  br label %208

208:                                              ; preds = %193, %192
  br label %215

209:                                              ; preds = %109
  %210 = load %struct.device*, %struct.device** %6, align 8
  %211 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %212 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @dev_err(%struct.device* %210, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %209, %208, %186, %173, %137
  br label %216

216:                                              ; preds = %215, %157, %147, %119, %108, %72, %29
  %217 = load i32, i32* %10, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %216
  %220 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %221 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %220, i32 0, i32 0
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @usb_set_interface(%struct.TYPE_12__* %222, i32 %223, i32 %224)
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %219
  %229 = load %struct.device*, %struct.device** %6, align 8
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @dev_err(%struct.device* %229, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @ENODEV, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %7, align 4
  br label %234

234:                                              ; preds = %228, %219
  br label %235

235:                                              ; preds = %234, %216
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %235
  %239 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 @usb_set_serial_data(%struct.usb_serial* %239, i8* %242)
  br label %244

244:                                              ; preds = %238, %235
  %245 = load i32, i32* %7, align 4
  ret i32 %245
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(i32*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @handle_quectel_ec20(%struct.device*, i32) #1

declare dso_local i32 @usb_set_interface(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @usb_set_serial_data(%struct.usb_serial*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
