; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_new_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, %struct.TYPE_17__, i32, i64, i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.usb_hub = type { i32, %struct.usb_port** }
%struct.usb_port = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"udev %d, busnum %d, minor = %d\0A\00", align 1
@USB_DEVICE_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"can't device_add, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_new_device(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_port*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 2
  %15 = call i32 @device_init_wakeup(%struct.TYPE_17__* %14, i32 0)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 2
  %19 = call i32 @pm_runtime_set_active(%struct.TYPE_17__* %18)
  %20 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 2
  %22 = call i32 @pm_runtime_get_noresume(%struct.TYPE_17__* %21)
  %23 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 2
  %25 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_17__* %24)
  %26 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 2
  %28 = call i32 @pm_runtime_enable(%struct.TYPE_17__* %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = call i32 @usb_disable_autosuspend(%struct.usb_device* %29)
  %31 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %32 = call i32 @usb_enumerate_device(%struct.usb_device* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  br label %213

36:                                               ; preds = %16
  %37 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 2
  %39 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = mul nsw i32 %52, 128
  %54 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = add nsw i32 %53, %57
  %59 = call i32 @dev_dbg(%struct.TYPE_17__* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46, i32 %58)
  %60 = load i32, i32* @USB_DEVICE_MAJOR, align 4
  %61 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %62 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %61, i32 0, i32 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = mul nsw i32 %66, 128
  %68 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %69 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = add nsw i32 %67, %71
  %73 = call i32 @MKDEV(i32 %60, i32 %72)
  %74 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %75 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %78 = call i32 @announce_device(%struct.usb_device* %77)
  %79 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %80 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %36
  %84 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %85 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %88 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @strlen(i64 %89)
  %91 = call i32 @add_device_randomness(i64 %86, i32 %90)
  br label %92

92:                                               ; preds = %83, %36
  %93 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %94 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %99 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %102 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @strlen(i64 %103)
  %105 = call i32 @add_device_randomness(i64 %100, i32 %104)
  br label %106

106:                                              ; preds = %97, %92
  %107 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %108 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %116 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @strlen(i64 %117)
  %119 = call i32 @add_device_randomness(i64 %114, i32 %118)
  br label %120

120:                                              ; preds = %111, %106
  %121 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %122 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %121, i32 0, i32 2
  %123 = call i32 @device_enable_async_suspend(%struct.TYPE_17__* %122)
  %124 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %125 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %130 = call i32 @set_usb_port_removable(%struct.usb_device* %129)
  br label %131

131:                                              ; preds = %128, %120
  %132 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %133 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %132, i32 0, i32 2
  %134 = call i32 @device_add(%struct.TYPE_17__* %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %139 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %138, i32 0, i32 2
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @dev_err(%struct.TYPE_17__* %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %213

142:                                              ; preds = %131
  %143 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %144 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %200

147:                                              ; preds = %142
  %148 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %149 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = call %struct.usb_hub* @usb_hub_to_struct_hub(i64 %150)
  store %struct.usb_hub* %151, %struct.usb_hub** %5, align 8
  %152 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %153 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %6, align 4
  %155 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %156 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %155, i32 0, i32 1
  %157 = load %struct.usb_port**, %struct.usb_port*** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %157, i64 %160
  %162 = load %struct.usb_port*, %struct.usb_port** %161, align 8
  store %struct.usb_port* %162, %struct.usb_port** %7, align 8
  %163 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %164 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %167 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = call i32 @sysfs_create_link(i32* %165, i32* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %147
  br label %213

173:                                              ; preds = %147
  %174 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %175 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %178 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = call i32 @sysfs_create_link(i32* %176, i32* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %173
  %184 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %185 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = call i32 @sysfs_remove_link(i32* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %213

188:                                              ; preds = %173
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %191 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @test_and_set_bit(i32 %189, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %188
  %196 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %197 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %196, i32 0, i32 0
  %198 = call i32 @pm_runtime_get_sync(%struct.TYPE_18__* %197)
  br label %199

199:                                              ; preds = %195, %188
  br label %200

200:                                              ; preds = %199, %142
  %201 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %202 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %201, i32 0, i32 2
  %203 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %204 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %203, i32 0, i32 3
  %205 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %206 = call i32 @usb_create_ep_devs(%struct.TYPE_17__* %202, i32* %204, %struct.usb_device* %205)
  %207 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %208 = call i32 @usb_mark_last_busy(%struct.usb_device* %207)
  %209 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %210 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %209, i32 0, i32 2
  %211 = call i32 @pm_runtime_put_sync_autosuspend(%struct.TYPE_17__* %210)
  %212 = load i32, i32* %4, align 4
  store i32 %212, i32* %2, align 4
  br label %224

213:                                              ; preds = %183, %172, %137, %35
  %214 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %215 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %216 = call i32 @usb_set_device_state(%struct.usb_device* %214, i32 %215)
  %217 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %218 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %217, i32 0, i32 2
  %219 = call i32 @pm_runtime_disable(%struct.TYPE_17__* %218)
  %220 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %221 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %220, i32 0, i32 2
  %222 = call i32 @pm_runtime_set_suspended(%struct.TYPE_17__* %221)
  %223 = load i32, i32* %4, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %213, %200
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @device_init_wakeup(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @usb_disable_autosuspend(%struct.usb_device*) #1

declare dso_local i32 @usb_enumerate_device(%struct.usb_device*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_17__*, i8*, i32, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @announce_device(%struct.usb_device*) #1

declare dso_local i32 @add_device_randomness(i64, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @device_enable_async_suspend(%struct.TYPE_17__*) #1

declare dso_local i32 @set_usb_port_removable(%struct.usb_device*) #1

declare dso_local i32 @device_add(%struct.TYPE_17__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(i64) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_18__*) #1

declare dso_local i32 @usb_create_ep_devs(%struct.TYPE_17__*, i32*, %struct.usb_device*) #1

declare dso_local i32 @usb_mark_last_busy(%struct.usb_device*) #1

declare dso_local i32 @pm_runtime_put_sync_autosuspend(%struct.TYPE_17__*) #1

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
