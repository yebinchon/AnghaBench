; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_config.c_usb_parse_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_config.c_usb_parse_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.usb_host_config = type { i8*, i32, %struct.usb_interface_cache**, %struct.TYPE_6__, %struct.usb_interface_assoc_descriptor** }
%struct.usb_interface_cache = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.usb_interface_assoc_descriptor = type { i32 }
%struct.usb_descriptor_header = type { i32, i32 }
%struct.usb_interface_descriptor = type { i32, i32 }

@USB_MAXINTERFACES = common dso_local global i32 0, align 4
@USB_DT_CONFIG_SIZE = common dso_local global i32 0, align 4
@USB_DT_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"invalid descriptor for config index %d: type = 0x%X, length = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"config %d has too many interfaces: %d, using maximum allowed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"config %d descriptor has %d excess byte%s, ignoring\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"config %d has an invalid descriptor of length %d, skipping remainder of the config\0A\00", align 1
@USB_DT_INTERFACE = common dso_local global i32 0, align 4
@USB_DT_INTERFACE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [70 x i8] c"config %d has an invalid interface descriptor of length %d, skipping\0A\00", align 1
@USB_QUIRK_HONOR_BNUMINTERFACES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [109 x i8] c"config %d has more interface descriptors, than it declares in bNumInterfaces, ignoring interface number: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"config %d has an invalid interface number: %d but max is %d\0A\00", align 1
@USB_DT_INTERFACE_ASSOCIATION = common dso_local global i32 0, align 4
@USB_DT_INTERFACE_ASSOCIATION_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [82 x i8] c"config %d has an invalid interface association descriptor of length %d, skipping\0A\00", align 1
@USB_MAXIADS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [85 x i8] c"found more Interface Association Descriptors than allocated for in configuration %d\0A\00", align 1
@USB_DT_DEVICE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [68 x i8] c"config %d contains an unexpected descriptor of type 0x%X, skipping\0A\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"config %d has %d interface%s, different from the descriptor's value: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"config %d has no interfaces?\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"config %d has no interface number %d\0A\00", align 1
@USB_MAXALTSETTING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [87 x i8] c"too many alternate settings for config %d interface %d: %d, using maximum allowed: %d\0A\00", align 1
@altsetting = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"skipped %d descriptor%s after %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"configuration\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"config %d interface %d has no altsetting %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, %struct.usb_host_config*, i8*, i32)* @usb_parse_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_parse_configuration(%struct.usb_device* %0, i32 %1, %struct.usb_host_config* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_host_config*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.usb_interface_cache*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.usb_descriptor_header*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.usb_interface_descriptor*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.usb_interface_assoc_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_host_config* %2, %struct.usb_host_config** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %33 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 1
  store %struct.device* %34, %struct.device** %12, align 8
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %13, align 8
  %36 = load i32, i32* @USB_MAXINTERFACES, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %25, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %26, align 8
  %40 = load i32, i32* @USB_MAXINTERFACES, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %27, align 8
  store i32 0, i32* %28, align 4
  %43 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %44 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %43, i32 0, i32 3
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %47 = call i32 @memcpy(%struct.TYPE_6__* %44, i8* %45, i32 %46)
  %48 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %49 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %16, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %53 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %56 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @USB_DT_CONFIG, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %75, label %61

61:                                               ; preds = %5
  %62 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %63 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %70 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %68, %61, %5
  %76 = load %struct.device*, %struct.device** %12, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %79 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %83 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %81, i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  store i32 1, i32* %29, align 4
  br label %574

89:                                               ; preds = %68
  %90 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %91 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %14, align 4
  %94 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %95 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %10, align 8
  %101 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %102 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @USB_MAXINTERFACES, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %89
  %111 = load %struct.device*, %struct.device** %12, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @USB_MAXINTERFACES, align 4
  %115 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %111, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* @USB_MAXINTERFACES, align 4
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %110, %89
  store i32 0, i32* %19, align 4
  %118 = load i8*, i8** %10, align 8
  store i8* %118, i8** %21, align 8
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %22, align 4
  br label %120

120:                                              ; preds = %317, %117
  %121 = load i32, i32* %22, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %329

123:                                              ; preds = %120
  %124 = load i32, i32* %22, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ult i64 %125, 8
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load %struct.device*, %struct.device** %12, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %22, align 4
  %132 = call i32 @plural(i32 %131)
  %133 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %130, i32 %132)
  br label %329

