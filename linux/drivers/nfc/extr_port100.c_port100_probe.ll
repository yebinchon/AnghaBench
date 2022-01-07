; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.port100 = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32, i64, i32, i32, i32, %struct.usb_interface*, i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not find bulk-in or bulk-out endpoint\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not allocate USB URBs\0A\00", align 1
@port100_send_complete = common dso_local global i32* null, align 8
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@PORT100_FRAME_HEADER_LEN = common dso_local global i64 0, align 8
@PORT100_COMM_RF_HEAD_MAX_LEN = common dso_local global i64 0, align 8
@PORT100_FRAME_TAIL_LEN = common dso_local global i32 0, align 4
@port100_wq_cmd_complete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not get supported command types\0A\00", align 1
@PORT100_CMD_TYPE_1 = common dso_local global i32 0, align 4
@PORT100_CMD_TYPE_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"The device does not support command type %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Could not get device firmware version\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Sony NFC Port-100 Series attached (firmware v%x.%02x)\0A\00", align 1
@port100_digital_ops = common dso_local global i32 0, align 4
@PORT100_PROTOCOLS = common dso_local global i32 0, align 4
@PORT100_CAPABILITIES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Could not allocate nfc_digital_dev\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Could not register digital device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @port100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.port100*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.port100* @devm_kzalloc(i32* %16, i32 72, i32 %17)
  store %struct.port100* %18, %struct.port100** %6, align 8
  %19 = load %struct.port100*, %struct.port100** %6, align 8
  %20 = icmp ne %struct.port100* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %287

24:                                               ; preds = %2
  %25 = load %struct.port100*, %struct.port100** %6, align 8
  %26 = getelementptr inbounds %struct.port100, %struct.port100* %25, i32 0, i32 10
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = call i32 @interface_to_usbdev(%struct.usb_interface* %28)
  %30 = call i32 @usb_get_dev(i32 %29)
  %31 = load %struct.port100*, %struct.port100** %6, align 8
  %32 = getelementptr inbounds %struct.port100, %struct.port100* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %34 = load %struct.port100*, %struct.port100** %6, align 8
  %35 = getelementptr inbounds %struct.port100, %struct.port100* %34, i32 0, i32 9
  store %struct.usb_interface* %33, %struct.usb_interface** %35, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = load %struct.port100*, %struct.port100** %6, align 8
  %38 = call i32 @usb_set_intfdata(%struct.usb_interface* %36, %struct.port100* %37)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %39 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %40 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %39, i32 0, i32 1
  %41 = load %struct.usb_host_interface*, %struct.usb_host_interface** %40, align 8
  store %struct.usb_host_interface* %41, %struct.usb_host_interface** %8, align 8
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %79, %24
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %45 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %42
  %50 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %51 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %56, %struct.usb_endpoint_descriptor** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %49
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %61 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %65 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %59, %49
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %72 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %76 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %74, %70, %67
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %42

