; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/image/extr_microtek.c_mts_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/image/extr_microtek.c_mts_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.mts_desc = type { i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_15__*, %struct.usb_interface*, %struct.usb_device* }
%struct.TYPE_14__ = type { %struct.mts_desc* }
%struct.TYPE_15__ = type { i64* }
%struct.usb_device = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usb-device descriptor at %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"product id = 0x%x, vendor id = 0x%x\0A\00", align 1
@MTS_EP_TOTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"expecting %d got %d endpoints! Bailing out.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"can only deal with bulk endpoints; endpoint %d is not bulk.\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"can only deal with one output endpoints. Bailing out.\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"couldn't find two input bulk endpoints. Bailing out.\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"couldn't find an output bulk endpoint. Bailing out.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@MTS_EP_OUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"will this work? Command EP is not usually %d\0A\00", align 1
@MTS_EP_RESPONSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"will this work? Response EP is not usually %d\0A\00", align 1
@MTS_EP_IMAGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"will this work? Image data EP is not usually %d\0A\00", align 1
@mts_scsi_host_template = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @mts_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mts_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mts_desc*, align 8
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 -1, i32* %7, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %12, align 8
  %19 = call i32 (...) @MTS_DEBUG_GOT_HERE()
  %20 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %21 = ptrtoint %struct.usb_device* %20 to i32
  %22 = call i32 (i8*, i32, ...) @MTS_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = call i32 (i8*, i32, ...) @MTS_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %32)
  %34 = call i32 (...) @MTS_DEBUG_GOT_HERE()
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 0
  %37 = load %struct.usb_host_interface*, %struct.usb_host_interface** %36, align 8
  store %struct.usb_host_interface* %37, %struct.usb_host_interface** %13, align 8
  %38 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %39 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MTS_EP_TOTAL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %2
  %45 = load i32, i32* @MTS_EP_TOTAL, align 4
  %46 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %47 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %287

53:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %134, %53
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %57 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %137

61:                                               ; preds = %54
  %62 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %63 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %61
  %76 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %77 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %133

86:                                               ; preds = %61
  %87 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %88 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @USB_DIR_IN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %86
  %100 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %101 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  br label %132

113:                                              ; preds = %86
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %287

120:                                              ; preds = %113
  %121 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %122 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %121, i32 0, i32 0
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %120, %99
  br label %133

133:                                              ; preds = %132, %75
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %54

137:                                              ; preds = %54
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %140 = icmp ne i32* %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %287

145:                                              ; preds = %137
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i32, i32* @ENODEV, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %287

152:                                              ; preds = %145
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call %struct.mts_desc* @kzalloc(i32 48, i32 %153)
  store %struct.mts_desc* %154, %struct.mts_desc** %11, align 8
  %155 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %156 = icmp ne %struct.mts_desc* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  br label %285

158:                                              ; preds = %152
  %159 = load i32, i32* @GFP_KERNEL, align 4
  %160 = call i32 @usb_alloc_urb(i32 0, i32 %159)
  %161 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %162 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %164 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %158
  br label %282

168:                                              ; preds = %158
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = call %struct.mts_desc* @kmalloc(i32 1, i32 %169)
  %171 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %172 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  store %struct.mts_desc* %170, %struct.mts_desc** %173, align 8
  %174 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %175 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load %struct.mts_desc*, %struct.mts_desc** %176, align 8
  %178 = icmp ne %struct.mts_desc* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %168
  br label %277

180:                                              ; preds = %168
  %181 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %182 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %183 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %182, i32 0, i32 7
  store %struct.usb_device* %181, %struct.usb_device** %183, align 8
  %184 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %185 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %186 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %185, i32 0, i32 6
  store %struct.usb_interface* %184, %struct.usb_interface** %186, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %189 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %193 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %197 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  %198 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %199 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @MTS_EP_OUT, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %180
  %204 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %205 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %203, %180
  %209 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %210 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MTS_EP_RESPONSE, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %216 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %214, %208
  %220 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %221 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @MTS_EP_IMAGE, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %219
  %226 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %227 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %225, %219
  %231 = call %struct.TYPE_15__* @scsi_host_alloc(i32* @mts_scsi_host_template, i32 8)
  %232 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %233 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %232, i32 0, i32 5
  store %struct.TYPE_15__* %231, %struct.TYPE_15__** %233, align 8
  %234 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %235 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %234, i32 0, i32 5
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %235, align 8
  %237 = icmp ne %struct.TYPE_15__* %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %230
  br label %271

239:                                              ; preds = %230
  %240 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %241 = ptrtoint %struct.mts_desc* %240 to i64
  %242 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %243 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %242, i32 0, i32 5
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 0
  store i64 %241, i64* %247, align 8
  %248 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %249 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %248, i32 0, i32 5
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %249, align 8
  %251 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %252 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %251, i32 0, i32 0
  %253 = call i64 @scsi_add_host(%struct.TYPE_15__* %250, i32* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %239
  %256 = load i32, i32* @EIO, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %10, align 4
  br label %266

258:                                              ; preds = %239
  %259 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %260 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %259, i32 0, i32 5
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = call i32 @scsi_scan_host(%struct.TYPE_15__* %261)
  %263 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %264 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %265 = call i32 @usb_set_intfdata(%struct.usb_interface* %263, %struct.mts_desc* %264)
  store i32 0, i32* %3, align 4
  br label %287

266:                                              ; preds = %255
  %267 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %268 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %267, i32 0, i32 5
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %268, align 8
  %270 = call i32 @scsi_host_put(%struct.TYPE_15__* %269)
  br label %271

271:                                              ; preds = %266, %238
  %272 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %273 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %272, i32 0, i32 4
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = load %struct.mts_desc*, %struct.mts_desc** %274, align 8
  %276 = call i32 @kfree(%struct.mts_desc* %275)
  br label %277

277:                                              ; preds = %271, %179
  %278 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %279 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @usb_free_urb(i32 %280)
  br label %282

282:                                              ; preds = %277, %167
  %283 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %284 = call i32 @kfree(%struct.mts_desc* %283)
  br label %285

285:                                              ; preds = %282, %157
  %286 = load i32, i32* %10, align 4
  store i32 %286, i32* %3, align 4
  br label %287

287:                                              ; preds = %285, %258, %148, %141, %116, %44
  %288 = load i32, i32* %3, align 4
  ret i32 %288
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @MTS_DEBUG_GOT_HERE(...) #1

declare dso_local i32 @MTS_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @MTS_WARNING(i8*, ...) #1

declare dso_local %struct.mts_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.mts_desc* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_15__* @scsi_host_alloc(i32*, i32) #1

declare dso_local i64 @scsi_add_host(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.TYPE_15__*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.mts_desc*) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_15__*) #1

declare dso_local i32 @kfree(%struct.mts_desc*) #1

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
