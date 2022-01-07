; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { i32, %struct.cxacru_data* }
%struct.cxacru_data = type { i32, i32, i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.cxacru_modem_type*, %struct.usbatm_data* }
%struct.cxacru_modem_type = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_device = type { %struct.usb_host_endpoint** }
%struct.usb_host_endpoint = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CXACRU_EP_CMD = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CXPOLL_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cxacru_bind: no memory for rcv_buf\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"cxacru_bind: no memory for snd_buf\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"cxacru_bind: no command endpoint\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@cxacru_blocking_completion = common dso_local global i32 0, align 4
@cxacru_poll_status = common dso_local global i32 0, align 4
@UDSL_SKIP_HEAVY_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbatm_data*, %struct.usb_interface*, %struct.usb_device_id*)* @cxacru_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_bind(%struct.usbatm_data* %0, %struct.usb_interface* %1, %struct.usb_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbatm_data*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_device_id*, align 8
  %8 = alloca %struct.cxacru_data*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_host_endpoint*, align 8
  %11 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store %struct.usb_device_id* %2, %struct.usb_device_id** %7, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %9, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %15, align 8
  %17 = load i64, i64* @CXACRU_EP_CMD, align 8
  %18 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, i64 %17
  %19 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %18, align 8
  store %struct.usb_host_endpoint* %19, %struct.usb_host_endpoint** %10, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.cxacru_data* @kzalloc(i32 88, i32 %20)
  store %struct.cxacru_data* %21, %struct.cxacru_data** %8, align 8
  %22 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %23 = icmp ne %struct.cxacru_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %225

27:                                               ; preds = %3
  %28 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %29 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %30 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %29, i32 0, i32 14
  store %struct.usbatm_data* %28, %struct.usbatm_data** %30, align 8
  %31 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %32 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.cxacru_modem_type*
  %35 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %36 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %35, i32 0, i32 13
  store %struct.cxacru_modem_type* %34, %struct.cxacru_modem_type** %36, align 8
  %37 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %38 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %37, i32 0, i32 12
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load i32, i32* @CXPOLL_STOPPED, align 4
  %41 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %42 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 4
  %43 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %44 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %46 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 4
  %47 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %48 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %47, i32 0, i32 10
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i64 @__get_free_page(i32 %50)
  %52 = inttoptr i64 %51 to i32*
  %53 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %54 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  %55 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %56 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %27
  %60 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %61 = call i32 @usb_dbg(%struct.usbatm_data* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %203

64:                                               ; preds = %27
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i64 @__get_free_page(i32 %65)
  %67 = inttoptr i64 %66 to i32*
  %68 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %69 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %68, i32 0, i32 5
  store i32* %67, i32** %69, align 8
  %70 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %71 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %64
  %75 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %76 = call i32 @usb_dbg(%struct.usbatm_data* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %203

79:                                               ; preds = %64
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @usb_alloc_urb(i32 0, i32 %80)
  %82 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %83 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %85 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %11, align 4
  br label %203

91:                                               ; preds = %79
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @usb_alloc_urb(i32 0, i32 %92)
  %94 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %95 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %97 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %91
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  br label %203

103:                                              ; preds = %91
  %104 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %105 = icmp ne %struct.usb_host_endpoint* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %108 = call i32 @usb_dbg(%struct.usbatm_data* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %11, align 4
  br label %203

111:                                              ; preds = %103
  %112 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %113 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %151

120:                                              ; preds = %111
  %121 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %122 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %125 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %126 = load i64, i64* @CXACRU_EP_CMD, align 8
  %127 = call i32 @usb_rcvintpipe(%struct.usb_device* %125, i64 %126)
  %128 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %129 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = load i32, i32* @cxacru_blocking_completion, align 4
  %133 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %134 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %133, i32 0, i32 9
  %135 = call i32 @usb_fill_int_urb(i8* %123, %struct.usb_device* %124, i32 %127, i32* %130, i32 %131, i32 %132, i32* %134, i32 1)
  %136 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %137 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %140 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %141 = load i64, i64* @CXACRU_EP_CMD, align 8
  %142 = call i32 @usb_sndintpipe(%struct.usb_device* %140, i64 %141)
  %143 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %144 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = load i32, i32* @cxacru_blocking_completion, align 4
  %148 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %149 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %148, i32 0, i32 8
  %150 = call i32 @usb_fill_int_urb(i8* %138, %struct.usb_device* %139, i32 %142, i32* %145, i32 %146, i32 %147, i32* %149, i32 4)
  br label %182

151:                                              ; preds = %111
  %152 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %153 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %156 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %157 = load i64, i64* @CXACRU_EP_CMD, align 8
  %158 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %156, i64 %157)
  %159 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %160 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* @PAGE_SIZE, align 4
  %163 = load i32, i32* @cxacru_blocking_completion, align 4
  %164 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %165 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %164, i32 0, i32 9
  %166 = call i32 @usb_fill_bulk_urb(i8* %154, %struct.usb_device* %155, i32 %158, i32* %161, i32 %162, i32 %163, i32* %165)
  %167 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %168 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %171 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %172 = load i64, i64* @CXACRU_EP_CMD, align 8
  %173 = call i32 @usb_sndbulkpipe(%struct.usb_device* %171, i64 %172)
  %174 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %175 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %174, i32 0, i32 5
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* @PAGE_SIZE, align 4
  %178 = load i32, i32* @cxacru_blocking_completion, align 4
  %179 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %180 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %179, i32 0, i32 8
  %181 = call i32 @usb_fill_bulk_urb(i8* %169, %struct.usb_device* %170, i32 %173, i32* %176, i32 %177, i32 %178, i32* %180)
  br label %182

182:                                              ; preds = %151, %120
  %183 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %184 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %183, i32 0, i32 7
  %185 = call i32 @mutex_init(i32* %184)
  %186 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %187 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %186, i32 0, i32 6
  %188 = load i32, i32* @cxacru_poll_status, align 4
  %189 = call i32 @INIT_DELAYED_WORK(i32* %187, i32 %188)
  %190 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %191 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %192 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %191, i32 0, i32 1
  store %struct.cxacru_data* %190, %struct.cxacru_data** %192, align 8
  %193 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %194 = call i64 @cxacru_card_status(%struct.cxacru_data* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %182
  br label %199

197:                                              ; preds = %182
  %198 = load i32, i32* @UDSL_SKIP_HEAVY_INIT, align 4
  br label %199

199:                                              ; preds = %197, %196
  %200 = phi i32 [ 0, %196 ], [ %198, %197 ]
  %201 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %202 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  store i32 0, i32* %4, align 4
  br label %225

203:                                              ; preds = %106, %100, %88, %74, %59
  %204 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %205 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = ptrtoint i32* %206 to i64
  %208 = call i32 @free_page(i64 %207)
  %209 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %210 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = ptrtoint i32* %211 to i64
  %213 = call i32 @free_page(i64 %212)
  %214 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %215 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %214, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @usb_free_urb(i8* %216)
  %218 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %219 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @usb_free_urb(i8* %220)
  %222 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %223 = call i32 @kfree(%struct.cxacru_data* %222)
  %224 = load i32, i32* %11, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %203, %199, %24
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.cxacru_data* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @usb_dbg(%struct.usbatm_data*, i8*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i8*, %struct.usb_device*, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @usb_fill_bulk_urb(i8*, %struct.usb_device*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @cxacru_card_status(%struct.cxacru_data*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @usb_free_urb(i8*) #1

declare dso_local i32 @kfree(%struct.cxacru_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