82:                                               ; preds = %42
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %90 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @nfc_err(i32* %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %273

94:                                               ; preds = %85
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @usb_alloc_urb(i32 0, i32 %95)
  %97 = bitcast i8* %96 to %struct.TYPE_7__*
  %98 = load %struct.port100*, %struct.port100** %6, align 8
  %99 = getelementptr inbounds %struct.port100, %struct.port100* %98, i32 0, i32 2
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %99, align 8
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @usb_alloc_urb(i32 0, i32 %100)
  %102 = bitcast i8* %101 to %struct.TYPE_7__*
  %103 = load %struct.port100*, %struct.port100** %6, align 8
  %104 = getelementptr inbounds %struct.port100, %struct.port100* %103, i32 0, i32 1
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %104, align 8
  %105 = load %struct.port100*, %struct.port100** %6, align 8
  %106 = getelementptr inbounds %struct.port100, %struct.port100* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = icmp ne %struct.TYPE_7__* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %94
  %110 = load %struct.port100*, %struct.port100** %6, align 8
  %111 = getelementptr inbounds %struct.port100, %struct.port100* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = icmp ne %struct.TYPE_7__* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %109, %94
  %115 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %116 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @nfc_err(i32* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  br label %273

120:                                              ; preds = %109
  %121 = load %struct.port100*, %struct.port100** %6, align 8
  %122 = getelementptr inbounds %struct.port100, %struct.port100* %121, i32 0, i32 2
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load %struct.port100*, %struct.port100** %6, align 8
  %125 = getelementptr inbounds %struct.port100, %struct.port100* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.port100*, %struct.port100** %6, align 8
  %128 = getelementptr inbounds %struct.port100, %struct.port100* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @usb_rcvbulkpipe(i32 %129, i32 %130)
  %132 = load %struct.port100*, %struct.port100** %6, align 8
  %133 = call i32 @usb_fill_bulk_urb(%struct.TYPE_7__* %123, i32 %126, i32 %131, i32* null, i32 0, i32* null, %struct.port100* %132)
  %134 = load %struct.port100*, %struct.port100** %6, align 8
  %135 = getelementptr inbounds %struct.port100, %struct.port100* %134, i32 0, i32 1
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load %struct.port100*, %struct.port100** %6, align 8
  %138 = getelementptr inbounds %struct.port100, %struct.port100* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.port100*, %struct.port100** %6, align 8
  %141 = getelementptr inbounds %struct.port100, %struct.port100* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @usb_sndbulkpipe(i32 %142, i32 %143)
  %145 = load i32*, i32** @port100_send_complete, align 8
  %146 = load %struct.port100*, %struct.port100** %6, align 8
  %147 = call i32 @usb_fill_bulk_urb(%struct.TYPE_7__* %136, i32 %139, i32 %144, i32* null, i32 0, i32* %145, %struct.port100* %146)
  %148 = load i32, i32* @URB_ZERO_PACKET, align 4
  %149 = load %struct.port100*, %struct.port100** %6, align 8
  %150 = getelementptr inbounds %struct.port100, %struct.port100* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store i32 %148, i32* %152, align 4
  %153 = load i64, i64* @PORT100_FRAME_HEADER_LEN, align 8
  %154 = load i64, i64* @PORT100_COMM_RF_HEAD_MAX_LEN, align 8
  %155 = add nsw i64 %153, %154
  %156 = load %struct.port100*, %struct.port100** %6, align 8
  %157 = getelementptr inbounds %struct.port100, %struct.port100* %156, i32 0, i32 5
  store i64 %155, i64* %157, align 8
  %158 = load i32, i32* @PORT100_FRAME_TAIL_LEN, align 4
  %159 = load %struct.port100*, %struct.port100** %6, align 8
  %160 = getelementptr inbounds %struct.port100, %struct.port100* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 4
  %161 = load %struct.port100*, %struct.port100** %6, align 8
  %162 = getelementptr inbounds %struct.port100, %struct.port100* %161, i32 0, i32 8
  %163 = call i32 @init_completion(i32* %162)
  %164 = load %struct.port100*, %struct.port100** %6, align 8
  %165 = getelementptr inbounds %struct.port100, %struct.port100* %164, i32 0, i32 7
  %166 = load i32, i32* @port100_wq_cmd_complete, align 4
  %167 = call i32 @INIT_WORK(i32* %165, i32 %166)
  %168 = load %struct.port100*, %struct.port100** %6, align 8
  %169 = call i32 @port100_get_command_type_mask(%struct.port100* %168)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %120
  %173 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %174 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %173, i32 0, i32 0
  %175 = call i32 (i32*, i8*, ...) @nfc_err(i32* %174, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %176 = load i32, i32* @ENODEV, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %7, align 4
  br label %273

178:                                              ; preds = %120
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* @PORT100_CMD_TYPE_1, align 4
  %181 = call i64 @PORT100_CMD_TYPE_IS_SUPPORTED(i32 %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i32, i32* @PORT100_CMD_TYPE_1, align 4
  %185 = load %struct.port100*, %struct.port100** %6, align 8
  %186 = getelementptr inbounds %struct.port100, %struct.port100* %185, i32 0, i32 6
  store i32 %184, i32* %186, align 8
  br label %191

187:                                              ; preds = %178
  %188 = load i32, i32* @PORT100_CMD_TYPE_0, align 4
  %189 = load %struct.port100*, %struct.port100** %6, align 8
  %190 = getelementptr inbounds %struct.port100, %struct.port100* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %187, %183
  %192 = load %struct.port100*, %struct.port100** %6, align 8
  %193 = load %struct.port100*, %struct.port100** %6, align 8
  %194 = getelementptr inbounds %struct.port100, %struct.port100* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @port100_set_command_type(%struct.port100* %192, i32 %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %191
  %200 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %201 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %200, i32 0, i32 0
  %202 = load %struct.port100*, %struct.port100** %6, align 8
  %203 = getelementptr inbounds %struct.port100, %struct.port100* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i32*, i8*, ...) @nfc_err(i32* %201, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  br label %273

206:                                              ; preds = %191
  %207 = load %struct.port100*, %struct.port100** %6, align 8
  %208 = call i32 @port100_get_firmware_version(%struct.port100* %207)
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %206
  %212 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %213 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %212, i32 0, i32 0
  %214 = call i32 (i32*, i8*, ...) @nfc_err(i32* %213, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %215

215:                                              ; preds = %211, %206
  %216 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %217 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %216, i32 0, i32 0
  %218 = load i32, i32* %12, align 4
  %219 = and i32 %218, 65280
  %220 = ashr i32 %219, 8
  %221 = load i32, i32* %12, align 4
  %222 = and i32 %221, 255
  %223 = call i32 @nfc_info(i32* %217, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %220, i32 %222)
  %224 = load i32, i32* @PORT100_PROTOCOLS, align 4
  %225 = load i32, i32* @PORT100_CAPABILITIES, align 4
  %226 = load %struct.port100*, %struct.port100** %6, align 8
  %227 = getelementptr inbounds %struct.port100, %struct.port100* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.port100*, %struct.port100** %6, align 8
  %230 = getelementptr inbounds %struct.port100, %struct.port100* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @nfc_digital_allocate_device(i32* @port100_digital_ops, i32 %224, i32 %225, i64 %228, i32 %231)
  %233 = load %struct.port100*, %struct.port100** %6, align 8
  %234 = getelementptr inbounds %struct.port100, %struct.port100* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 8
  %235 = load %struct.port100*, %struct.port100** %6, align 8
  %236 = getelementptr inbounds %struct.port100, %struct.port100* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %215
  %240 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %241 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %240, i32 0, i32 0
  %242 = call i32 (i32*, i8*, ...) @nfc_err(i32* %241, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %243 = load i32, i32* @ENOMEM, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %7, align 4
  br label %273

245:                                              ; preds = %215
  %246 = load %struct.port100*, %struct.port100** %6, align 8
  %247 = getelementptr inbounds %struct.port100, %struct.port100* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %250 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %249, i32 0, i32 0
  %251 = call i32 @nfc_digital_set_parent_dev(i32 %248, i32* %250)
  %252 = load %struct.port100*, %struct.port100** %6, align 8
  %253 = getelementptr inbounds %struct.port100, %struct.port100* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.port100*, %struct.port100** %6, align 8
  %256 = call i32 @nfc_digital_set_drvdata(i32 %254, %struct.port100* %255)
  %257 = load %struct.port100*, %struct.port100** %6, align 8
  %258 = getelementptr inbounds %struct.port100, %struct.port100* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @nfc_digital_register_device(i32 %259)
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %7, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %245
  %264 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %265 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %264, i32 0, i32 0
  %266 = call i32 (i32*, i8*, ...) @nfc_err(i32* %265, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %268

267:                                              ; preds = %245
  store i32 0, i32* %3, align 4
  br label %287

268:                                              ; preds = %263
  %269 = load %struct.port100*, %struct.port100** %6, align 8
  %270 = getelementptr inbounds %struct.port100, %struct.port100* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @nfc_digital_free_device(i32 %271)
  br label %273

273:                                              ; preds = %268, %239, %199, %172, %114, %88
  %274 = load %struct.port100*, %struct.port100** %6, align 8
  %275 = getelementptr inbounds %struct.port100, %struct.port100* %274, i32 0, i32 2
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = call i32 @usb_free_urb(%struct.TYPE_7__* %276)
  %278 = load %struct.port100*, %struct.port100** %6, align 8
  %279 = getelementptr inbounds %struct.port100, %struct.port100* %278, i32 0, i32 1
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %279, align 8
  %281 = call i32 @usb_free_urb(%struct.TYPE_7__* %280)
  %282 = load %struct.port100*, %struct.port100** %6, align 8
  %283 = getelementptr inbounds %struct.port100, %struct.port100* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @usb_put_dev(i32 %284)
  %286 = load i32, i32* %7, align 4
  store i32 %286, i32* %3, align 4
  br label %287

287:                                              ; preds = %273, %267, %21
  %288 = load i32, i32* %3, align 4
  ret i32 %288
}

declare dso_local %struct.port100* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.port100*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @nfc_err(i32*, i8*, ...) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_7__*, i32, i32, i32*, i32, i32*, %struct.port100*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @port100_get_command_type_mask(%struct.port100*) #1

declare dso_local i64 @PORT100_CMD_TYPE_IS_SUPPORTED(i32, i32) #1

declare dso_local i32 @port100_set_command_type(%struct.port100*, i32) #1

declare dso_local i32 @port100_get_firmware_version(%struct.port100*) #1

declare dso_local i32 @nfc_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @nfc_digital_allocate_device(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @nfc_digital_set_parent_dev(i32, i32*) #1

declare dso_local i32 @nfc_digital_set_drvdata(i32, %struct.port100*) #1

declare dso_local i32 @nfc_digital_register_device(i32) #1

declare dso_local i32 @nfc_digital_free_device(i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_7__*) #1

declare dso_local i32 @usb_put_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