134:                                              ; preds = %123
  %135 = load i8*, i8** %21, align 8
  %136 = bitcast i8* %135 to %struct.usb_descriptor_header*
  store %struct.usb_descriptor_header* %136, %struct.usb_descriptor_header** %23, align 8
  %137 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %138 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %22, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %134
  %143 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %144 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %154

147:                                              ; preds = %142, %134
  %148 = load %struct.device*, %struct.device** %12, align 8
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %151 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %148, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %152)
  br label %329

154:                                              ; preds = %142
  %155 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %156 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @USB_DT_INTERFACE, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %255

160:                                              ; preds = %154
  %161 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %162 = bitcast %struct.usb_descriptor_header* %161 to %struct.usb_interface_descriptor*
  store %struct.usb_interface_descriptor* %162, %struct.usb_interface_descriptor** %30, align 8
  %163 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %30, align 8
  %164 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @USB_DT_INTERFACE_SIZE, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %160
  %169 = load %struct.device*, %struct.device** %12, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %30, align 8
  %172 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %169, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %170, i32 %173)
  br label %317

175:                                              ; preds = %160
  %176 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %30, align 8
  %177 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %31, align 4
  %179 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %180 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @USB_QUIRK_HONOR_BNUMINTERFACES, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %175
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %16, align 4
  %188 = icmp sge i32 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load %struct.device*, %struct.device** %12, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %31, align 4
  %193 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %190, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 %191, i32 %192)
  br label %317

194:                                              ; preds = %185, %175
  %195 = load i32, i32* %31, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load %struct.device*, %struct.device** %12, align 8
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %31, align 4
  %202 = load i32, i32* %16, align 4
  %203 = sub nsw i32 %202, 1
  %204 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %199, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %200, i32 %201, i32 %203)
  br label %205

205:                                              ; preds = %198, %194
  store i32 0, i32* %17, align 4
  br label %206

206:                                              ; preds = %219, %205
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %19, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %206
  %211 = load i32, i32* %17, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %39, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %31, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  br label %222

218:                                              ; preds = %210
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %17, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %17, align 4
  br label %206

222:                                              ; preds = %217, %206
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %19, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %239

226:                                              ; preds = %222
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %42, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %230, 255
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %42, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %232, %226
  br label %254

239:                                              ; preds = %222
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* @USB_MAXINTERFACES, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %239
  %244 = load i32, i32* %31, align 4
  %245 = load i32, i32* %19, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %39, i64 %246
  store i32 %244, i32* %247, align 4
  %248 = load i32, i32* %19, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %42, i64 %249
  store i32 1, i32* %250, align 4
  %251 = load i32, i32* %19, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %19, align 4
  br label %253

253:                                              ; preds = %243, %239
  br label %254

254:                                              ; preds = %253, %238
  br label %316

255:                                              ; preds = %154
  %256 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %257 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @USB_DT_INTERFACE_ASSOCIATION, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %295

261:                                              ; preds = %255
  %262 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %263 = bitcast %struct.usb_descriptor_header* %262 to %struct.usb_interface_assoc_descriptor*
  store %struct.usb_interface_assoc_descriptor* %263, %struct.usb_interface_assoc_descriptor** %32, align 8
  %264 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %32, align 8
  %265 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @USB_DT_INTERFACE_ASSOCIATION_SIZE, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %261
  %270 = load %struct.device*, %struct.device** %12, align 8
  %271 = load i32, i32* %14, align 4
  %272 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %32, align 8
  %273 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %270, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0), i32 %271, i32 %274)
  br label %317

276:                                              ; preds = %261
  %277 = load i32, i32* %28, align 4
  %278 = load i32, i32* @USB_MAXIADS, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = load %struct.device*, %struct.device** %12, align 8
  %282 = load i32, i32* %14, align 4
  %283 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %281, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.8, i64 0, i64 0), i32 %282)
  br label %294

284:                                              ; preds = %276
  %285 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %32, align 8
  %286 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %287 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %286, i32 0, i32 4
  %288 = load %struct.usb_interface_assoc_descriptor**, %struct.usb_interface_assoc_descriptor*** %287, align 8
  %289 = load i32, i32* %28, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %288, i64 %290
  store %struct.usb_interface_assoc_descriptor* %285, %struct.usb_interface_assoc_descriptor** %291, align 8
  %292 = load i32, i32* %28, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %28, align 4
  br label %294

