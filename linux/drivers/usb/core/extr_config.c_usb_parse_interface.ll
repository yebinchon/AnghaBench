; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_config.c_usb_parse_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_config.c_usb_parse_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_host_config = type { %struct.usb_interface_cache**, %struct.TYPE_3__ }
%struct.usb_interface_cache = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_interface_descriptor = type { i64, i32, i32 }
%struct.usb_descriptor_header = type { i64 }

@USB_DT_INTERFACE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"Duplicate descriptor for config %d interface %d altsetting %d, skipping\0A\00", align 1
@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@USB_DT_INTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"skipped %d descriptor%s after %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@USB_MAXENDPOINTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [92 x i8] c"too many endpoints for config %d interface %d altsetting %d: %d, using maximum allowed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [120 x i8] c"config %d interface %d altsetting %d has %d endpoint descriptor%s, different from the interface descriptor's value: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.usb_host_config*, i8*, i32, i32*, i32*)* @usb_parse_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_parse_interface(%struct.device* %0, i32 %1, %struct.usb_host_config* %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_host_config*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.usb_interface_descriptor*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.usb_interface_cache*, align 8
  %21 = alloca %struct.usb_host_interface*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.usb_host_config* %2, %struct.usb_host_config** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load i8*, i8** %12, align 8
  store i8* %28, i8** %16, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = bitcast i8* %29 to %struct.usb_interface_descriptor*
  store %struct.usb_interface_descriptor* %30, %struct.usb_interface_descriptor** %17, align 8
  %31 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %17, align 8
  %32 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %12, align 8
  %36 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %17, align 8
  %37 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %17, align 8
  %44 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USB_DT_INTERFACE_SIZE, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %7
  br label %261

49:                                               ; preds = %7
  store %struct.usb_interface_cache* null, %struct.usb_interface_cache** %20, align 8
  %50 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %17, align 8
  %51 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %18, align 4
  store i32 0, i32* %22, align 4
  br label %53

53:                                               ; preds = %77, %49
  %54 = load i32, i32* %22, align 4
  %55 = load %struct.usb_host_config*, %struct.usb_host_config** %11, align 8
  %56 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %53
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %22, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.usb_host_config*, %struct.usb_host_config** %11, align 8
  %70 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %69, i32 0, i32 0
  %71 = load %struct.usb_interface_cache**, %struct.usb_interface_cache*** %70, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.usb_interface_cache*, %struct.usb_interface_cache** %71, i64 %73
  %75 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %74, align 8
  store %struct.usb_interface_cache* %75, %struct.usb_interface_cache** %20, align 8
  br label %80

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %22, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %22, align 4
  br label %53

80:                                               ; preds = %68, %53
  %81 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %82 = icmp ne %struct.usb_interface_cache* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %85 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %22, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83, %80
  br label %261

94:                                               ; preds = %83
  %95 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %17, align 8
  %96 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %98 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %99 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %98, i32 0, i32 1
  %100 = load %struct.usb_host_interface*, %struct.usb_host_interface** %99, align 8
  %101 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %100, i64 0
  store %struct.usb_host_interface* %101, %struct.usb_host_interface** %21, align 8
  br label %102

102:                                              ; preds = %122, %94
  %103 = load i32, i32* %22, align 4
  %104 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %105 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %102
  %109 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %110 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %19, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.device*, %struct.device** %9, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %19, align 4
  %120 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_warn(%struct.device* %116, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118, i32 %119)
  br label %261

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %22, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %22, align 4
  %125 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %126 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %125, i32 1
  store %struct.usb_host_interface* %126, %struct.usb_host_interface** %21, align 8
  br label %102

127:                                              ; preds = %102
  %128 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %129 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %133 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %132, i32 0, i32 3
  %134 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %17, align 8
  %135 = load i64, i64* @USB_DT_INTERFACE_SIZE, align 8
  %136 = call i32 @memcpy(%struct.TYPE_4__* %133, %struct.usb_interface_descriptor* %134, i64 %135)
  %137 = load i8*, i8** %12, align 8
  %138 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %139 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %143 = load i64, i64* @USB_DT_INTERFACE, align 8
  %144 = call i32 @find_next_descriptor(i8* %140, i32 %141, i64 %142, i64 %143, i32* %23)
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %22, align 4
  %146 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %147 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %23, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %127
  %151 = load %struct.device*, %struct.device** %9, align 8
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %23, align 4
  %154 = call i32 @plural(i32 %153)
  %155 = call i32 @dev_dbg(%struct.device* %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %156

156:                                              ; preds = %150, %127
  %157 = load i32, i32* %22, align 4
  %158 = load i8*, i8** %12, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %12, align 8
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %13, align 4
  %163 = sub nsw i32 %162, %161
  store i32 %163, i32* %13, align 4
  %164 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %165 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %27, align 4
  store i32 %167, i32* %26, align 4
  %168 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %169 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  store i32 0, i32* %170, align 4
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* @USB_MAXENDPOINTS, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %156
  %175 = load %struct.device*, %struct.device** %9, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %26, align 4
  %180 = load i32, i32* @USB_MAXENDPOINTS, align 4
  %181 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_warn(%struct.device* %175, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), i32 %176, i32 %177, i32 %178, i32 %179, i32 %180)
  %182 = load i32, i32* @USB_MAXENDPOINTS, align 4
  store i32 %182, i32* %26, align 4
  br label %183

