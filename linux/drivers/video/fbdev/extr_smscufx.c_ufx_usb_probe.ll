; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ufx_data = type { i32, i32*, i32, i32, i32, %struct.fb_info*, %struct.usb_device* }
%struct.fb_info = type { i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__, %struct.TYPE_8__, i32, i32*, i32, %struct.ufx_data* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ufx_usb_probe: failed alloc of dev struct\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s %s - serial #%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"vid_%04x&pid_%04x&rev_%04x driver's ufx_data struct at %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"console enable=%d\0A\00", align 1
@console = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"fb_defio enable=%d\0A\00", align 1
@fb_defio = common dso_local global i32 0, align 4
@WRITES_IN_FLIGHT = common dso_local global i32 0, align 4
@MAX_TRANSFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"ufx_alloc_urb_list failed\0A\00", align 1
@ufx_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"fb_alloc_cmap failed %x\0A\00", align 1
@ufx_free_framebuffer_work = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"error %d reading 0x3000 register from device\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"ID_REV register value 0x%08x\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"error %d reading 0x3004 register from device\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"FPGA_REV register value 0x%08x\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"resetting device\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"error %d resetting device\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"configuring system clock\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"error %d configuring system clock\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"configuring DDR2 controller\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"error %d initialising DDR2 controller\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"configuring I2C controller\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"error %d initialising I2C controller\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"selecting display mode\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"unable to find common mode for display and adapter\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"error %d enabling graphics engine\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"checking var\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"error %d ufx_ops_check_var\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"setting par\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"error %d ufx_ops_set_par\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"registering framebuffer\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"error %d register_framebuffer\00", align 1
@.str.28 = private unnamed_addr constant [88 x i8] c"SMSC UDX USB device /dev/fb%d attached. %dx%d resolution. Using %dK framebuffer memory\0A\00", align 1
@ufx_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ufx_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.ufx_data*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %15 = icmp ne %struct.usb_device* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ufx_data* @kzalloc(i32 48, i32 %19)
  store %struct.ufx_data* %20, %struct.ufx_data** %7, align 8
  %21 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %22 = icmp eq %struct.ufx_data* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %293

29:                                               ; preds = %2
  %30 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %31 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %30, i32 0, i32 0
  %32 = call i32 @kref_init(i32* %31)
  %33 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %34 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %33, i32 0, i32 0
  %35 = call i32 @kref_get(i32* %34)
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %38 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %37, i32 0, i32 6
  store %struct.usb_device* %36, %struct.usb_device** %38, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %42 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %44 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %45 = call i32 @usb_set_intfdata(%struct.usb_interface* %43, %struct.ufx_data* %44)
  %46 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %47 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54, i32 %57)
  %59 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %60 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %68 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %73 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %78 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %71, i32 %76, %struct.ufx_data* %77)
  %79 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %80 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @console, align 4
  %83 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %85 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @fb_defio, align 4
  %88 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %90 = load i32, i32* @WRITES_IN_FLIGHT, align 4
  %91 = load i32, i32* @MAX_TRANSFER, align 4
  %92 = call i32 @ufx_alloc_urb_list(%struct.ufx_data* %89, i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %29
  %95 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %96 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %290

99:                                               ; preds = %29
  %100 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %101 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %100, i32 0, i32 0
  %102 = call %struct.fb_info* @framebuffer_alloc(i32 0, i32* %101)
  store %struct.fb_info* %102, %struct.fb_info** %8, align 8
  %103 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %104 = icmp ne %struct.fb_info* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  br label %290

106:                                              ; preds = %99
  %107 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %108 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %109 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %108, i32 0, i32 5
  store %struct.fb_info* %107, %struct.fb_info** %109, align 8
  %110 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %111 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 9
  store %struct.ufx_data* %110, %struct.ufx_data** %112, align 8
  %113 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %114 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %117 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %116, i32 0, i32 8
  store i32 %115, i32* %117, align 8
  %118 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 7
  store i32* @ufx_ops, i32** %119, align 8
  %120 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 3
  %122 = call i32 @fb_alloc_cmap(i32* %121, i32 256, i32 0)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %106
  %126 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %127 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  br label %265

131:                                              ; preds = %106
  %132 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %133 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %132, i32 0, i32 3
  %134 = load i32, i32* @ufx_free_framebuffer_work, align 4
  %135 = call i32 @INIT_DELAYED_WORK(i32* %133, i32 %134)
  %136 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %137 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %136, i32 0, i32 0
  %138 = call i32 @INIT_LIST_HEAD(i32* %137)
  %139 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %140 = call i32 @ufx_reg_read(%struct.ufx_data* %139, i32 12288, i32* %10)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %141, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  %144 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %145 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  %149 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %150 = call i32 @ufx_reg_read(%struct.ufx_data* %149, i32 12292, i32* %11)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %151, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  %154 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %155 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %157)
  %159 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %160 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %163 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %164 = call i32 @ufx_lite_reset(%struct.ufx_data* %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %166)
  %168 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %169 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %172 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %173 = call i32 @ufx_config_sys_clk(%struct.ufx_data* %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %174, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %175)
  %177 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %178 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %181 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %182 = call i32 @ufx_config_ddr2(%struct.ufx_data* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %184)
  %186 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %187 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %190 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %191 = call i32 @ufx_i2c_init(%struct.ufx_data* %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %193)
  %195 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %196 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %197, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %199 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %200 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %201 = call i32 @ufx_setup_modes(%struct.ufx_data* %199, %struct.fb_info* %200, i32* null, i32 0)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %202, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0))
  %204 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %205 = call i32 @ufx_reg_set_bits(%struct.ufx_data* %204, i32 16384, i32 1)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %206, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 %207)
  %209 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %210 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %209, i32 0, i32 2
  %211 = call i32 @atomic_set(i32* %210, i32 1)
  %212 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %213 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %214, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %216 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %217 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %216, i32 0, i32 5
  %218 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %219 = call i32 @ufx_ops_check_var(%struct.TYPE_8__* %217, %struct.fb_info* %218)
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32 %221)
  %223 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %224 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %227 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %228 = call i32 @ufx_ops_set_par(%struct.fb_info* %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %9, align 4
  %231 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %229, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 %230)
  %232 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %233 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %234, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  %236 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %237 = call i32 @register_framebuffer(%struct.fb_info* %236)
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = call i32 (i32, i8*, ...) @check_warn_goto_error(i32 %238, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 %239)
  %241 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %242 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %245 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %248 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %252 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %256 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = ashr i32 %258, 10
  %260 = call i32 @dev_info(i32* %243, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.28, i64 0, i64 0), i32 %246, i32 %250, i32 %254, i32 %259)
  store i32 0, i32* %3, align 4
  br label %293

