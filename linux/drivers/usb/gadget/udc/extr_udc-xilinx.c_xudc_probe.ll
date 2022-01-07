; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i64 }
%struct.xusb_udc = type { i64 (i64)*, i64, i64, i32 (i64, i64, i32)*, %struct.TYPE_17__, i32*, i32, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32, i32, i32*, i32, i32, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STATUSBUFF_SIZE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@xudc_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to request irq %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"xlnx,has-builtin-dma\00", align 1
@xusb_udc_ops = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@XUSB_EP_NUMBER_ZERO = common dso_local global i64 0, align 8
@driver_name = common dso_local global i32 0, align 4
@XUSB_TESTMODE_OFFSET = common dso_local global i64 0, align 8
@TEST_J = common dso_local global i64 0, align 8
@XUSB_ADDRESS_OFFSET = common dso_local global i64 0, align 8
@XUSB_STATUS_GLOBAL_INTR_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_INTR_EVENT_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_FIFO_BUFF_RDY_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_FIFO_BUFF_FREE_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_SETUP_PACKET_MASK = common dso_local global i32 0, align 4
@XUSB_STATUS_INTR_BUFF_COMP_ALL_MASK = common dso_local global i32 0, align 4
@XUSB_IER_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"%s at 0x%08X mapped to %p %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"with DMA\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"without DMA\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"probe failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xudc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xudc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.xusb_udc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @devm_kzalloc(%struct.TYPE_16__* %16, i32 96, i32 %17)
  %19 = bitcast i8* %18 to %struct.xusb_udc*
  store %struct.xusb_udc* %19, %struct.xusb_udc** %6, align 8
  %20 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %21 = icmp ne %struct.xusb_udc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %243

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kzalloc(%struct.TYPE_16__* %27, i32 4, i32 %28)
  %30 = bitcast i8* %29 to %struct.TYPE_14__*
  %31 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %32 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %31, i32 0, i32 8
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %32, align 8
  %33 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %34 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %33, i32 0, i32 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %243

40:                                               ; preds = %25
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* @STATUSBUFF_SIZE, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @devm_kzalloc(%struct.TYPE_16__* %42, i32 %43, i32 %44)
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %243

52:                                               ; preds = %40
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %55 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %54, i32 0, i32 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32* %53, i32** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load i32, i32* @IORESOURCE_MEM, align 4
  %61 = call %struct.resource* @platform_get_resource(%struct.platform_device* %59, i32 %60, i32 0)
  store %struct.resource* %61, %struct.resource** %5, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = call i64 @devm_ioremap_resource(%struct.TYPE_16__* %63, %struct.resource* %64)
  %66 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %67 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %69 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @IS_ERR(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %52
  %74 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %75 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @PTR_ERR(i64 %76)
  store i32 %77, i32* %2, align 4
  br label %243

78:                                               ; preds = %52
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = call i32 @platform_get_irq(%struct.platform_device* %79, i32 0)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %243

85:                                               ; preds = %78
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @xudc_irq, align 4
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_name(%struct.TYPE_16__* %91)
  %93 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %94 = call i32 @devm_request_irq(%struct.TYPE_16__* %87, i32 %88, i32 %89, i32 0, i32 %92, %struct.xusb_udc* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @dev_dbg(%struct.TYPE_16__* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %237

102:                                              ; preds = %85
  %103 = load %struct.device_node*, %struct.device_node** %4, align 8
  %104 = call i64 @of_property_read_bool(%struct.device_node* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %106 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %108 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 5
  store i32* @xusb_udc_ops, i32** %109, align 8
  %110 = load i32, i32* @USB_SPEED_HIGH, align 4
  %111 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %112 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 4
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %115 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %116 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  store i32 %114, i32* %117, align 8
  %118 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %119 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %118, i32 0, i32 7
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = load i64, i64* @XUSB_EP_NUMBER_ZERO, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %125 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  store i32* %123, i32** %126, align 8
  %127 = load i32, i32* @driver_name, align 4
  %128 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %129 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %132 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %131, i32 0, i32 6
  %133 = call i32 @spin_lock_init(i32* %132)
  %134 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %135 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %134, i32 0, i32 3
  store i32 (i64, i64, i32)* bitcast (i32 (i64, i64, i64)* @xudc_write32_be to i32 (i64, i64, i32)*), i32 (i64, i64, i32)** %135, align 8
  %136 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %137 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %136, i32 0, i32 0
  store i64 (i64)* @xudc_read32_be, i64 (i64)** %137, align 8
  %138 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %139 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %138, i32 0, i32 3
  %140 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %139, align 8
  %141 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %142 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @XUSB_TESTMODE_OFFSET, align 8
  %145 = load i64, i64* @TEST_J, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 %140(i64 %143, i64 %144, i32 %146)
  %148 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %149 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %148, i32 0, i32 0
  %150 = load i64 (i64)*, i64 (i64)** %149, align 8
  %151 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %152 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @XUSB_TESTMODE_OFFSET, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i64 %150(i64 %155)
  %157 = load i64, i64* @TEST_J, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %102
  %160 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %161 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %160, i32 0, i32 3
  store i32 (i64, i64, i32)* bitcast (i32 (i64, i64, i64)* @xudc_write32 to i32 (i64, i64, i32)*), i32 (i64, i64, i32)** %161, align 8
  %162 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %163 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %162, i32 0, i32 0
  store i64 (i64)* @xudc_read32, i64 (i64)** %163, align 8
  br label %164

164:                                              ; preds = %159, %102
  %165 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %166 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %165, i32 0, i32 3
  %167 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %166, align 8
  %168 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %169 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @XUSB_TESTMODE_OFFSET, align 8
  %172 = call i32 %167(i64 %170, i64 %171, i32 0)
  %173 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %174 = call i32 @xudc_eps_init(%struct.xusb_udc* %173)
  %175 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %176 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %175, i32 0, i32 3
  %177 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %176, align 8
  %178 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %179 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @XUSB_ADDRESS_OFFSET, align 8
  %182 = call i32 %177(i64 %180, i64 %181, i32 0)
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %186 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %185, i32 0, i32 4
  %187 = call i32 @usb_add_gadget_udc(%struct.TYPE_16__* %184, %struct.TYPE_17__* %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %164
  br label %237

191:                                              ; preds = %164
  %192 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %193 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %196 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %195, i32 0, i32 5
  store i32* %194, i32** %196, align 8
  %197 = load i32, i32* @XUSB_STATUS_GLOBAL_INTR_MASK, align 4
  %198 = load i32, i32* @XUSB_STATUS_INTR_EVENT_MASK, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @XUSB_STATUS_FIFO_BUFF_RDY_MASK, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @XUSB_STATUS_FIFO_BUFF_FREE_MASK, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @XUSB_STATUS_SETUP_PACKET_MASK, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @XUSB_STATUS_INTR_BUFF_COMP_ALL_MASK, align 4
  %207 = or i32 %205, %206
  store i32 %207, i32* %9, align 4
  %208 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %209 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %208, i32 0, i32 3
  %210 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %209, align 8
  %211 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %212 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %215 = load i32, i32* %9, align 4
  %216 = call i32 %210(i64 %213, i64 %214, i32 %215)
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %219 = call i32 @platform_set_drvdata(%struct.platform_device* %217, %struct.xusb_udc* %218)
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = load i32, i32* @driver_name, align 4
  %223 = load %struct.resource*, %struct.resource** %5, align 8
  %224 = getelementptr inbounds %struct.resource, %struct.resource* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %228 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %231 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %236 = call i32 @dev_vdbg(%struct.TYPE_16__* %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %222, i32 %226, i64 %229, i8* %235)
  store i32 0, i32* %2, align 4
  br label %243

237:                                              ; preds = %190, %97
  %238 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %239 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %238, i32 0, i32 0
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @dev_err(%struct.TYPE_16__* %239, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* %8, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %237, %191, %83, %73, %49, %37, %22
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_16__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_16__*, i32, i32, i32, i32, %struct.xusb_udc*) #1

declare dso_local i32 @dev_name(%struct.TYPE_16__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @xudc_write32_be(i64, i64, i64) #1

declare dso_local i64 @xudc_read32_be(i64) #1

declare dso_local i32 @xudc_write32(i64, i64, i64) #1

declare dso_local i64 @xudc_read32(i64) #1

declare dso_local i32 @xudc_eps_init(%struct.xusb_udc*) #1

declare dso_local i32 @usb_add_gadget_udc(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xusb_udc*) #1

declare dso_local i32 @dev_vdbg(%struct.TYPE_16__*, i8*, i32, i32, i64, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