183:                                              ; preds = %174, %156
  %184 = load i32, i32* %26, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %183
  %187 = load i32, i32* %26, align 4
  %188 = sext i32 %187 to i64
  %189 = mul i64 4, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %24, align 4
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* @GFP_KERNEL, align 4
  %193 = call i32 @kzalloc(i32 %191, i32 %192)
  %194 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %195 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 4
  %196 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %197 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %186
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %8, align 4
  br label %276

203:                                              ; preds = %186
  br label %204

204:                                              ; preds = %203, %183
  store i32 0, i32* %23, align 4
  br label %205

205:                                              ; preds = %230, %204
  %206 = load i32, i32* %13, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %240

208:                                              ; preds = %205
  %209 = load i8*, i8** %12, align 8
  %210 = bitcast i8* %209 to %struct.usb_descriptor_header*
  %211 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @USB_DT_INTERFACE, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  br label %240

216:                                              ; preds = %208
  %217 = load %struct.device*, %struct.device** %9, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %19, align 4
  %221 = load %struct.usb_host_interface*, %struct.usb_host_interface** %21, align 8
  %222 = load i32, i32* %26, align 4
  %223 = load i8*, i8** %12, align 8
  %224 = load i32, i32* %13, align 4
  %225 = call i32 @usb_parse_endpoint(%struct.device* %217, i32 %218, i32 %219, i32 %220, %struct.usb_host_interface* %221, i32 %222, i8* %223, i32 %224)
  store i32 %225, i32* %25, align 4
  %226 = load i32, i32* %25, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %216
  %229 = load i32, i32* %25, align 4
  store i32 %229, i32* %8, align 4
  br label %276

230:                                              ; preds = %216
  %231 = load i32, i32* %23, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %23, align 4
  %233 = load i32, i32* %25, align 4
  %234 = load i8*, i8** %12, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8* %236, i8** %12, align 8
  %237 = load i32, i32* %25, align 4
  %238 = load i32, i32* %13, align 4
  %239 = sub nsw i32 %238, %237
  store i32 %239, i32* %13, align 4
  br label %205

240:                                              ; preds = %215, %205
  %241 = load i32, i32* %23, align 4
  %242 = load i32, i32* %27, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %254

244:                                              ; preds = %240
  %245 = load %struct.device*, %struct.device** %9, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* %23, align 4
  %250 = load i32, i32* %23, align 4
  %251 = call i32 @plural(i32 %250)
  %252 = load i32, i32* %27, align 4
  %253 = call i32 (%struct.device*, i8*, i32, i32, i32, ...) @dev_warn(%struct.device* %245, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.4, i64 0, i64 0), i32 %246, i32 %247, i32 %248, i32 %249, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %244, %240
  %255 = load i8*, i8** %12, align 8
  %256 = load i8*, i8** %16, align 8
  %257 = ptrtoint i8* %255 to i64
  %258 = ptrtoint i8* %256 to i64
  %259 = sub i64 %257, %258
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %8, align 4
  br label %276

261:                                              ; preds = %115, %93, %48
  %262 = load i8*, i8** %12, align 8
  %263 = load i32, i32* %13, align 4
  %264 = load i64, i64* @USB_DT_INTERFACE, align 8
  %265 = load i64, i64* @USB_DT_INTERFACE, align 8
  %266 = call i32 @find_next_descriptor(i8* %262, i32 %263, i64 %264, i64 %265, i32* null)
  store i32 %266, i32* %22, align 4
  %267 = load i8*, i8** %12, align 8
  %268 = load i8*, i8** %16, align 8
  %269 = ptrtoint i8* %267 to i64
  %270 = ptrtoint i8* %268 to i64
  %271 = sub i64 %269, %270
  %272 = load i32, i32* %22, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %271, %273
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %8, align 4
  br label %276

276:                                              ; preds = %261, %254, %228, %200
  %277 = load i32, i32* %8, align 4
  ret i32 %277
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.usb_interface_descriptor*, i64) #1

declare dso_local i32 @find_next_descriptor(i8*, i32, i64, i64, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8*) #1

declare dso_local i32 @plural(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @usb_parse_endpoint(%struct.device*, i32, i32, i32, %struct.usb_host_interface*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
