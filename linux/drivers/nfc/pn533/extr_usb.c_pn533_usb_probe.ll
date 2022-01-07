; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533_frame_ops = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.pn533 = type { i32 }
%struct.pn533_usb_phy = type { i8*, %struct.TYPE_10__*, i8*, i8*, i8*, %struct.pn533*, %struct.usb_interface* }
%struct.TYPE_10__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PN533_PROTO_REQ_ACK_RESP = common dso_local global i32 0, align 4
@PN533_EXT_FRAME_HEADER_LEN = common dso_local global i32 0, align 4
@PN533_STD_FRAME_MAX_PAYLOAD_LEN = common dso_local global i32 0, align 4
@PN533_STD_FRAME_TAIL_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not find bulk-in or bulk-out endpoint\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@pn533_send_complete = common dso_local global i32* null, align 8
@PN533_ALL_PROTOCOLS = common dso_local global i32 0, align 4
@PN533_NO_TYPE_B_PROTOCOLS = common dso_local global i32 0, align 4
@pn533_acr122_frame_ops = common dso_local global %struct.pn533_frame_ops zeroinitializer, align 4
@PN533_PROTO_REQ_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't poweron the reader (error %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unknown device type %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@usb_phy_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @pn533_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.pn533*, align 8
  %7 = alloca %struct.pn533_usb_phy*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pn533_frame_ops*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @PN533_PROTO_REQ_ACK_RESP, align 4
  store i32 %21, i32* %15, align 4
  store %struct.pn533_frame_ops* null, %struct.pn533_frame_ops** %16, align 8
  %22 = load i32, i32* @PN533_EXT_FRAME_HEADER_LEN, align 4
  %23 = load i32, i32* @PN533_STD_FRAME_MAX_PAYLOAD_LEN, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @PN533_STD_FRAME_TAIL_LEN, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %18, align 4
  %27 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.pn533_usb_phy* @devm_kzalloc(i32* %28, i32 56, i32 %29)
  store %struct.pn533_usb_phy* %30, %struct.pn533_usb_phy** %7, align 8
  %31 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %32 = icmp ne %struct.pn533_usb_phy* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %285

36:                                               ; preds = %2
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i32 %37, i32 %38)
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %285

45:                                               ; preds = %36
  %46 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %47 = call i32 @interface_to_usbdev(%struct.usb_interface* %46)
  %48 = call %struct.TYPE_10__* @usb_get_dev(i32 %47)
  %49 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %50 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %49, i32 0, i32 1
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %50, align 8
  %51 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %52 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %53 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %52, i32 0, i32 6
  store %struct.usb_interface* %51, %struct.usb_interface** %53, align 8
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %54, i32 0, i32 1
  %56 = load %struct.usb_host_interface*, %struct.usb_host_interface** %55, align 8
  store %struct.usb_host_interface* %56, %struct.usb_host_interface** %8, align 8
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %94, %45
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %60 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %57
  %65 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %66 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %71, %struct.usb_endpoint_descriptor** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %64
  %75 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %76 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %80 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %74, %64
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %87 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %91 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %89, %85, %82
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %57