261:                                              ; No predecessors!
  %262 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %263 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %262, i32 0, i32 3
  %264 = call i32 @fb_dealloc_cmap(i32* %263)
  br label %265

265:                                              ; preds = %261, %125
  %266 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %267 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @fb_destroy_modedb(i32 %269)
  %271 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %272 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @vfree(i32 %273)
  %275 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %276 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %275, i32 0, i32 0
  %277 = call i32 @fb_destroy_modelist(i32* %276)
  %278 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %279 = call i32 @framebuffer_release(%struct.fb_info* %278)
  br label %280

280:                                              ; preds = %290, %265
  %281 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %282 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %281, i32 0, i32 0
  %283 = load i32, i32* @ufx_free, align 4
  %284 = call i32 @kref_put(i32* %282, i32 %283)
  %285 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %286 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %285, i32 0, i32 0
  %287 = load i32, i32* @ufx_free, align 4
  %288 = call i32 @kref_put(i32* %286, i32 %287)
  %289 = load i32, i32* %9, align 4
  store i32 %289, i32* %3, align 4
  br label %293

290:                                              ; preds = %105, %94
  %291 = load i32, i32* @ENOMEM, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %9, align 4
  br label %280

293:                                              ; preds = %280, %131, %23
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ufx_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ufx_data*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ufx_alloc_urb_list(%struct.ufx_data*, i32, i32) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ufx_reg_read(%struct.ufx_data*, i32, i32*) #1

declare dso_local i32 @check_warn_goto_error(i32, i8*, ...) #1

declare dso_local i32 @ufx_lite_reset(%struct.ufx_data*) #1

declare dso_local i32 @ufx_config_sys_clk(%struct.ufx_data*) #1

declare dso_local i32 @ufx_config_ddr2(%struct.ufx_data*) #1

declare dso_local i32 @ufx_i2c_init(%struct.ufx_data*) #1

declare dso_local i32 @ufx_setup_modes(%struct.ufx_data*, %struct.fb_info*, i32*, i32) #1

declare dso_local i32 @ufx_reg_set_bits(%struct.ufx_data*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ufx_ops_check_var(%struct.TYPE_8__*, %struct.fb_info*) #1

declare dso_local i32 @ufx_ops_set_par(%struct.fb_info*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @fb_destroy_modedb(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @fb_destroy_modelist(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