294:                                              ; preds = %284, %280
  br label %315

295:                                              ; preds = %255
  %296 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %297 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @USB_DT_DEVICE, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %307, label %301

301:                                              ; preds = %295
  %302 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %303 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @USB_DT_CONFIG, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %301, %295
  %308 = load %struct.device*, %struct.device** %12, align 8
  %309 = load i32, i32* %14, align 4
  %310 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %311 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %308, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i32 %309, i32 %312)
  br label %314

314:                                              ; preds = %307, %301
  br label %315

315:                                              ; preds = %314, %294
  br label %316

316:                                              ; preds = %315, %254
  br label %317

317:                                              ; preds = %316, %269, %189, %168
  %318 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %319 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i8*, i8** %21, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i8, i8* %321, i64 %322
  store i8* %323, i8** %21, align 8
  %324 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %325 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %22, align 4
  %328 = sub nsw i32 %327, %326
  store i32 %328, i32* %22, align 4
  br label %120

329:                                              ; preds = %147, %127, %120
  %330 = load i8*, i8** %21, align 8
  %331 = load i8*, i8** %10, align 8
  %332 = ptrtoint i8* %330 to i64
  %333 = ptrtoint i8* %331 to i64
  %334 = sub i64 %332, %333
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %11, align 4
  %336 = load i8*, i8** %21, align 8
  %337 = load i8*, i8** %13, align 8
  %338 = ptrtoint i8* %336 to i64
  %339 = ptrtoint i8* %337 to i64
  %340 = sub i64 %338, %339
  %341 = trunc i64 %340 to i32
  %342 = call i32 @cpu_to_le16(i32 %341)
  %343 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %344 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 3
  store i32 %342, i32* %345, align 4
  %346 = load i32, i32* %19, align 4
  %347 = load i32, i32* %15, align 4
  %348 = icmp ne i32 %346, %347
  br i1 %348, label %349, label %357

349:                                              ; preds = %329
  %350 = load %struct.device*, %struct.device** %12, align 8
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* %19, align 4
  %354 = call i32 @plural(i32 %353)
  %355 = load i32, i32* %16, align 4
  %356 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %350, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i32 %351, i32 %352, i32 %354, i32 %355)
  br label %365

357:                                              ; preds = %329
  %358 = load i32, i32* %19, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %357
  %361 = load %struct.device*, %struct.device** %12, align 8
  %362 = load i32, i32* %14, align 4
  %363 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %361, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %362)
  br label %364

364:                                              ; preds = %360, %357
  br label %365

365:                                              ; preds = %364, %349
  %366 = load i32, i32* %19, align 4
  store i32 %366, i32* %15, align 4
  %367 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %368 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  store i32 %366, i32* %369, align 8
  store i32 0, i32* %17, align 4
  br label %370

370:                                              ; preds = %401, %365
  %371 = load i32, i32* %17, align 4
  %372 = load i32, i32* %15, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %404

374:                                              ; preds = %370
  store i32 0, i32* %18, align 4
  br label %375

375:                                              ; preds = %388, %374
  %376 = load i32, i32* %18, align 4
  %377 = load i32, i32* %15, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %379, label %391

379:                                              ; preds = %375
  %380 = load i32, i32* %18, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %39, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* %17, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %379
  br label %391

387:                                              ; preds = %379
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %18, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %18, align 4
  br label %375

391:                                              ; preds = %386, %375
  %392 = load i32, i32* %18, align 4
  %393 = load i32, i32* %15, align 4
  %394 = icmp sge i32 %392, %393
  br i1 %394, label %395, label %400

395:                                              ; preds = %391
  %396 = load %struct.device*, %struct.device** %12, align 8
  %397 = load i32, i32* %14, align 4
  %398 = load i32, i32* %17, align 4
  %399 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %396, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %397, i32 %398)
  br label %400

400:                                              ; preds = %395, %391
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %17, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %17, align 4
  br label %370

404:                                              ; preds = %370
  store i32 0, i32* %17, align 4
  br label %405

405:                                              ; preds = %454, %404
  %406 = load i32, i32* %17, align 4
  %407 = load i32, i32* %15, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %457

409:                                              ; preds = %405
  %410 = load i32, i32* %17, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %42, i64 %411
  %413 = load i32, i32* %412, align 4
  store i32 %413, i32* %18, align 4
  %414 = load i32, i32* %18, align 4
  %415 = load i32, i32* @USB_MAXALTSETTING, align 4
  %416 = icmp sgt i32 %414, %415
  br i1 %416, label %417, label %431