97:                                               ; preds = %57
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %105 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %104, i32 0, i32 0
  %106 = call i32 (i32*, i8*, ...) @nfc_err(i32* %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %12, align 4
  br label %249

109:                                              ; preds = %100
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i8* @usb_alloc_urb(i32 0, i32 %110)
  %112 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %113 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @usb_alloc_urb(i32 0, i32 %114)
  %116 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %117 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i8* @usb_alloc_urb(i32 0, i32 %118)
  %120 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %121 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %123 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %122, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %136

126:                                              ; preds = %109
  %127 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %128 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %133 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %131, %126, %109
  br label %249

137:                                              ; preds = %131
  %138 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %139 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %142 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %141, i32 0, i32 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %145 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %144, i32 0, i32 1
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @usb_rcvbulkpipe(%struct.TYPE_10__* %146, i32 %147)
  %149 = load i8*, i8** %17, align 8
  %150 = load i32, i32* %18, align 4
  %151 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %152 = call i32 @usb_fill_bulk_urb(i8* %140, %struct.TYPE_10__* %143, i32 %148, i8* %149, i32 %150, i32* null, %struct.pn533_usb_phy* %151)
  %153 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %154 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %157 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %156, i32 0, i32 1
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %160 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %159, i32 0, i32 1
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @usb_sndbulkpipe(%struct.TYPE_10__* %161, i32 %162)
  %164 = load i32*, i32** @pn533_send_complete, align 8
  %165 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %166 = call i32 @usb_fill_bulk_urb(i8* %155, %struct.TYPE_10__* %158, i32 %163, i8* null, i32 0, i32* %164, %struct.pn533_usb_phy* %165)
  %167 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %168 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %171 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %170, i32 0, i32 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %174 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %173, i32 0, i32 1
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @usb_sndbulkpipe(%struct.TYPE_10__* %175, i32 %176)
  %178 = load i32*, i32** @pn533_send_complete, align 8
  %179 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %180 = call i32 @usb_fill_bulk_urb(i8* %169, %struct.TYPE_10__* %172, i32 %177, i8* null, i32 0, i32* %178, %struct.pn533_usb_phy* %179)
  %181 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %182 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  switch i32 %183, label %201 [
    i32 128, label %184
    i32 129, label %186
    i32 130, label %188
  ]

184:                                              ; preds = %137
  %185 = load i32, i32* @PN533_ALL_PROTOCOLS, align 4
  store i32 %185, i32* %14, align 4
  br label %210

186:                                              ; preds = %137
  %187 = load i32, i32* @PN533_NO_TYPE_B_PROTOCOLS, align 4
  store i32 %187, i32* %14, align 4
  br label %210

188:                                              ; preds = %137
  %189 = load i32, i32* @PN533_NO_TYPE_B_PROTOCOLS, align 4
  store i32 %189, i32* %14, align 4
  store %struct.pn533_frame_ops* @pn533_acr122_frame_ops, %struct.pn533_frame_ops** %16, align 8
  %190 = load i32, i32* @PN533_PROTO_REQ_RESP, align 4
  store i32 %190, i32* %15, align 4
  %191 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %192 = call i32 @pn533_acr122_poweron_rdr(%struct.pn533_usb_phy* %191)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %188
  %196 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %197 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %196, i32 0, i32 0
  %198 = load i32, i32* %12, align 4
  %199 = call i32 (i32*, i8*, ...) @nfc_err(i32* %197, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %198)
  br label %249

200:                                              ; preds = %188
  br label %210

201:                                              ; preds = %137
  %202 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %203 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %202, i32 0, i32 0
  %204 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %205 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32*, i8*, ...) @nfc_err(i32* %203, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %12, align 4
  br label %249

210:                                              ; preds = %200, %186, %184
  %211 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %212 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %15, align 4
  %216 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %217 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %16, align 8
  %218 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %219 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %218, i32 0, i32 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %223 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %222, i32 0, i32 0
  %224 = call %struct.pn533* @pn533_register_device(i32 %213, i32 %214, i32 %215, %struct.pn533_usb_phy* %216, i32* @usb_phy_ops, %struct.pn533_frame_ops* %217, i32* %221, i32* %223)
  store %struct.pn533* %224, %struct.pn533** %6, align 8
  %225 = load %struct.pn533*, %struct.pn533** %6, align 8
  %226 = call i64 @IS_ERR(%struct.pn533* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %210
  %229 = load %struct.pn533*, %struct.pn533** %6, align 8
  %230 = call i32 @PTR_ERR(%struct.pn533* %229)
  store i32 %230, i32* %12, align 4
  br label %249

231:                                              ; preds = %210
  %232 = load %struct.pn533*, %struct.pn533** %6, align 8
  %233 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %234 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %233, i32 0, i32 5
  store %struct.pn533* %232, %struct.pn533** %234, align 8
  %235 = load %struct.pn533*, %struct.pn533** %6, align 8
  %236 = call i32 @pn533_finalize_setup(%struct.pn533* %235)
  store i32 %236, i32* %12, align 4
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  br label %244

240:                                              ; preds = %231
  %241 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %242 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %243 = call i32 @usb_set_intfdata(%struct.usb_interface* %241, %struct.pn533_usb_phy* %242)
  store i32 0, i32* %3, align 4
  br label %285

244:                                              ; preds = %239
  %245 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %246 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %245, i32 0, i32 5
  %247 = load %struct.pn533*, %struct.pn533** %246, align 8
  %248 = call i32 @pn533_unregister_device(%struct.pn533* %247)
  br label %249

249:                                              ; preds = %244, %228, %201, %195, %136, %103
  %250 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %251 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %250, i32 0, i32 4
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @usb_kill_urb(i8* %252)
  %254 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %255 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %254, i32 0, i32 3
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @usb_kill_urb(i8* %256)
  %258 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %259 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %258, i32 0, i32 2
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @usb_kill_urb(i8* %260)
  %262 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %263 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %262, i32 0, i32 4
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @usb_free_urb(i8* %264)
  %266 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %267 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %266, i32 0, i32 3
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @usb_free_urb(i8* %268)
  %270 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %271 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %270, i32 0, i32 2
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @usb_free_urb(i8* %272)
  %274 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %275 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %274, i32 0, i32 1
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %275, align 8
  %277 = call i32 @usb_put_dev(%struct.TYPE_10__* %276)
  %278 = load i8*, i8** %17, align 8
  %279 = call i32 @kfree(i8* %278)
  %280 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  %281 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @kfree(i8* %282)
  %284 = load i32, i32* %12, align 4
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %249, %240, %42, %33
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local %struct.pn533_usb_phy* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @nfc_err(i32*, i8*, ...) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i8*, %struct.TYPE_10__*, i32, i8*, i32, i32*, %struct.pn533_usb_phy*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pn533_acr122_poweron_rdr(%struct.pn533_usb_phy*) #1

declare dso_local %struct.pn533* @pn533_register_device(i32, i32, i32, %struct.pn533_usb_phy*, i32*, %struct.pn533_frame_ops*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.pn533*) #1

declare dso_local i32 @PTR_ERR(%struct.pn533*) #1

declare dso_local i32 @pn533_finalize_setup(%struct.pn533*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.pn533_usb_phy*) #1

declare dso_local i32 @pn533_unregister_device(%struct.pn533*) #1

declare dso_local i32 @usb_kill_urb(i8*) #1

declare dso_local i32 @usb_free_urb(i8*) #1

declare dso_local i32 @usb_put_dev(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
