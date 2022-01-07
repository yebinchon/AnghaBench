; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i8*, %struct.usb_interface }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_cdc_union_desc = type { i32, i32 }
%struct.usb_cdc_call_mgmt_descriptor = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.usb_device = type { i32 }
%struct.usb_cdc_parsed_header = type { %struct.usb_cdc_country_functional_desc*, %struct.TYPE_13__*, %struct.usb_cdc_call_mgmt_descriptor*, %struct.usb_cdc_union_desc* }
%struct.usb_cdc_country_functional_desc = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.acm = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_15__, i32, i32*, %struct.urb*, %struct.urb**, %struct.urb*, %struct.acm*, %struct.usb_interface*, i32*, i32, i32, %struct.TYPE_16__, i64, i64, i32*, i64, i32, %struct.acm*, i32, i32*, %struct.usb_device*, i32, %struct.acm*, i32, i32, i32, i32, i32, i32, i32, %struct.usb_interface* }
%struct.TYPE_15__ = type { i32* }
%struct.urb = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.acm_rb = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_15__, i32, i32*, %struct.urb*, %struct.urb**, %struct.urb*, %struct.acm_rb*, %struct.usb_interface*, i32*, i32, i32, %struct.TYPE_16__, i64, i64, i32*, i64, i32, %struct.acm_rb*, i32, i32*, %struct.usb_device*, i32, %struct.acm_rb*, i32, i32, i32, i32, i32, i32, i32, %struct.usb_interface* }
%struct.acm_wb = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_15__, i32, i32*, %struct.urb*, %struct.urb**, %struct.urb*, %struct.acm_wb*, %struct.usb_interface*, i32*, i32, i32, %struct.TYPE_16__, i64, i64, i32*, i64, i32, %struct.acm_wb*, i32, i32*, %struct.usb_device*, i32, %struct.acm_wb*, i32, i32, i32, i32, i32, i32, i32, %struct.usb_interface* }

@ENOMEM = common dso_local global i32 0, align 4
@IGNORE_DEVICE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@SINGLE_RX_URB = common dso_local global i64 0, align 8
@ACM_NR = common dso_local global i32 0, align 4
@NO_UNION_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Weird descriptor references\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Seeking extra descriptors on endpoint\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Zero length descriptor references\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"No union descriptor, using call management descriptor\0A\00", align 1
@NO_DATA_INTERFACE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"No union descriptor, giving up\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"No union descriptor, testing for castrated device\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"no interfaces\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Separate call control interface. That is not fully supported.\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Control and data interfaces are not separated!\0A\00", align 1
@NO_CAP_LINE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"This needs exactly 3 endpoints\0A\00", align 1
@CDC_DATA_INTERFACE_TYPE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"Your device has switched interfaces.\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"The data interface isn't available\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"The data interface has switched endpoints\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"interfaces are valid\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@acm_port_ops = common dso_local global i32 0, align 4
@USB_CDC_CAP_LINE = common dso_local global i32 0, align 4
@acm_softint = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@acm_read_bulk_callback = common dso_local global i32 0, align 4
@ACM_NW = common dso_local global i32 0, align 4
@acm_write_bulk = common dso_local global i32 0, align 4
@SEND_ZERO_PACKET = common dso_local global i64 0, align 8
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@dev_attr_bmCapabilities = common dso_local global i32 0, align 4
@dev_attr_wCountryCodes = common dso_local global i32 0, align 4
@dev_attr_iCountryCodeRelDate = common dso_local global i32 0, align 4
@acm_ctrl_irq = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"ttyACM%d: USB ACM device\0A\00", align 1
@acm_driver = common dso_local global i32 0, align 4
@acm_tty_driver = common dso_local global i32 0, align 4
@CLEAR_HALT_CONDITIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @acm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_cdc_union_desc*, align 8
  %7 = alloca %struct.usb_cdc_call_mgmt_descriptor*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.usb_endpoint_descriptor*, align 8
  %13 = alloca %struct.usb_endpoint_descriptor*, align 8
  %14 = alloca %struct.usb_endpoint_descriptor*, align 8
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca %struct.usb_cdc_parsed_header, align 8
  %17 = alloca %struct.acm*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.device*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.acm_rb*, align 8
  %32 = alloca %struct.urb*, align 8
  %33 = alloca %struct.acm_wb*, align 8
  %34 = alloca %struct.usb_cdc_country_functional_desc*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.usb_cdc_union_desc* null, %struct.usb_cdc_union_desc** %6, align 8
  store %struct.usb_cdc_call_mgmt_descriptor* null, %struct.usb_cdc_call_mgmt_descriptor** %7, align 8
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %9, align 4
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %12, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %13, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %14, align 8
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %45)
  store %struct.usb_device* %46, %struct.usb_device** %15, align 8
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %27, align 4
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %29, align 4
  %49 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %24, align 8
  %52 = load i64, i64* %24, align 8
  %53 = load i64, i64* @IGNORE_DEVICE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %1081

58:                                               ; preds = %2
  %59 = call i32 @memset(%struct.usb_cdc_parsed_header* %16, i32 0, i32 32)
  %60 = load i64, i64* %24, align 8
  %61 = load i64, i64* @SINGLE_RX_URB, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @ACM_NR, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ 1, %63 ], [ %65, %64 ]
  store i32 %67, i32* %25, align 4
  %68 = load i64, i64* %24, align 8
  %69 = load i64, i64* @NO_UNION_NORMAL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %73 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %72, i32 1)
  store %struct.usb_interface* %73, %struct.usb_interface** %11, align 8
  %74 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %75 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %74, i32 0)
  store %struct.usb_interface* %75, %struct.usb_interface** %10, align 8
  %76 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %77 = icmp ne %struct.usb_interface* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %80 = icmp ne %struct.usb_interface* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78, %71
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %1081

84:                                               ; preds = %78
  br label %298

85:                                               ; preds = %66
  %86 = load i8*, i8** %8, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %90 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %89, i32 0, i32 1
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %1081

94:                                               ; preds = %85
  %95 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %96 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %95, i32 0, i32 3
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = icmp ne %struct.TYPE_14__* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %1081

102:                                              ; preds = %94
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %155, label %105

105:                                              ; preds = %102
  %106 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %107 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %106, i32 0, i32 3
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = icmp ne %struct.TYPE_12__* %110, null
  br i1 %111, label %112, label %148

112:                                              ; preds = %105
  %113 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %114 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %113, i32 0, i32 3
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %148

121:                                              ; preds = %112
  %122 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %123 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %122, i32 0, i32 3
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %148