417:                                              ; preds = %409
  %418 = load %struct.device*, %struct.device** %12, align 8
  %419 = load i32, i32* %14, align 4
  %420 = load i32, i32* %17, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %39, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %18, align 4
  %425 = load i32, i32* @USB_MAXALTSETTING, align 4
  %426 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %418, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.13, i64 0, i64 0), i32 %419, i32 %423, i32 %424, i32 %425)
  %427 = load i32, i32* @USB_MAXALTSETTING, align 4
  store i32 %427, i32* %18, align 4
  %428 = load i32, i32* %17, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %42, i64 %429
  store i32 %427, i32* %430, align 4
  br label %431

431:                                              ; preds = %417, %409
  %432 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %433 = load i32, i32* @altsetting, align 4
  %434 = load i32, i32* %18, align 4
  %435 = call i32 @struct_size(%struct.usb_interface_cache* %432, i32 %433, i32 %434)
  %436 = load i32, i32* @GFP_KERNEL, align 4
  %437 = call %struct.usb_interface_cache* @kzalloc(i32 %435, i32 %436)
  store %struct.usb_interface_cache* %437, %struct.usb_interface_cache** %20, align 8
  %438 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %439 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %440 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %439, i32 0, i32 2
  %441 = load %struct.usb_interface_cache**, %struct.usb_interface_cache*** %440, align 8
  %442 = load i32, i32* %17, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.usb_interface_cache*, %struct.usb_interface_cache** %441, i64 %443
  store %struct.usb_interface_cache* %438, %struct.usb_interface_cache** %444, align 8
  %445 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %446 = icmp ne %struct.usb_interface_cache* %445, null
  br i1 %446, label %450, label %447

447:                                              ; preds = %431
  %448 = load i32, i32* @ENOMEM, align 4
  %449 = sub nsw i32 0, %448
  store i32 %449, i32* %6, align 4
  store i32 1, i32* %29, align 4
  br label %574

450:                                              ; preds = %431
  %451 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %452 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %451, i32 0, i32 2
  %453 = call i32 @kref_init(i32* %452)
  br label %454

454:                                              ; preds = %450
  %455 = load i32, i32* %17, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %17, align 4
  br label %405

457:                                              ; preds = %405
  %458 = load i8*, i8** %10, align 8
  %459 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %460 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %459, i32 0, i32 0
  store i8* %458, i8** %460, align 8
  %461 = load i8*, i8** %10, align 8
  %462 = load i32, i32* %11, align 4
  %463 = load i32, i32* @USB_DT_INTERFACE, align 4
  %464 = load i32, i32* @USB_DT_INTERFACE, align 4
  %465 = call i32 @find_next_descriptor(i8* %461, i32 %462, i32 %463, i32 %464, i32* %19)
  store i32 %465, i32* %17, align 4
  %466 = load i32, i32* %17, align 4
  %467 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %468 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %467, i32 0, i32 1
  store i32 %466, i32* %468, align 8
  %469 = load i32, i32* %19, align 4
  %470 = icmp sgt i32 %469, 0
  br i1 %470, label %471, label %477

