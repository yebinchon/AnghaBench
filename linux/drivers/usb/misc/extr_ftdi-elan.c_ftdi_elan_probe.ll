; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_ftdi = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32*, i32, i32, i32, %struct.usb_interface*, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ftdi_module_lock = common dso_local global i32 0, align 4
@ftdi_static_list = common dso_local global i32 0, align 4
@ftdi_instances = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Could not find both bulk-in and bulk-out endpoints\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"interface %d has I=%02X O=%02X\0A\00", align 1
@ftdi_elan_jtag_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Not able to get a minor for this device\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"USB FDTI=%p JTAG interface %d now attached to ftdi%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"USB FDTI=%p ELAN interface %d now activated\0A\00", align 1
@ftdi_elan_status_work = common dso_local global i32 0, align 4
@ftdi_elan_command_work = common dso_local global i32 0, align 4
@ftdi_elan_respond_work = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Could not find ELAN's U132 device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ftdi_elan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_ftdi*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.usb_ftdi* @kzalloc(i32 96, i32 %11)
  store %struct.usb_ftdi* %12, %struct.usb_ftdi** %10, align 8
  %13 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %14 = icmp ne %struct.usb_ftdi* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %213

18:                                               ; preds = %2
  %19 = call i32 @mutex_lock(i32* @ftdi_module_lock)
  %20 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %21 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %20, i32 0, i32 14
  %22 = call i32 @list_add_tail(i32* %21, i32* @ftdi_static_list)
  %23 = load i64, i64* @ftdi_instances, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @ftdi_instances, align 8
  %25 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %26 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %25, i32 0, i32 13
  store i64 %24, i64* %26, align 8
  %27 = call i32 @mutex_unlock(i32* @ftdi_module_lock)
  %28 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %29 = call i32 @ftdi_elan_init_kref(%struct.usb_ftdi* %28)
  %30 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %31 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %30, i32 0, i32 12
  %32 = call i32 @sema_init(i32* %31, i32 1)
  %33 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %34 = call i32 @interface_to_usbdev(%struct.usb_interface* %33)
  %35 = call %struct.TYPE_4__* @usb_get_dev(i32 %34)
  %36 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %37 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %36, i32 0, i32 3
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %40 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %39, i32 0, i32 11
  store %struct.usb_interface* %38, %struct.usb_interface** %40, align 8
  %41 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %42 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %41, i32 0, i32 10
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %45 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %44, i32 0, i32 0
  store i32 4, i32* %45, align 8
  %46 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %47 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %46, i32 0, i32 1
  %48 = load %struct.usb_host_interface*, %struct.usb_host_interface** %47, align 8
  store %struct.usb_host_interface* %48, %struct.usb_host_interface** %6, align 8
  %49 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %50 = call i32 @usb_find_common_endpoints(%struct.usb_host_interface* %49, %struct.usb_endpoint_descriptor** %7, %struct.usb_endpoint_descriptor** %8, i32* null, i32* null)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %18
  %54 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %55 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %205

59:                                               ; preds = %18
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %61 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %60)
  %62 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %63 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %65 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %68 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %70 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @kmalloc(i32 %71, i32 %72)
  %74 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %75 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  %76 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %77 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %59
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %205

83:                                               ; preds = %59
  %84 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %85 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %88 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %90 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %94 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %98 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %101 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32*, i8*, ...) @dev_info(i32* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %99, i32 %102)
  %104 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %105 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %106 = call i32 @usb_set_intfdata(%struct.usb_interface* %104, %struct.usb_ftdi* %105)
  %107 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %108 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %153

112:                                              ; preds = %83
  %113 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %114 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %117, label %153

117:                                              ; preds = %112
  %118 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %119 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %153

122:                                              ; preds = %117
  %123 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %124 = call i32 @usb_register_dev(%struct.usb_interface* %123, i32* @ftdi_elan_jtag_class)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %129 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %128, i32 0, i32 3
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = call i32 @usb_set_intfdata(%struct.usb_interface* %133, %struct.usb_ftdi* null)
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %9, align 4
  br label %205

137:                                              ; preds = %122
  %138 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %139 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %138, i32 0, i32 7
  store i32* @ftdi_elan_jtag_class, i32** %139, align 8
  %140 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %141 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %145 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %146 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %150 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32*, i8*, ...) @dev_info(i32* %143, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), %struct.usb_ftdi* %144, i32 %148, i32 %151)
  store i32 0, i32* %3, align 4
  br label %213

153:                                              ; preds = %117, %112, %83
  %154 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %155 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %197

159:                                              ; preds = %153
  %160 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %161 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 131
  br i1 %163, label %164, label %197

164:                                              ; preds = %159
  %165 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %166 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 4
  br i1 %168, label %169, label %197

169:                                              ; preds = %164
  %170 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %171 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %170, i32 0, i32 7
  store i32* null, i32** %171, align 8
  %172 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %173 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %172, i32 0, i32 3
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %177 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %178 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32*, i8*, ...) @dev_info(i32* %175, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.usb_ftdi* %176, i32 %180)
  %182 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %183 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %182, i32 0, i32 6
  %184 = load i32, i32* @ftdi_elan_status_work, align 4
  %185 = call i32 @INIT_DELAYED_WORK(i32* %183, i32 %184)
  %186 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %187 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %186, i32 0, i32 5
  %188 = load i32, i32* @ftdi_elan_command_work, align 4
  %189 = call i32 @INIT_DELAYED_WORK(i32* %187, i32 %188)
  %190 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %191 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %190, i32 0, i32 4
  %192 = load i32, i32* @ftdi_elan_respond_work, align 4
  %193 = call i32 @INIT_DELAYED_WORK(i32* %191, i32 %192)
  %194 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %195 = call i32 @msecs_to_jiffies(i32 3000)
  %196 = call i32 @ftdi_status_queue_work(%struct.usb_ftdi* %194, i32 %195)
  store i32 0, i32* %3, align 4
  br label %213

197:                                              ; preds = %164, %159, %153
  %198 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %199 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %198, i32 0, i32 3
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = call i32 @dev_err(i32* %201, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %203 = load i32, i32* @ENODEV, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %9, align 4
  br label %205

205:                                              ; preds = %197, %127, %80, %53
  %206 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %207 = icmp ne %struct.usb_ftdi* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %210 = call i32 @ftdi_elan_put_kref(%struct.usb_ftdi* %209)
  br label %211

211:                                              ; preds = %208, %205
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %211, %169, %137, %15
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.usb_ftdi* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ftdi_elan_init_kref(%struct.usb_ftdi*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_find_common_endpoints(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_ftdi*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ftdi_status_queue_work(%struct.usb_ftdi*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ftdi_elan_put_kref(%struct.usb_ftdi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