130:                                              ; preds = %121
  %131 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %132 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %131, i32 0, i32 1
  %133 = call i32 @dev_dbg(i32* %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %134 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %135 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %134, i32 0, i32 3
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %9, align 4
  %141 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %142 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %141, i32 0, i32 3
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %8, align 8
  br label %154

148:                                              ; preds = %121, %112, %105
  %149 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %150 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %149, i32 0, i32 1
  %151 = call i32 @dev_err(i32* %150, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %1081

154:                                              ; preds = %130
  br label %155

155:                                              ; preds = %154, %102
  %156 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @cdc_parse_cdc_header(%struct.usb_cdc_parsed_header* %16, %struct.usb_interface* %156, i8* %157, i32 %158)
  %160 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %16, i32 0, i32 3
  %161 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %160, align 8
  store %struct.usb_cdc_union_desc* %161, %struct.usb_cdc_union_desc** %6, align 8
  %162 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %16, i32 0, i32 2
  %163 = load %struct.usb_cdc_call_mgmt_descriptor*, %struct.usb_cdc_call_mgmt_descriptor** %162, align 8
  store %struct.usb_cdc_call_mgmt_descriptor* %163, %struct.usb_cdc_call_mgmt_descriptor** %7, align 8
  %164 = load %struct.usb_cdc_call_mgmt_descriptor*, %struct.usb_cdc_call_mgmt_descriptor** %7, align 8
  %165 = icmp ne %struct.usb_cdc_call_mgmt_descriptor* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %155
  %167 = load %struct.usb_cdc_call_mgmt_descriptor*, %struct.usb_cdc_call_mgmt_descriptor** %7, align 8
  %168 = getelementptr inbounds %struct.usb_cdc_call_mgmt_descriptor, %struct.usb_cdc_call_mgmt_descriptor* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %22, align 4
  br label %170

170:                                              ; preds = %166, %155
  %171 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %172 = icmp ne %struct.usb_cdc_union_desc* %171, null
  br i1 %172, label %214, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %22, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %194

176:                                              ; preds = %173
  %177 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %178 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %177, i32 0, i32 1
  %179 = call i32 @dev_dbg(i32* %178, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i64, i64* %24, align 8
  %181 = load i64, i64* @NO_DATA_INTERFACE, align 8
  %182 = and i64 %180, %181
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %186 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %185, i32 0)
  store %struct.usb_interface* %186, %struct.usb_interface** %11, align 8
  br label %192

187:                                              ; preds = %176
  %188 = load i32, i32* %22, align 4
  store i32 %188, i32* %23, align 4
  %189 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %190 = load i32, i32* %23, align 4
  %191 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %189, i32 %190)
  store %struct.usb_interface* %191, %struct.usb_interface** %11, align 8
  br label %192

192:                                              ; preds = %187, %184
  %193 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  store %struct.usb_interface* %193, %struct.usb_interface** %10, align 8
  br label %213

194:                                              ; preds = %173
  %195 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %196 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %195, i32 0, i32 3
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 3
  br i1 %201, label %202, label %208

202:                                              ; preds = %194
  %203 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %204 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %203, i32 0, i32 1
  %205 = call i32 @dev_dbg(i32* %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %206 = load i32, i32* @ENODEV, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %3, align 4
  br label %1081

208:                                              ; preds = %194
  %209 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %210 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %209, i32 0, i32 1
  %211 = call i32 @dev_warn(i32* %210, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %27, align 4
  %212 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  store %struct.usb_interface* %212, %struct.usb_interface** %11, align 8
  store %struct.usb_interface* %212, %struct.usb_interface** %10, align 8
  br label %284

213:                                              ; preds = %192
  br label %226

214:                                              ; preds = %170
  %215 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %216 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %23, align 4
  %218 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %219 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %220 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %218, i32 %221)
  store %struct.usb_interface* %222, %struct.usb_interface** %10, align 8
  %223 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %224 = load i32, i32* %23, align 4
  %225 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %223, i32 %224)
  store %struct.usb_interface* %225, %struct.usb_interface** %11, align 8
  br label %226

226:                                              ; preds = %214, %213
  %227 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %228 = icmp ne %struct.usb_interface* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %231 = icmp ne %struct.usb_interface* %230, null
  br i1 %231, label %238, label %232

232:                                              ; preds = %229, %226
  %233 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %234 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %233, i32 0, i32 1
  %235 = call i32 @dev_dbg(i32* %234, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %236 = load i32, i32* @ENODEV, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %3, align 4
  br label %1081

238:                                              ; preds = %229
  %239 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %240 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %239, i32 0, i32 3
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = icmp ne %struct.TYPE_14__* %241, null
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %245 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %244, i32 0, i32 3
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = icmp ne %struct.TYPE_14__* %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %243, %238
  %249 = load i32, i32* @ENODEV, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %3, align 4
  br label %1081

251:                                              ; preds = %243
  %252 = load i32, i32* %23, align 4
  %253 = load i32, i32* %22, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %257 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %256, i32 0, i32 1
  %258 = call i32 @dev_dbg(i32* %257, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  br label %259

259:                                              ; preds = %255, %251
  %260 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %261 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %262 = icmp eq %struct.usb_interface* %260, %261
  br i1 %262, label %263, label %297

263:                                              ; preds = %259
  %264 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %265 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %264, i32 0, i32 1
  %266 = call i32 @dev_warn(i32* %265, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %27, align 4
  %267 = load i64, i64* @NO_CAP_LINE, align 8
  %268 = load i64, i64* %24, align 8
  %269 = or i64 %268, %267
  store i64 %269, i64* %24, align 8
  %270 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %271 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %270, i32 0, i32 3
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 3
  br i1 %276, label %277, label %283

277:                                              ; preds = %263
  %278 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %279 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %278, i32 0, i32 1
  %280 = call i32 @dev_err(i32* %279, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %3, align 4
  br label %1081

283:                                              ; preds = %263
  br label %284

284:                                              ; preds = %283, %208
  %285 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %286 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %285, i32 0, i32 3
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %286, align 8
  %288 = bitcast %struct.usb_endpoint_descriptor** %13 to %struct.usb_interface**
  %289 = bitcast %struct.usb_endpoint_descriptor** %14 to %struct.usb_interface**
  %290 = bitcast %struct.usb_endpoint_descriptor** %12 to %struct.usb_interface**
  %291 = call i32 @usb_find_common_endpoints(%struct.TYPE_14__* %287, %struct.usb_interface** %288, %struct.usb_interface** %289, %struct.usb_interface** %290, i32* null)
  store i32 %291, i32* %30, align 4
  %292 = load i32, i32* %30, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %284
  %295 = load i32, i32* %30, align 4
  store i32 %295, i32* %3, align 4
  br label %1081

296:                                              ; preds = %284
  br label %408

297:                                              ; preds = %259
  br label %298

298:                                              ; preds = %297, %84
  %299 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %300 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %299, i32 0, i32 3
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @CDC_DATA_INTERFACE_TYPE, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %307, label %327

307:                                              ; preds = %298
  %308 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %309 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %308, i32 0, i32 3
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @CDC_DATA_INTERFACE_TYPE, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %323

316:                                              ; preds = %307
  %317 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %318 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %317, i32 0, i32 1
  %319 = call i32 @dev_dbg(i32* %318, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %320 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %321 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %322 = call i32 @swap(%struct.usb_interface* %320, %struct.usb_interface* %321)
  br label %326

323:                                              ; preds = %307
  %324 = load i32, i32* @EINVAL, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %3, align 4
  br label %1081

326:                                              ; preds = %316
  br label %327

327:                                              ; preds = %326, %298
  %328 = load i32, i32* %27, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %337, label %330

330:                                              ; preds = %327
  %331 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %332 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %333 = icmp ne %struct.usb_interface* %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = load i32, i32* @ENODEV, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %3, align 4
  br label %1081

337:                                              ; preds = %330, %327
  %338 = load i32, i32* %27, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %350, label %340

340:                                              ; preds = %337
  %341 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %342 = call i64 @usb_interface_claimed(%struct.usb_interface* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %340
  %345 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %346 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %345, i32 0, i32 1
  %347 = call i32 @dev_dbg(i32* %346, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %348 = load i32, i32* @EBUSY, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %3, align 4
  br label %1081

350:                                              ; preds = %340, %337
  %351 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %352 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %351, i32 0, i32 3
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp slt i32 %356, 2
  br i1 %357, label %366, label %358

358:                                              ; preds = %350
  %359 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %360 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %359, i32 0, i32 3
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %358, %350
  %367 = load i32, i32* @EINVAL, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %3, align 4
  br label %1081

369:                                              ; preds = %358
  %370 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %371 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %370, i32 0, i32 3
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i64 0
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 2
  %377 = bitcast %struct.usb_interface* %376 to %struct.usb_endpoint_descriptor*
  store %struct.usb_endpoint_descriptor* %377, %struct.usb_endpoint_descriptor** %12, align 8
  %378 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %379 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %378, i32 0, i32 3
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i64 0
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 2
  %385 = bitcast %struct.usb_interface* %384 to %struct.usb_endpoint_descriptor*
  store %struct.usb_endpoint_descriptor* %385, %struct.usb_endpoint_descriptor** %13, align 8
  %386 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %387 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %386, i32 0, i32 3
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i64 1
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 2
  %393 = bitcast %struct.usb_interface* %392 to %struct.usb_endpoint_descriptor*
  store %struct.usb_endpoint_descriptor* %393, %struct.usb_endpoint_descriptor** %14, align 8
  %394 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %395 = bitcast %struct.usb_endpoint_descriptor* %394 to %struct.usb_interface*
  %396 = call i32 @usb_endpoint_dir_in(%struct.usb_interface* %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %407, label %398

398:                                              ; preds = %369
  %399 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %400 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %399, i32 0, i32 1
  %401 = call i32 @dev_dbg(i32* %400, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %402 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %403 = bitcast %struct.usb_endpoint_descriptor* %402 to %struct.usb_interface*
  %404 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %405 = bitcast %struct.usb_endpoint_descriptor* %404 to %struct.usb_interface*
  %406 = call i32 @swap(%struct.usb_interface* %403, %struct.usb_interface* %405)
  br label %407

407:                                              ; preds = %398, %369
  br label %408

408:                                              ; preds = %407, %296
  %409 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %410 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %409, i32 0, i32 1
  %411 = call i32 @dev_dbg(i32* %410, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %412 = load i32, i32* @GFP_KERNEL, align 4
  %413 = call %struct.acm_wb* @kzalloc(i32 264, i32 %412)
  %414 = bitcast %struct.acm_wb* %413 to %struct.acm*
  store %struct.acm* %414, %struct.acm** %17, align 8
  %415 = load %struct.acm*, %struct.acm** %17, align 8
  %416 = icmp eq %struct.acm* %415, null
  br i1 %416, label %417, label %418

417:                                              ; preds = %408
  br label %1079

418:                                              ; preds = %408
  %419 = load %struct.acm*, %struct.acm** %17, align 8
  %420 = getelementptr inbounds %struct.acm, %struct.acm* %419, i32 0, i32 9
  %421 = call i32 @tty_port_init(%struct.TYPE_15__* %420)
  %422 = load %struct.acm*, %struct.acm** %17, align 8
  %423 = getelementptr inbounds %struct.acm, %struct.acm* %422, i32 0, i32 9
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 0
  store i32* @acm_port_ops, i32** %424, align 8
  %425 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %426 = bitcast %struct.usb_endpoint_descriptor* %425 to %struct.usb_interface*
  %427 = call i32 @usb_endpoint_maxp(%struct.usb_interface* %426)
  store i32 %427, i32* %19, align 4
  %428 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %429 = bitcast %struct.usb_endpoint_descriptor* %428 to %struct.usb_interface*
  %430 = call i32 @usb_endpoint_maxp(%struct.usb_interface* %429)
  %431 = load i64, i64* %24, align 8
  %432 = load i64, i64* @SINGLE_RX_URB, align 8
  %433 = icmp eq i64 %431, %432
  %434 = zext i1 %433 to i64
  %435 = select i1 %433, i32 1, i32 2
  %436 = mul nsw i32 %430, %435
  store i32 %436, i32* %20, align 4
  %437 = load i32, i32* %27, align 4
  %438 = load %struct.acm*, %struct.acm** %17, align 8
  %439 = getelementptr inbounds %struct.acm, %struct.acm* %438, i32 0, i32 0
  store i32 %437, i32* %439, align 8
  %440 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %441 = bitcast %struct.usb_endpoint_descriptor* %440 to %struct.usb_interface*
  %442 = call i32 @usb_endpoint_maxp(%struct.usb_interface* %441)
  %443 = mul nsw i32 %442, 20
  %444 = load %struct.acm*, %struct.acm** %17, align 8
  %445 = getelementptr inbounds %struct.acm, %struct.acm* %444, i32 0, i32 1
  store i32 %443, i32* %445, align 4
  %446 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %447 = load %struct.acm*, %struct.acm** %17, align 8
  %448 = getelementptr inbounds %struct.acm, %struct.acm* %447, i32 0, i32 16
  store %struct.usb_interface* %446, %struct.usb_interface** %448, align 8
  %449 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %450 = load %struct.acm*, %struct.acm** %17, align 8
  %451 = getelementptr inbounds %struct.acm, %struct.acm* %450, i32 0, i32 39
  store %struct.usb_interface* %449, %struct.usb_interface** %451, align 8
  %452 = load %struct.acm*, %struct.acm** %17, align 8
  %453 = getelementptr inbounds %struct.acm, %struct.acm* %452, i32 0, i32 16
  %454 = load %struct.usb_interface*, %struct.usb_interface** %453, align 8
  %455 = call i32 @usb_get_intf(%struct.usb_interface* %454)
  %456 = load %struct.acm*, %struct.acm** %17, align 8
  %457 = bitcast %struct.acm* %456 to %struct.acm_wb*
  %458 = call i32 @acm_alloc_minor(%struct.acm_wb* %457)
  store i32 %458, i32* %18, align 4
  %459 = load i32, i32* %18, align 4
  %460 = icmp slt i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %418
  br label %1075

462:                                              ; preds = %418
  %463 = load i32, i32* %18, align 4
  %464 = load %struct.acm*, %struct.acm** %17, align 8
  %465 = getelementptr inbounds %struct.acm, %struct.acm* %464, i32 0, i32 2
  store i32 %463, i32* %465, align 8
  %466 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %467 = load %struct.acm*, %struct.acm** %17, align 8
  %468 = getelementptr inbounds %struct.acm, %struct.acm* %467, i32 0, i32 29
  store %struct.usb_device* %466, %struct.usb_device** %468, align 8
  %469 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %16, i32 0, i32 1
  %470 = load %struct.TYPE_13__*, %struct.TYPE_13__** %469, align 8
  %471 = icmp ne %struct.TYPE_13__* %470, null
  br i1 %471, label %472, label %479

472:                                              ; preds = %462
  %473 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %16, i32 0, i32 1
  %474 = load %struct.TYPE_13__*, %struct.TYPE_13__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.acm*, %struct.acm** %17, align 8
  %478 = getelementptr inbounds %struct.acm, %struct.acm* %477, i32 0, i32 38
  store i32 %476, i32* %478, align 8
  br label %479

479:                                              ; preds = %472, %462
  %480 = load i64, i64* %24, align 8
  %481 = load i64, i64* @NO_CAP_LINE, align 8
  %482 = and i64 %480, %481
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %491

484:                                              ; preds = %479
  %485 = load i32, i32* @USB_CDC_CAP_LINE, align 4
  %486 = xor i32 %485, -1
  %487 = load %struct.acm*, %struct.acm** %17, align 8
  %488 = getelementptr inbounds %struct.acm, %struct.acm* %487, i32 0, i32 38
  %489 = load i32, i32* %488, align 8
  %490 = and i32 %489, %486
  store i32 %490, i32* %488, align 8
  br label %491

491:                                              ; preds = %484, %479
  %492 = load i32, i32* %19, align 4
  %493 = load %struct.acm*, %struct.acm** %17, align 8
  %494 = getelementptr inbounds %struct.acm, %struct.acm* %493, i32 0, i32 3
  store i32 %492, i32* %494, align 4
  %495 = load i32, i32* %20, align 4
  %496 = load %struct.acm*, %struct.acm** %17, align 8
  %497 = getelementptr inbounds %struct.acm, %struct.acm* %496, i32 0, i32 4
  store i32 %495, i32* %497, align 8
  %498 = load i32, i32* %25, align 4
  %499 = load %struct.acm*, %struct.acm** %17, align 8
  %500 = getelementptr inbounds %struct.acm, %struct.acm* %499, i32 0, i32 5
  store i32 %498, i32* %500, align 4
  %501 = load %struct.acm*, %struct.acm** %17, align 8
  %502 = getelementptr inbounds %struct.acm, %struct.acm* %501, i32 0, i32 37
  %503 = load i32, i32* @acm_softint, align 4
  %504 = call i32 @INIT_WORK(i32* %502, i32 %503)
  %505 = load %struct.acm*, %struct.acm** %17, align 8
  %506 = getelementptr inbounds %struct.acm, %struct.acm* %505, i32 0, i32 36
  %507 = call i32 @init_waitqueue_head(i32* %506)
  %508 = load %struct.acm*, %struct.acm** %17, align 8
  %509 = getelementptr inbounds %struct.acm, %struct.acm* %508, i32 0, i32 35
  %510 = call i32 @spin_lock_init(i32* %509)
  %511 = load %struct.acm*, %struct.acm** %17, align 8
  %512 = getelementptr inbounds %struct.acm, %struct.acm* %511, i32 0, i32 34
  %513 = call i32 @spin_lock_init(i32* %512)
  %514 = load %struct.acm*, %struct.acm** %17, align 8
  %515 = getelementptr inbounds %struct.acm, %struct.acm* %514, i32 0, i32 33
  %516 = call i32 @mutex_init(i32* %515)
  %517 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %518 = bitcast %struct.usb_endpoint_descriptor* %517 to %struct.usb_interface*
  %519 = call i64 @usb_endpoint_xfer_int(%struct.usb_interface* %518)
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %534

521:                                              ; preds = %491
  %522 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %523 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = load %struct.acm*, %struct.acm** %17, align 8
  %526 = getelementptr inbounds %struct.acm, %struct.acm* %525, i32 0, i32 6
  store i32 %524, i32* %526, align 8
  %527 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %528 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %529 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 8
  %531 = call i32 @usb_rcvintpipe(%struct.usb_device* %527, i32 %530)
  %532 = load %struct.acm*, %struct.acm** %17, align 8
  %533 = getelementptr inbounds %struct.acm, %struct.acm* %532, i32 0, i32 19
  store i32 %531, i32* %533, align 4
  br label %542

534:                                              ; preds = %491
  %535 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %536 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %537 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %535, i32 %538)
  %540 = load %struct.acm*, %struct.acm** %17, align 8
  %541 = getelementptr inbounds %struct.acm, %struct.acm* %540, i32 0, i32 19
  store i32 %539, i32* %541, align 4
  br label %542

542:                                              ; preds = %534, %521
  %543 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %544 = bitcast %struct.usb_endpoint_descriptor* %543 to %struct.usb_interface*
  %545 = call i64 @usb_endpoint_xfer_int(%struct.usb_interface* %544)
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %555

547:                                              ; preds = %542
  %548 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %549 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %550 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = call i32 @usb_sndintpipe(%struct.usb_device* %548, i32 %551)
  %553 = load %struct.acm*, %struct.acm** %17, align 8
  %554 = getelementptr inbounds %struct.acm, %struct.acm* %553, i32 0, i32 18
  store i32 %552, i32* %554, align 8
  br label %563

555:                                              ; preds = %542
  %556 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %557 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %558 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %557, i32 0, i32 2
  %559 = load i32, i32* %558, align 8
  %560 = call i32 @usb_sndbulkpipe(%struct.usb_device* %556, i32 %559)
  %561 = load %struct.acm*, %struct.acm** %17, align 8
  %562 = getelementptr inbounds %struct.acm, %struct.acm* %561, i32 0, i32 18
  store i32 %560, i32* %562, align 8
  br label %563

563:                                              ; preds = %555, %547
  %564 = load %struct.acm*, %struct.acm** %17, align 8
  %565 = getelementptr inbounds %struct.acm, %struct.acm* %564, i32 0, i32 32
  %566 = call i32 @init_usb_anchor(i32* %565)
  %567 = load i64, i64* %24, align 8
  %568 = load %struct.acm*, %struct.acm** %17, align 8
  %569 = getelementptr inbounds %struct.acm, %struct.acm* %568, i32 0, i32 7
  store i64 %567, i64* %569, align 8
  %570 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %571 = load i32, i32* %19, align 4
  %572 = load i32, i32* @GFP_KERNEL, align 4
  %573 = load %struct.acm*, %struct.acm** %17, align 8
  %574 = getelementptr inbounds %struct.acm, %struct.acm* %573, i32 0, i32 10
  %575 = call i8* @usb_alloc_coherent(%struct.usb_device* %570, i32 %571, i32 %572, i32* %574)
  %576 = bitcast i8* %575 to i32*
  store i32* %576, i32** %21, align 8
  %577 = load i32*, i32** %21, align 8
  %578 = icmp ne i32* %577, null
  br i1 %578, label %580, label %579

579:                                              ; preds = %563
  br label %1075

580:                                              ; preds = %563
  %581 = load i32*, i32** %21, align 8
  %582 = load %struct.acm*, %struct.acm** %17, align 8
  %583 = getelementptr inbounds %struct.acm, %struct.acm* %582, i32 0, i32 11
  store i32* %581, i32** %583, align 8
  %584 = load %struct.acm*, %struct.acm** %17, align 8
  %585 = bitcast %struct.acm* %584 to %struct.acm_wb*
  %586 = call i64 @acm_write_buffers_alloc(%struct.acm_wb* %585)
  %587 = icmp slt i64 %586, 0
  br i1 %587, label %588, label %589

588:                                              ; preds = %580
  br label %1065

589:                                              ; preds = %580
  %590 = load i32, i32* @GFP_KERNEL, align 4
  %591 = call i8* @usb_alloc_urb(i32 0, i32 %590)
  %592 = bitcast i8* %591 to %struct.urb*
  %593 = load %struct.acm*, %struct.acm** %17, align 8
  %594 = getelementptr inbounds %struct.acm, %struct.acm* %593, i32 0, i32 12
  store %struct.urb* %592, %struct.urb** %594, align 8
  %595 = load %struct.acm*, %struct.acm** %17, align 8
  %596 = getelementptr inbounds %struct.acm, %struct.acm* %595, i32 0, i32 12
  %597 = load %struct.urb*, %struct.urb** %596, align 8
  %598 = icmp ne %struct.urb* %597, null
  br i1 %598, label %600, label %599

599:                                              ; preds = %589
  br label %1061

600:                                              ; preds = %589
  store i32 0, i32* %26, align 4
  br label %601

601:                                              ; preds = %709, %600
  %602 = load i32, i32* %26, align 4
  %603 = load i32, i32* %25, align 4
  %604 = icmp slt i32 %602, %603
  br i1 %604, label %605, label %712

605:                                              ; preds = %601
  %606 = load %struct.acm*, %struct.acm** %17, align 8
  %607 = getelementptr inbounds %struct.acm, %struct.acm* %606, i32 0, i32 31
  %608 = load %struct.acm*, %struct.acm** %607, align 8
  %609 = load i32, i32* %26, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds %struct.acm, %struct.acm* %608, i64 %610
  %612 = bitcast %struct.acm* %611 to %struct.acm_rb*
  store %struct.acm_rb* %612, %struct.acm_rb** %31, align 8
  %613 = load %struct.acm*, %struct.acm** %17, align 8
  %614 = getelementptr inbounds %struct.acm, %struct.acm* %613, i32 0, i32 29
  %615 = load %struct.usb_device*, %struct.usb_device** %614, align 8
  %616 = load i32, i32* %20, align 4
  %617 = load i32, i32* @GFP_KERNEL, align 4
  %618 = load %struct.acm_rb*, %struct.acm_rb** %31, align 8
  %619 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %618, i32 0, i32 30
  %620 = call i8* @usb_alloc_coherent(%struct.usb_device* %615, i32 %616, i32 %617, i32* %619)
  %621 = bitcast i8* %620 to i32*
  %622 = load %struct.acm_rb*, %struct.acm_rb** %31, align 8
  %623 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %622, i32 0, i32 28
  store i32* %621, i32** %623, align 8
  %624 = load %struct.acm_rb*, %struct.acm_rb** %31, align 8
  %625 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %624, i32 0, i32 28
  %626 = load i32*, i32** %625, align 8
  %627 = icmp ne i32* %626, null
  br i1 %627, label %629, label %628

628:                                              ; preds = %605
  br label %1036

629:                                              ; preds = %605
  %630 = load i32, i32* %26, align 4
  %631 = load %struct.acm_rb*, %struct.acm_rb** %31, align 8
  %632 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %631, i32 0, i32 8
  store i32 %630, i32* %632, align 8
  %633 = load %struct.acm*, %struct.acm** %17, align 8
  %634 = bitcast %struct.acm* %633 to %struct.acm_rb*
  %635 = load %struct.acm_rb*, %struct.acm_rb** %31, align 8
  %636 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %635, i32 0, i32 26
  store %struct.acm_rb* %634, %struct.acm_rb** %636, align 8
  %637 = load i32, i32* @GFP_KERNEL, align 4
  %638 = call i8* @usb_alloc_urb(i32 0, i32 %637)
  %639 = bitcast i8* %638 to %struct.urb*
  store %struct.urb* %639, %struct.urb** %32, align 8
  %640 = load %struct.urb*, %struct.urb** %32, align 8
  %641 = icmp ne %struct.urb* %640, null
  br i1 %641, label %643, label %642

642:                                              ; preds = %629
  br label %1036

643:                                              ; preds = %629
  %644 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %645 = load %struct.urb*, %struct.urb** %32, align 8
  %646 = getelementptr inbounds %struct.urb, %struct.urb* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 4
  %648 = or i32 %647, %644
  store i32 %648, i32* %646, align 4
  %649 = load %struct.acm_rb*, %struct.acm_rb** %31, align 8
  %650 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %649, i32 0, i32 30
  %651 = load i32, i32* %650, align 8
  %652 = load %struct.urb*, %struct.urb** %32, align 8
  %653 = getelementptr inbounds %struct.urb, %struct.urb* %652, i32 0, i32 0
  store i32 %651, i32* %653, align 4
  %654 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %655 = bitcast %struct.usb_endpoint_descriptor* %654 to %struct.usb_interface*
  %656 = call i64 @usb_endpoint_xfer_int(%struct.usb_interface* %655)
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %658, label %679

658:                                              ; preds = %643
  %659 = load %struct.urb*, %struct.urb** %32, align 8
  %660 = load %struct.acm*, %struct.acm** %17, align 8
  %661 = getelementptr inbounds %struct.acm, %struct.acm* %660, i32 0, i32 29
  %662 = load %struct.usb_device*, %struct.usb_device** %661, align 8
  %663 = load %struct.acm*, %struct.acm** %17, align 8
  %664 = getelementptr inbounds %struct.acm, %struct.acm* %663, i32 0, i32 19
  %665 = load i32, i32* %664, align 4
  %666 = load %struct.acm_rb*, %struct.acm_rb** %31, align 8
  %667 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %666, i32 0, i32 28
  %668 = load i32*, i32** %667, align 8
  %669 = load %struct.acm*, %struct.acm** %17, align 8
  %670 = getelementptr inbounds %struct.acm, %struct.acm* %669, i32 0, i32 4
  %671 = load i32, i32* %670, align 8
  %672 = load i32, i32* @acm_read_bulk_callback, align 4
  %673 = load %struct.acm_rb*, %struct.acm_rb** %31, align 8
  %674 = bitcast %struct.acm_rb* %673 to %struct.acm_wb*
  %675 = load %struct.acm*, %struct.acm** %17, align 8
  %676 = getelementptr inbounds %struct.acm, %struct.acm* %675, i32 0, i32 6
  %677 = load i32, i32* %676, align 8
  %678 = call i32 @usb_fill_int_urb(%struct.urb* %659, %struct.usb_device* %662, i32 %665, i32* %668, i32 %671, i32 %672, %struct.acm_wb* %674, i32 %677)
  br label %697

679:                                              ; preds = %643
  %680 = load %struct.urb*, %struct.urb** %32, align 8
  %681 = load %struct.acm*, %struct.acm** %17, align 8
  %682 = getelementptr inbounds %struct.acm, %struct.acm* %681, i32 0, i32 29
  %683 = load %struct.usb_device*, %struct.usb_device** %682, align 8
  %684 = load %struct.acm*, %struct.acm** %17, align 8
  %685 = getelementptr inbounds %struct.acm, %struct.acm* %684, i32 0, i32 19
  %686 = load i32, i32* %685, align 4
  %687 = load %struct.acm_rb*, %struct.acm_rb** %31, align 8
  %688 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %687, i32 0, i32 28
  %689 = load i32*, i32** %688, align 8
  %690 = load %struct.acm*, %struct.acm** %17, align 8
  %691 = getelementptr inbounds %struct.acm, %struct.acm* %690, i32 0, i32 4
  %692 = load i32, i32* %691, align 8
  %693 = load i32, i32* @acm_read_bulk_callback, align 4
  %694 = load %struct.acm_rb*, %struct.acm_rb** %31, align 8
  %695 = bitcast %struct.acm_rb* %694 to %struct.acm_wb*
  %696 = call i32 @usb_fill_bulk_urb(%struct.urb* %680, %struct.usb_device* %683, i32 %686, i32* %689, i32 %692, i32 %693, %struct.acm_wb* %695)
  br label %697

697:                                              ; preds = %679, %658
  %698 = load %struct.urb*, %struct.urb** %32, align 8
  %699 = load %struct.acm*, %struct.acm** %17, align 8
  %700 = getelementptr inbounds %struct.acm, %struct.acm* %699, i32 0, i32 13
  %701 = load %struct.urb**, %struct.urb*** %700, align 8
  %702 = load i32, i32* %26, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds %struct.urb*, %struct.urb** %701, i64 %703
  store %struct.urb* %698, %struct.urb** %704, align 8
  %705 = load i32, i32* %26, align 4
  %706 = load %struct.acm*, %struct.acm** %17, align 8
  %707 = getelementptr inbounds %struct.acm, %struct.acm* %706, i32 0, i32 27
  %708 = call i32 @__set_bit(i32 %705, i32* %707)
  br label %709

709:                                              ; preds = %697
  %710 = load i32, i32* %26, align 4
  %711 = add nsw i32 %710, 1
  store i32 %711, i32* %26, align 4
  br label %601

712:                                              ; preds = %601
  store i32 0, i32* %26, align 4
  br label %713

713:                                              ; preds = %796, %712
  %714 = load i32, i32* %26, align 4
  %715 = load i32, i32* @ACM_NW, align 4
  %716 = icmp slt i32 %714, %715
  br i1 %716, label %717, label %799

717:                                              ; preds = %713
  %718 = load %struct.acm*, %struct.acm** %17, align 8
  %719 = getelementptr inbounds %struct.acm, %struct.acm* %718, i32 0, i32 15
  %720 = load %struct.acm*, %struct.acm** %719, align 8
  %721 = load i32, i32* %26, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds %struct.acm, %struct.acm* %720, i64 %722
  %724 = bitcast %struct.acm* %723 to %struct.acm_wb*
  store %struct.acm_wb* %724, %struct.acm_wb** %33, align 8
  %725 = load i32, i32* @GFP_KERNEL, align 4
  %726 = call i8* @usb_alloc_urb(i32 0, i32 %725)
  %727 = bitcast i8* %726 to %struct.urb*
  %728 = load %struct.acm_wb*, %struct.acm_wb** %33, align 8
  %729 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %728, i32 0, i32 14
  store %struct.urb* %727, %struct.urb** %729, align 8
  %730 = load %struct.acm_wb*, %struct.acm_wb** %33, align 8
  %731 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %730, i32 0, i32 14
  %732 = load %struct.urb*, %struct.urb** %731, align 8
  %733 = icmp eq %struct.urb* %732, null
  br i1 %733, label %734, label %735

734:                                              ; preds = %717
  br label %1015

735:                                              ; preds = %717
  %736 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %737 = bitcast %struct.usb_endpoint_descriptor* %736 to %struct.usb_interface*
  %738 = call i64 @usb_endpoint_xfer_int(%struct.usb_interface* %737)
  %739 = icmp ne i64 %738, 0
  br i1 %739, label %740, label %757

740:                                              ; preds = %735
  %741 = load %struct.acm_wb*, %struct.acm_wb** %33, align 8
  %742 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %741, i32 0, i32 14
  %743 = load %struct.urb*, %struct.urb** %742, align 8
  %744 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %745 = load %struct.acm*, %struct.acm** %17, align 8
  %746 = getelementptr inbounds %struct.acm, %struct.acm* %745, i32 0, i32 18
  %747 = load i32, i32* %746, align 8
  %748 = load %struct.acm*, %struct.acm** %17, align 8
  %749 = getelementptr inbounds %struct.acm, %struct.acm* %748, i32 0, i32 1
  %750 = load i32, i32* %749, align 4
  %751 = load i32, i32* @acm_write_bulk, align 4
  %752 = load %struct.acm_wb*, %struct.acm_wb** %33, align 8
  %753 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %754 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %753, i32 0, i32 0
  %755 = load i32, i32* %754, align 8
  %756 = call i32 @usb_fill_int_urb(%struct.urb* %743, %struct.usb_device* %744, i32 %747, i32* null, i32 %750, i32 %751, %struct.acm_wb* %752, i32 %755)
  br label %771

757:                                              ; preds = %735
  %758 = load %struct.acm_wb*, %struct.acm_wb** %33, align 8
  %759 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %758, i32 0, i32 14
  %760 = load %struct.urb*, %struct.urb** %759, align 8
  %761 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %762 = load %struct.acm*, %struct.acm** %17, align 8
  %763 = getelementptr inbounds %struct.acm, %struct.acm* %762, i32 0, i32 18
  %764 = load i32, i32* %763, align 8
  %765 = load %struct.acm*, %struct.acm** %17, align 8
  %766 = getelementptr inbounds %struct.acm, %struct.acm* %765, i32 0, i32 1
  %767 = load i32, i32* %766, align 4
  %768 = load i32, i32* @acm_write_bulk, align 4
  %769 = load %struct.acm_wb*, %struct.acm_wb** %33, align 8
  %770 = call i32 @usb_fill_bulk_urb(%struct.urb* %760, %struct.usb_device* %761, i32 %764, i32* null, i32 %767, i32 %768, %struct.acm_wb* %769)
  br label %771

771:                                              ; preds = %757, %740
  %772 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %773 = load %struct.acm_wb*, %struct.acm_wb** %33, align 8
  %774 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %773, i32 0, i32 14
  %775 = load %struct.urb*, %struct.urb** %774, align 8
  %776 = getelementptr inbounds %struct.urb, %struct.urb* %775, i32 0, i32 1
  %777 = load i32, i32* %776, align 4
  %778 = or i32 %777, %772
  store i32 %778, i32* %776, align 4
  %779 = load i64, i64* %24, align 8
  %780 = load i64, i64* @SEND_ZERO_PACKET, align 8
  %781 = and i64 %779, %780
  %782 = icmp ne i64 %781, 0
  br i1 %782, label %783, label %791

783:                                              ; preds = %771
  %784 = load i32, i32* @URB_ZERO_PACKET, align 4
  %785 = load %struct.acm_wb*, %struct.acm_wb** %33, align 8
  %786 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %785, i32 0, i32 14
  %787 = load %struct.urb*, %struct.urb** %786, align 8
  %788 = getelementptr inbounds %struct.urb, %struct.urb* %787, i32 0, i32 1
  %789 = load i32, i32* %788, align 4
  %790 = or i32 %789, %784
  store i32 %790, i32* %788, align 4
  br label %791

791:                                              ; preds = %783, %771
  %792 = load %struct.acm*, %struct.acm** %17, align 8
  %793 = bitcast %struct.acm* %792 to %struct.acm_wb*
  %794 = load %struct.acm_wb*, %struct.acm_wb** %33, align 8
  %795 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %794, i32 0, i32 26
  store %struct.acm_wb* %793, %struct.acm_wb** %795, align 8
  br label %796

796:                                              ; preds = %791
  %797 = load i32, i32* %26, align 4
  %798 = add nsw i32 %797, 1
  store i32 %798, i32* %26, align 4
  br label %713

799:                                              ; preds = %713
  %800 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %801 = load %struct.acm*, %struct.acm** %17, align 8
  %802 = bitcast %struct.acm* %801 to %struct.acm_wb*
  %803 = call i32 @usb_set_intfdata(%struct.usb_interface* %800, %struct.acm_wb* %802)
  %804 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %805 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %804, i32 0, i32 1
  %806 = call i32 @device_create_file(i32* %805, i32* @dev_attr_bmCapabilities)
  store i32 %806, i32* %26, align 4
  %807 = load i32, i32* %26, align 4
  %808 = icmp slt i32 %807, 0
  br i1 %808, label %809, label %810

809:                                              ; preds = %799
  br label %1015

810:                                              ; preds = %799
  %811 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %16, i32 0, i32 0
  %812 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %811, align 8
  %813 = icmp ne %struct.usb_cdc_country_functional_desc* %812, null
  br i1 %813, label %814, label %885

814:                                              ; preds = %810
  %815 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %16, i32 0, i32 0
  %816 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %815, align 8
  store %struct.usb_cdc_country_functional_desc* %816, %struct.usb_cdc_country_functional_desc** %34, align 8
  %817 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %34, align 8
  %818 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, %struct.usb_cdc_country_functional_desc* %817, i32 0, i32 1
  %819 = load i64, i64* %818, align 8
  %820 = sub nsw i64 %819, 4
  %821 = load i32, i32* @GFP_KERNEL, align 4
  %822 = call i32* @kmalloc(i64 %820, i32 %821)
  %823 = load %struct.acm*, %struct.acm** %17, align 8
  %824 = getelementptr inbounds %struct.acm, %struct.acm* %823, i32 0, i32 17
  store i32* %822, i32** %824, align 8
  %825 = load %struct.acm*, %struct.acm** %17, align 8
  %826 = getelementptr inbounds %struct.acm, %struct.acm* %825, i32 0, i32 17
  %827 = load i32*, i32** %826, align 8
  %828 = icmp ne i32* %827, null
  br i1 %828, label %830, label %829

829:                                              ; preds = %814
  br label %886

830:                                              ; preds = %814
  %831 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %34, align 8
  %832 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, %struct.usb_cdc_country_functional_desc* %831, i32 0, i32 1
  %833 = load i64, i64* %832, align 8
  %834 = sub nsw i64 %833, 4
  %835 = load %struct.acm*, %struct.acm** %17, align 8
  %836 = getelementptr inbounds %struct.acm, %struct.acm* %835, i32 0, i32 24
  store i64 %834, i64* %836, align 8
  %837 = load %struct.acm*, %struct.acm** %17, align 8
  %838 = getelementptr inbounds %struct.acm, %struct.acm* %837, i32 0, i32 17
  %839 = load i32*, i32** %838, align 8
  %840 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %34, align 8
  %841 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, %struct.usb_cdc_country_functional_desc* %840, i32 0, i32 2
  %842 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %34, align 8
  %843 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, %struct.usb_cdc_country_functional_desc* %842, i32 0, i32 1
  %844 = load i64, i64* %843, align 8
  %845 = sub nsw i64 %844, 4
  %846 = call i32 @memcpy(i32* %839, i32* %841, i64 %845)
  %847 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %34, align 8
  %848 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, %struct.usb_cdc_country_functional_desc* %847, i32 0, i32 0
  %849 = load i32, i32* %848, align 8
  %850 = load %struct.acm*, %struct.acm** %17, align 8
  %851 = getelementptr inbounds %struct.acm, %struct.acm* %850, i32 0, i32 25
  store i32 %849, i32* %851, align 8
  %852 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %853 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %852, i32 0, i32 1
  %854 = call i32 @device_create_file(i32* %853, i32* @dev_attr_wCountryCodes)
  store i32 %854, i32* %26, align 4
  %855 = load i32, i32* %26, align 4
  %856 = icmp slt i32 %855, 0
  br i1 %856, label %857, label %866

857:                                              ; preds = %830
  %858 = load %struct.acm*, %struct.acm** %17, align 8
  %859 = getelementptr inbounds %struct.acm, %struct.acm* %858, i32 0, i32 17
  %860 = load i32*, i32** %859, align 8
  %861 = call i32 @kfree(i32* %860)
  %862 = load %struct.acm*, %struct.acm** %17, align 8
  %863 = getelementptr inbounds %struct.acm, %struct.acm* %862, i32 0, i32 17
  store i32* null, i32** %863, align 8
  %864 = load %struct.acm*, %struct.acm** %17, align 8
  %865 = getelementptr inbounds %struct.acm, %struct.acm* %864, i32 0, i32 24
  store i64 0, i64* %865, align 8
  br label %886

866:                                              ; preds = %830
  %867 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %868 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %867, i32 0, i32 1
  %869 = call i32 @device_create_file(i32* %868, i32* @dev_attr_iCountryCodeRelDate)
  store i32 %869, i32* %26, align 4
  %870 = load i32, i32* %26, align 4
  %871 = icmp slt i32 %870, 0
  br i1 %871, label %872, label %884

872:                                              ; preds = %866
  %873 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %874 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %873, i32 0, i32 1
  %875 = call i32 @device_remove_file(i32* %874, i32* @dev_attr_wCountryCodes)
  %876 = load %struct.acm*, %struct.acm** %17, align 8
  %877 = getelementptr inbounds %struct.acm, %struct.acm* %876, i32 0, i32 17
  %878 = load i32*, i32** %877, align 8
  %879 = call i32 @kfree(i32* %878)
  %880 = load %struct.acm*, %struct.acm** %17, align 8
  %881 = getelementptr inbounds %struct.acm, %struct.acm* %880, i32 0, i32 17
  store i32* null, i32** %881, align 8
  %882 = load %struct.acm*, %struct.acm** %17, align 8
  %883 = getelementptr inbounds %struct.acm, %struct.acm* %882, i32 0, i32 24
  store i64 0, i64* %883, align 8
  br label %886

884:                                              ; preds = %866
  br label %885

885:                                              ; preds = %884, %810
  br label %886

886:                                              ; preds = %885, %872, %857, %829
  %887 = load %struct.acm*, %struct.acm** %17, align 8
  %888 = getelementptr inbounds %struct.acm, %struct.acm* %887, i32 0, i32 12
  %889 = load %struct.urb*, %struct.urb** %888, align 8
  %890 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %891 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %892 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %893 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %892, i32 0, i32 2
  %894 = load i32, i32* %893, align 8
  %895 = call i32 @usb_rcvintpipe(%struct.usb_device* %891, i32 %894)
  %896 = load %struct.acm*, %struct.acm** %17, align 8
  %897 = getelementptr inbounds %struct.acm, %struct.acm* %896, i32 0, i32 11
  %898 = load i32*, i32** %897, align 8
  %899 = load i32, i32* %19, align 4
  %900 = load i32, i32* @acm_ctrl_irq, align 4
  %901 = load %struct.acm*, %struct.acm** %17, align 8
  %902 = bitcast %struct.acm* %901 to %struct.acm_wb*
  %903 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %904 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %903, i32 0, i32 0
  %905 = load i32, i32* %904, align 8
  %906 = icmp ne i32 %905, 0
  br i1 %906, label %907, label %911

907:                                              ; preds = %886
  %908 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %909 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %908, i32 0, i32 0
  %910 = load i32, i32* %909, align 8
  br label %912

911:                                              ; preds = %886
  br label %912

912:                                              ; preds = %911, %907
  %913 = phi i32 [ %910, %907 ], [ 16, %911 ]
  %914 = call i32 @usb_fill_int_urb(%struct.urb* %889, %struct.usb_device* %890, i32 %895, i32* %898, i32 %899, i32 %900, %struct.acm_wb* %902, i32 %913)
  %915 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %916 = load %struct.acm*, %struct.acm** %17, align 8
  %917 = getelementptr inbounds %struct.acm, %struct.acm* %916, i32 0, i32 12
  %918 = load %struct.urb*, %struct.urb** %917, align 8
  %919 = getelementptr inbounds %struct.urb, %struct.urb* %918, i32 0, i32 1
  %920 = load i32, i32* %919, align 4
  %921 = or i32 %920, %915
  store i32 %921, i32* %919, align 4
  %922 = load %struct.acm*, %struct.acm** %17, align 8
  %923 = getelementptr inbounds %struct.acm, %struct.acm* %922, i32 0, i32 10
  %924 = load i32, i32* %923, align 8
  %925 = load %struct.acm*, %struct.acm** %17, align 8
  %926 = getelementptr inbounds %struct.acm, %struct.acm* %925, i32 0, i32 12
  %927 = load %struct.urb*, %struct.urb** %926, align 8
  %928 = getelementptr inbounds %struct.urb, %struct.urb* %927, i32 0, i32 0
  store i32 %924, i32* %928, align 4
  %929 = load %struct.acm*, %struct.acm** %17, align 8
  %930 = getelementptr inbounds %struct.acm, %struct.acm* %929, i32 0, i32 23
  store i32* null, i32** %930, align 8
  %931 = load %struct.acm*, %struct.acm** %17, align 8
  %932 = getelementptr inbounds %struct.acm, %struct.acm* %931, i32 0, i32 22
  store i64 0, i64* %932, align 8
  %933 = load %struct.acm*, %struct.acm** %17, align 8
  %934 = getelementptr inbounds %struct.acm, %struct.acm* %933, i32 0, i32 21
  store i64 0, i64* %934, align 8
  %935 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %936 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %935, i32 0, i32 1
  %937 = load i32, i32* %18, align 4
  %938 = call i32 @dev_info(i32* %936, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %937)
  %939 = call i32 @cpu_to_le32(i32 9600)
  %940 = load %struct.acm*, %struct.acm** %17, align 8
  %941 = getelementptr inbounds %struct.acm, %struct.acm* %940, i32 0, i32 20
  %942 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %941, i32 0, i32 1
  store i32 %939, i32* %942, align 4
  %943 = load %struct.acm*, %struct.acm** %17, align 8
  %944 = getelementptr inbounds %struct.acm, %struct.acm* %943, i32 0, i32 20
  %945 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %944, i32 0, i32 0
  store i32 8, i32* %945, align 8
  %946 = load %struct.acm*, %struct.acm** %17, align 8
  %947 = bitcast %struct.acm* %946 to %struct.acm_wb*
  %948 = load %struct.acm*, %struct.acm** %17, align 8
  %949 = getelementptr inbounds %struct.acm, %struct.acm* %948, i32 0, i32 20
  %950 = call i32 @acm_set_line(%struct.acm_wb* %947, %struct.TYPE_16__* %949)
  %951 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %952 = load %struct.acm*, %struct.acm** %17, align 8
  %953 = bitcast %struct.acm* %952 to %struct.acm_wb*
  %954 = call i32 @usb_driver_claim_interface(i32* @acm_driver, %struct.usb_interface* %951, %struct.acm_wb* %953)
  %955 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %956 = load %struct.acm*, %struct.acm** %17, align 8
  %957 = bitcast %struct.acm* %956 to %struct.acm_wb*
  %958 = call i32 @usb_set_intfdata(%struct.usb_interface* %955, %struct.acm_wb* %957)
  %959 = load %struct.acm*, %struct.acm** %17, align 8
  %960 = getelementptr inbounds %struct.acm, %struct.acm* %959, i32 0, i32 9
  %961 = load i32, i32* @acm_tty_driver, align 4
  %962 = load i32, i32* %18, align 4
  %963 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %964 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %963, i32 0, i32 1
  %965 = call %struct.device* @tty_port_register_device(%struct.TYPE_15__* %960, i32 %961, i32 %962, i32* %964)
  store %struct.device* %965, %struct.device** %28, align 8
  %966 = load %struct.device*, %struct.device** %28, align 8
  %967 = call i64 @IS_ERR(%struct.device* %966)
  %968 = icmp ne i64 %967, 0
  br i1 %968, label %969, label %972

969:                                              ; preds = %912
  %970 = load %struct.device*, %struct.device** %28, align 8
  %971 = call i32 @PTR_ERR(%struct.device* %970)
  store i32 %971, i32* %29, align 4
  br label %989

972:                                              ; preds = %912
  %973 = load i64, i64* %24, align 8
  %974 = load i64, i64* @CLEAR_HALT_CONDITIONS, align 8
  %975 = and i64 %973, %974
  %976 = icmp ne i64 %975, 0
  br i1 %976, label %977, label %988

977:                                              ; preds = %972
  %978 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %979 = load %struct.acm*, %struct.acm** %17, align 8
  %980 = getelementptr inbounds %struct.acm, %struct.acm* %979, i32 0, i32 19
  %981 = load i32, i32* %980, align 4
  %982 = call i32 @usb_clear_halt(%struct.usb_device* %978, i32 %981)
  %983 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %984 = load %struct.acm*, %struct.acm** %17, align 8
  %985 = getelementptr inbounds %struct.acm, %struct.acm* %984, i32 0, i32 18
  %986 = load i32, i32* %985, align 8
  %987 = call i32 @usb_clear_halt(%struct.usb_device* %983, i32 %986)
  br label %988

988:                                              ; preds = %977, %972
  store i32 0, i32* %3, align 4
  br label %1081

989:                                              ; preds = %969
  %990 = load %struct.acm*, %struct.acm** %17, align 8
  %991 = getelementptr inbounds %struct.acm, %struct.acm* %990, i32 0, i32 17
  %992 = load i32*, i32** %991, align 8
  %993 = icmp ne i32* %992, null
  br i1 %993, label %994, label %1009

994:                                              ; preds = %989
  %995 = load %struct.acm*, %struct.acm** %17, align 8
  %996 = getelementptr inbounds %struct.acm, %struct.acm* %995, i32 0, i32 16
  %997 = load %struct.usb_interface*, %struct.usb_interface** %996, align 8
  %998 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %997, i32 0, i32 1
  %999 = call i32 @device_remove_file(i32* %998, i32* @dev_attr_wCountryCodes)
  %1000 = load %struct.acm*, %struct.acm** %17, align 8
  %1001 = getelementptr inbounds %struct.acm, %struct.acm* %1000, i32 0, i32 16
  %1002 = load %struct.usb_interface*, %struct.usb_interface** %1001, align 8
  %1003 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1002, i32 0, i32 1
  %1004 = call i32 @device_remove_file(i32* %1003, i32* @dev_attr_iCountryCodeRelDate)
  %1005 = load %struct.acm*, %struct.acm** %17, align 8
  %1006 = getelementptr inbounds %struct.acm, %struct.acm* %1005, i32 0, i32 17
  %1007 = load i32*, i32** %1006, align 8
  %1008 = call i32 @kfree(i32* %1007)
  br label %1009

1009:                                             ; preds = %994, %989
  %1010 = load %struct.acm*, %struct.acm** %17, align 8
  %1011 = getelementptr inbounds %struct.acm, %struct.acm* %1010, i32 0, i32 16
  %1012 = load %struct.usb_interface*, %struct.usb_interface** %1011, align 8
  %1013 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1012, i32 0, i32 1
  %1014 = call i32 @device_remove_file(i32* %1013, i32* @dev_attr_bmCapabilities)
  br label %1015

1015:                                             ; preds = %1009, %809, %734
  %1016 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %1017 = call i32 @usb_set_intfdata(%struct.usb_interface* %1016, %struct.acm_wb* null)
  store i32 0, i32* %26, align 4
  br label %1018

1018:                                             ; preds = %1032, %1015
  %1019 = load i32, i32* %26, align 4
  %1020 = load i32, i32* @ACM_NW, align 4
  %1021 = icmp slt i32 %1019, %1020
  br i1 %1021, label %1022, label %1035

1022:                                             ; preds = %1018
  %1023 = load %struct.acm*, %struct.acm** %17, align 8
  %1024 = getelementptr inbounds %struct.acm, %struct.acm* %1023, i32 0, i32 15
  %1025 = load %struct.acm*, %struct.acm** %1024, align 8
  %1026 = load i32, i32* %26, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds %struct.acm, %struct.acm* %1025, i64 %1027
  %1029 = getelementptr inbounds %struct.acm, %struct.acm* %1028, i32 0, i32 14
  %1030 = load %struct.urb*, %struct.urb** %1029, align 8
  %1031 = call i32 @usb_free_urb(%struct.urb* %1030)
  br label %1032

1032:                                             ; preds = %1022
  %1033 = load i32, i32* %26, align 4
  %1034 = add nsw i32 %1033, 1
  store i32 %1034, i32* %26, align 4
  br label %1018

1035:                                             ; preds = %1018
  br label %1036

1036:                                             ; preds = %1035, %642, %628
  store i32 0, i32* %26, align 4
  br label %1037

1037:                                             ; preds = %1050, %1036
  %1038 = load i32, i32* %26, align 4
  %1039 = load i32, i32* %25, align 4
  %1040 = icmp slt i32 %1038, %1039
  br i1 %1040, label %1041, label %1053

1041:                                             ; preds = %1037
  %1042 = load %struct.acm*, %struct.acm** %17, align 8
  %1043 = getelementptr inbounds %struct.acm, %struct.acm* %1042, i32 0, i32 13
  %1044 = load %struct.urb**, %struct.urb*** %1043, align 8
  %1045 = load i32, i32* %26, align 4
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds %struct.urb*, %struct.urb** %1044, i64 %1046
  %1048 = load %struct.urb*, %struct.urb** %1047, align 8
  %1049 = call i32 @usb_free_urb(%struct.urb* %1048)
  br label %1050

1050:                                             ; preds = %1041
  %1051 = load i32, i32* %26, align 4
  %1052 = add nsw i32 %1051, 1
  store i32 %1052, i32* %26, align 4
  br label %1037

1053:                                             ; preds = %1037
  %1054 = load %struct.acm*, %struct.acm** %17, align 8
  %1055 = bitcast %struct.acm* %1054 to %struct.acm_wb*
  %1056 = call i32 @acm_read_buffers_free(%struct.acm_wb* %1055)
  %1057 = load %struct.acm*, %struct.acm** %17, align 8
  %1058 = getelementptr inbounds %struct.acm, %struct.acm* %1057, i32 0, i32 12
  %1059 = load %struct.urb*, %struct.urb** %1058, align 8
  %1060 = call i32 @usb_free_urb(%struct.urb* %1059)
  br label %1061

1061:                                             ; preds = %1053, %599
  %1062 = load %struct.acm*, %struct.acm** %17, align 8
  %1063 = bitcast %struct.acm* %1062 to %struct.acm_wb*
  %1064 = call i32 @acm_write_buffers_free(%struct.acm_wb* %1063)
  br label %1065

1065:                                             ; preds = %1061, %588
  %1066 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %1067 = load i32, i32* %19, align 4
  %1068 = load %struct.acm*, %struct.acm** %17, align 8
  %1069 = getelementptr inbounds %struct.acm, %struct.acm* %1068, i32 0, i32 11
  %1070 = load i32*, i32** %1069, align 8
  %1071 = load %struct.acm*, %struct.acm** %17, align 8
  %1072 = getelementptr inbounds %struct.acm, %struct.acm* %1071, i32 0, i32 10
  %1073 = load i32, i32* %1072, align 8
  %1074 = call i32 @usb_free_coherent(%struct.usb_device* %1066, i32 %1067, i32* %1070, i32 %1073)
  br label %1075

1075:                                             ; preds = %1065, %579, %461
  %1076 = load %struct.acm*, %struct.acm** %17, align 8
  %1077 = getelementptr inbounds %struct.acm, %struct.acm* %1076, i32 0, i32 9
  %1078 = call i32 @tty_port_put(%struct.TYPE_15__* %1077)
  br label %1079

1079:                                             ; preds = %1075, %417
  %1080 = load i32, i32* %29, align 4
  store i32 %1080, i32* %3, align 4
  br label %1081

1081:                                             ; preds = %1079, %988, %366, %344, %334, %323, %294, %277, %248, %232, %202, %148, %99, %88, %81, %55
  %1082 = load i32, i32* %3, align 4
  ret i32 %1082
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @memset(%struct.usb_cdc_parsed_header*, i32, i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @cdc_parse_cdc_header(%struct.usb_cdc_parsed_header*, %struct.usb_interface*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @usb_find_common_endpoints(%struct.TYPE_14__*, %struct.usb_interface**, %struct.usb_interface**, %struct.usb_interface**, i32*) #1

declare dso_local i32 @swap(%struct.usb_interface*, %struct.usb_interface*) #1

declare dso_local i64 @usb_interface_claimed(%struct.usb_interface*) #1

declare dso_local i32 @usb_endpoint_dir_in(%struct.usb_interface*) #1

declare dso_local %struct.acm_wb* @kzalloc(i32, i32) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_15__*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @acm_alloc_minor(%struct.acm_wb*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_interface*) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i64 @acm_write_buffers_alloc(%struct.acm_wb*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, %struct.usb_device*, i32, i32*, i32, i32, %struct.acm_wb*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i32*, i32, i32, %struct.acm_wb*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.acm_wb*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @acm_set_line(%struct.acm_wb*, %struct.TYPE_16__*) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, %struct.usb_interface*, %struct.acm_wb*) #1

declare dso_local %struct.device* @tty_port_register_device(%struct.TYPE_15__*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @usb_clear_halt(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @acm_read_buffers_free(%struct.acm_wb*) #1

declare dso_local i32 @acm_write_buffers_free(%struct.acm_wb*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32*, i32) #1

declare dso_local i32 @tty_port_put(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