471:                                              ; preds = %457
  %472 = load %struct.device*, %struct.device** %12, align 8
  %473 = load i32, i32* %19, align 4
  %474 = load i32, i32* %19, align 4
  %475 = call i32 @plural(i32 %474)
  %476 = call i32 @dev_dbg(%struct.device* %472, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %473, i32 %475, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  br label %477

477:                                              ; preds = %471, %457
  %478 = load i32, i32* %17, align 4
  %479 = load i8*, i8** %10, align 8
  %480 = sext i32 %478 to i64
  %481 = getelementptr inbounds i8, i8* %479, i64 %480
  store i8* %481, i8** %10, align 8
  %482 = load i32, i32* %17, align 4
  %483 = load i32, i32* %11, align 4
  %484 = sub nsw i32 %483, %482
  store i32 %484, i32* %11, align 4
  br label %485

485:                                              ; preds = %499, %477
  %486 = load i32, i32* %11, align 4
  %487 = icmp sgt i32 %486, 0
  br i1 %487, label %488, label %507

488:                                              ; preds = %485
  %489 = load %struct.device*, %struct.device** %12, align 8
  %490 = load i32, i32* %14, align 4
  %491 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %492 = load i8*, i8** %10, align 8
  %493 = load i32, i32* %11, align 4
  %494 = call i32 @usb_parse_interface(%struct.device* %489, i32 %490, %struct.usb_host_config* %491, i8* %492, i32 %493, i32* %39, i32* %42)
  store i32 %494, i32* %24, align 4
  %495 = load i32, i32* %24, align 4
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %488
  %498 = load i32, i32* %24, align 4
  store i32 %498, i32* %6, align 4
  store i32 1, i32* %29, align 4
  br label %574

499:                                              ; preds = %488
  %500 = load i32, i32* %24, align 4
  %501 = load i8*, i8** %10, align 8
  %502 = sext i32 %500 to i64
  %503 = getelementptr inbounds i8, i8* %501, i64 %502
  store i8* %503, i8** %10, align 8
  %504 = load i32, i32* %24, align 4
  %505 = load i32, i32* %11, align 4
  %506 = sub nsw i32 %505, %504
  store i32 %506, i32* %11, align 4
  br label %485

507:                                              ; preds = %485
  store i32 0, i32* %17, align 4
  br label %508

508:                                              ; preds = %570, %507
  %509 = load i32, i32* %17, align 4
  %510 = load i32, i32* %15, align 4
  %511 = icmp slt i32 %509, %510
  br i1 %511, label %512, label %573

512:                                              ; preds = %508
  %513 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %514 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %513, i32 0, i32 2
  %515 = load %struct.usb_interface_cache**, %struct.usb_interface_cache*** %514, align 8
  %516 = load i32, i32* %17, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.usb_interface_cache*, %struct.usb_interface_cache** %515, i64 %517
  %519 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %518, align 8
  store %struct.usb_interface_cache* %519, %struct.usb_interface_cache** %20, align 8
  store i32 0, i32* %18, align 4
  br label %520

520:                                              ; preds = %566, %512
  %521 = load i32, i32* %18, align 4
  %522 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %523 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = icmp slt i32 %521, %524
  br i1 %525, label %526, label %569

526:                                              ; preds = %520
  store i32 0, i32* %19, align 4
  br label %527

527:                                              ; preds = %547, %526
  %528 = load i32, i32* %19, align 4
  %529 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %530 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = icmp slt i32 %528, %531
  br i1 %532, label %533, label %550

533:                                              ; preds = %527
  %534 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %535 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %534, i32 0, i32 1
  %536 = load %struct.TYPE_5__*, %struct.TYPE_5__** %535, align 8
  %537 = load i32, i32* %19, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = load i32, i32* %18, align 4
  %544 = icmp eq i32 %542, %543
  br i1 %544, label %545, label %546

545:                                              ; preds = %533
  br label %550

546:                                              ; preds = %533
  br label %547

547:                                              ; preds = %546
  %548 = load i32, i32* %19, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %19, align 4
  br label %527

550:                                              ; preds = %545, %527
  %551 = load i32, i32* %19, align 4
  %552 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %20, align 8
  %553 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = icmp sge i32 %551, %554
  br i1 %555, label %556, label %565

556:                                              ; preds = %550
  %557 = load %struct.device*, %struct.device** %12, align 8
  %558 = load i32, i32* %14, align 4
  %559 = load i32, i32* %17, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %39, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = load i32, i32* %18, align 4
  %564 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %557, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 %558, i32 %562, i32 %563)
  br label %565

565:                                              ; preds = %556, %550
  br label %566

566:                                              ; preds = %565
  %567 = load i32, i32* %18, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %18, align 4
  br label %520

569:                                              ; preds = %520
  br label %570

570:                                              ; preds = %569
  %571 = load i32, i32* %17, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %17, align 4
  br label %508

573:                                              ; preds = %508
  store i32 0, i32* %6, align 4
  store i32 1, i32* %29, align 4
  br label %574

574:                                              ; preds = %573, %497, %447, %75
  %575 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %575)
  %576 = load i32, i32* %6, align 4
  ret i32 %576
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @plural(i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local %struct.usb_interface_cache* @kzalloc(i32, i32) #2

declare dso_local i32 @struct_size(%struct.usb_interface_cache*, i32, i32) #2

declare dso_local i32 @kref_init(i32*) #2

declare dso_local i32 @find_next_descriptor(i8*, i32, i32, i32, i32*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8*) #2

declare dso_local i32 @usb_parse_interface(%struct.device*, i32, %struct.usb_host_config*, i8*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
