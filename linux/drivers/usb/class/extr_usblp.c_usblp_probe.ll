; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.usblp = type { i32, i64, i32, %struct.usblp*, %struct.usblp*, %struct.usblp*, %struct.usb_device*, %struct.TYPE_7__*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBLP_DEVICE_ID_SIZE = common dso_local global i32 0, align 4
@USBLP_BUF_SIZE_IN = common dso_local global i32 0, align 4
@STATUS_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"incompatible printer-class device 0x%4.4X/0x%4.4X\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@usblp_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"usblp: Not able to get a minor (base %u, slice default): %d\0A\00", align 1
@USBLP_MINOR_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [89 x i8] c"usblp%d: USB %sdirectional printer dev %d if %d alt %d proto %d vid 0x%4.4X pid 0x%4.4X\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Bi\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Uni\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usblp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usblp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.usblp* @kzalloc(i32 112, i32 %12)
  store %struct.usblp* %13, %struct.usblp** %7, align 8
  %14 = load %struct.usblp*, %struct.usblp** %7, align 8
  %15 = icmp ne %struct.usblp* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  br label %220

19:                                               ; preds = %2
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = load %struct.usblp*, %struct.usblp** %7, align 8
  %22 = getelementptr inbounds %struct.usblp, %struct.usblp* %21, i32 0, i32 6
  store %struct.usb_device* %20, %struct.usb_device** %22, align 8
  %23 = load %struct.usblp*, %struct.usblp** %7, align 8
  %24 = getelementptr inbounds %struct.usblp, %struct.usblp* %23, i32 0, i32 17
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.usblp*, %struct.usblp** %7, align 8
  %27 = getelementptr inbounds %struct.usblp, %struct.usblp* %26, i32 0, i32 16
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.usblp*, %struct.usblp** %7, align 8
  %30 = getelementptr inbounds %struct.usblp, %struct.usblp* %29, i32 0, i32 15
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.usblp*, %struct.usblp** %7, align 8
  %33 = getelementptr inbounds %struct.usblp, %struct.usblp* %32, i32 0, i32 14
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load %struct.usblp*, %struct.usblp** %7, align 8
  %36 = getelementptr inbounds %struct.usblp, %struct.usblp* %35, i32 0, i32 13
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.usblp*, %struct.usblp** %7, align 8
  %39 = getelementptr inbounds %struct.usblp, %struct.usblp* %38, i32 0, i32 12
  %40 = call i32 @init_usb_anchor(i32* %39)
  %41 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %42 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.usblp*, %struct.usblp** %7, align 8
  %48 = getelementptr inbounds %struct.usblp, %struct.usblp* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %50 = call i32 @usb_get_intf(%struct.usb_interface* %49)
  %51 = load %struct.usblp*, %struct.usblp** %7, align 8
  %52 = getelementptr inbounds %struct.usblp, %struct.usblp* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @USBLP_DEVICE_ID_SIZE, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kmalloc(i32 %53, i32 %54)
  %56 = bitcast i8* %55 to %struct.usblp*
  %57 = load %struct.usblp*, %struct.usblp** %7, align 8
  %58 = getelementptr inbounds %struct.usblp, %struct.usblp* %57, i32 0, i32 3
  store %struct.usblp* %56, %struct.usblp** %58, align 8
  %59 = icmp ne %struct.usblp* %56, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %19
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %201

63:                                               ; preds = %19
  %64 = load i32, i32* @USBLP_BUF_SIZE_IN, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @kmalloc(i32 %64, i32 %65)
  %67 = bitcast i8* %66 to %struct.usblp*
  %68 = load %struct.usblp*, %struct.usblp** %7, align 8
  %69 = getelementptr inbounds %struct.usblp, %struct.usblp* %68, i32 0, i32 5
  store %struct.usblp* %67, %struct.usblp** %69, align 8
  %70 = icmp ne %struct.usblp* %67, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %201

74:                                               ; preds = %63
  %75 = load i32, i32* @STATUS_BUF_SIZE, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @kmalloc(i32 %75, i32 %76)
  %78 = bitcast i8* %77 to %struct.usblp*
  %79 = load %struct.usblp*, %struct.usblp** %7, align 8
  %80 = getelementptr inbounds %struct.usblp, %struct.usblp* %79, i32 0, i32 4
  store %struct.usblp* %78, %struct.usblp** %80, align 8
  %81 = load %struct.usblp*, %struct.usblp** %7, align 8
  %82 = getelementptr inbounds %struct.usblp, %struct.usblp* %81, i32 0, i32 4
  %83 = load %struct.usblp*, %struct.usblp** %82, align 8
  %84 = icmp ne %struct.usblp* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  br label %201

88:                                               ; preds = %74
  %89 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %90 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le16_to_cpu(i32 %92)
  %94 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %95 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = call i32 @usblp_quirks(i32 %93, i32 %98)
  %100 = load %struct.usblp*, %struct.usblp** %7, align 8
  %101 = getelementptr inbounds %struct.usblp, %struct.usblp* %100, i32 0, i32 11
  store i32 %99, i32* %101, align 4
  %102 = load %struct.usblp*, %struct.usblp** %7, align 8
  %103 = call i32 @usblp_select_alts(%struct.usblp* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %88
  %107 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %108 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %107, i32 0, i32 0
  %109 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %110 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le16_to_cpu(i32 %112)
  %114 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %115 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  %119 = call i32 @dev_dbg(i32* %108, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %118)
  %120 = load i32, i32* @ENODEV, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  br label %201

122:                                              ; preds = %88
  %123 = load %struct.usblp*, %struct.usblp** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @usblp_set_protocol(%struct.usblp* %123, i32 %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  br label %201

130:                                              ; preds = %122
  %131 = load %struct.usblp*, %struct.usblp** %7, align 8
  %132 = call i32 @usblp_cache_device_id_string(%struct.usblp* %131)
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = load %struct.usblp*, %struct.usblp** %7, align 8
  %135 = call i32 @usb_set_intfdata(%struct.usb_interface* %133, %struct.usblp* %134)
  %136 = load %struct.usblp*, %struct.usblp** %7, align 8
  %137 = getelementptr inbounds %struct.usblp, %struct.usblp* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %139 = call i32 @usb_register_dev(%struct.usb_interface* %138, i32* @usblp_class)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %130
  %143 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %144 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %143, i32 0, i32 0
  %145 = load i32, i32* @USBLP_MINOR_BASE, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @dev_err(i32* %144, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %146)
  br label %198

148:                                              ; preds = %130
  %149 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %150 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.usblp*, %struct.usblp** %7, align 8
  %153 = getelementptr inbounds %struct.usblp, %struct.usblp* %152, i32 0, i32 10
  store i32 %151, i32* %153, align 8
  %154 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %155 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %154, i32 0, i32 0
  %156 = load %struct.usblp*, %struct.usblp** %7, align 8
  %157 = getelementptr inbounds %struct.usblp, %struct.usblp* %156, i32 0, i32 10
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.usblp*, %struct.usblp** %7, align 8
  %160 = getelementptr inbounds %struct.usblp, %struct.usblp* %159, i32 0, i32 9
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %165 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %166 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.usblp*, %struct.usblp** %7, align 8
  %169 = getelementptr inbounds %struct.usblp, %struct.usblp* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.usblp*, %struct.usblp** %7, align 8
  %172 = getelementptr inbounds %struct.usblp, %struct.usblp* %171, i32 0, i32 7
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load %struct.usblp*, %struct.usblp** %7, align 8
  %175 = getelementptr inbounds %struct.usblp, %struct.usblp* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.usblp*, %struct.usblp** %7, align 8
  %181 = getelementptr inbounds %struct.usblp, %struct.usblp* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.usblp*, %struct.usblp** %7, align 8
  %184 = getelementptr inbounds %struct.usblp, %struct.usblp* %183, i32 0, i32 6
  %185 = load %struct.usb_device*, %struct.usb_device** %184, align 8
  %186 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @le16_to_cpu(i32 %188)
  %190 = load %struct.usblp*, %struct.usblp** %7, align 8
  %191 = getelementptr inbounds %struct.usblp, %struct.usblp* %190, i32 0, i32 6
  %192 = load %struct.usb_device*, %struct.usb_device** %191, align 8
  %193 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le16_to_cpu(i32 %195)
  %197 = call i32 @dev_info(i32* %155, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %158, i8* %164, i32 %167, i32 %170, i32 %179, i64 %182, i32 %189, i32 %196)
  store i32 0, i32* %3, align 4
  br label %222

198:                                              ; preds = %142
  %199 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %200 = call i32 @usb_set_intfdata(%struct.usb_interface* %199, %struct.usblp* null)
  br label %201

201:                                              ; preds = %198, %127, %106, %85, %71, %60
  %202 = load %struct.usblp*, %struct.usblp** %7, align 8
  %203 = getelementptr inbounds %struct.usblp, %struct.usblp* %202, i32 0, i32 5
  %204 = load %struct.usblp*, %struct.usblp** %203, align 8
  %205 = call i32 @kfree(%struct.usblp* %204)
  %206 = load %struct.usblp*, %struct.usblp** %7, align 8
  %207 = getelementptr inbounds %struct.usblp, %struct.usblp* %206, i32 0, i32 4
  %208 = load %struct.usblp*, %struct.usblp** %207, align 8
  %209 = call i32 @kfree(%struct.usblp* %208)
  %210 = load %struct.usblp*, %struct.usblp** %7, align 8
  %211 = getelementptr inbounds %struct.usblp, %struct.usblp* %210, i32 0, i32 3
  %212 = load %struct.usblp*, %struct.usblp** %211, align 8
  %213 = call i32 @kfree(%struct.usblp* %212)
  %214 = load %struct.usblp*, %struct.usblp** %7, align 8
  %215 = getelementptr inbounds %struct.usblp, %struct.usblp* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @usb_put_intf(i32 %216)
  %218 = load %struct.usblp*, %struct.usblp** %7, align 8
  %219 = call i32 @kfree(%struct.usblp* %218)
  br label %220

220:                                              ; preds = %201, %16
  %221 = load i32, i32* %9, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %220, %148
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usblp* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usblp_quirks(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usblp_select_alts(%struct.usblp*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i64 @usblp_set_protocol(%struct.usblp*, i32) #1

declare dso_local i32 @usblp_cache_device_id_string(%struct.usblp*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usblp*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.usblp*) #1

declare dso_local i32 @usb_put_intf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
