; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_14__, i32, %struct.usb_device*, %struct.usb_bus*, i64, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, i32, i32, i32, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.usb_bus = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.usb_hcd = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.usb_hcd*, %struct.usb_device*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@usb_bus_type = common dso_local global i32 0, align 4
@usb_device_type = common dso_local global i32 0, align 4
@usb_device_groups = common dso_local global i32 0, align 4
@USB_STATE_ATTACHED = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT_SIZE = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"usb%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d-%s\00", align 1
@jiffies = common dso_local global i8* null, align 8
@usb_autosuspend_delay = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_device* @usb_alloc_dev(%struct.usb_device* %0, %struct.usb_bus* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_hcd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.usb_bus* %1, %struct.usb_bus** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %13 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %12)
  store %struct.usb_hcd* %13, %struct.usb_hcd** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.usb_device* @kzalloc(i32 152, i32 %15)
  store %struct.usb_device* %16, %struct.usb_device** %8, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %18 = icmp ne %struct.usb_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.usb_device* null, %struct.usb_device** %4, align 8
  br label %266

20:                                               ; preds = %3
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %22 = call i32 @usb_get_hcd(%struct.usb_hcd* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %26 = call i32 @kfree(%struct.usb_device* %25)
  store %struct.usb_device* null, %struct.usb_device** %4, align 8
  br label %266

27:                                               ; preds = %20
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %31, align 8
  %33 = icmp ne i32 (%struct.usb_hcd*, %struct.usb_device*)* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %36 = icmp ne %struct.usb_device* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %39 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %41, align 8
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %44 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %45 = call i32 %42(%struct.usb_hcd* %43, %struct.usb_device* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %49 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %48)
  %50 = call i32 @usb_put_hcd(%struct.usb_hcd* %49)
  %51 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %52 = call i32 @kfree(%struct.usb_device* %51)
  store %struct.usb_device* null, %struct.usb_device** %4, align 8
  br label %266

53:                                               ; preds = %37, %34, %27
  %54 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 9
  %56 = call i32 @device_initialize(%struct.TYPE_14__* %55)
  %57 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 9
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 6
  store i32* @usb_bus_type, i32** %59, align 8
  %60 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 5
  store i32* @usb_device_type, i32** %62, align 8
  %63 = load i32, i32* @usb_device_groups, align 4
  %64 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %65 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 8
  %67 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %68 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %73 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %72, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %76 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %75, i32 0, i32 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %81 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %84 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %83, i32 0, i32 9
  %85 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %86 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = call i32 @dev_to_node(%struct.TYPE_15__* %87)
  %89 = call i32 @set_dev_node(%struct.TYPE_14__* %84, i32 %88)
  %90 = load i32, i32* @USB_STATE_ATTACHED, align 4
  %91 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 16
  store i32 %90, i32* %92, align 8
  %93 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %94 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %96 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %95, i32 0, i32 15
  %97 = call i32 @atomic_set(i32* %96, i32 0)
  %98 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %99 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %98, i32 0, i32 14
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load i32, i32* @USB_DT_ENDPOINT_SIZE, align 4
  %103 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %104 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %103, i32 0, i32 14
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store i32 %102, i32* %106, align 4
  %107 = load i32, i32* @USB_DT_ENDPOINT, align 4
  %108 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %109 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %108, i32 0, i32 14
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 8
  %112 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %113 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %114 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %113, i32 0, i32 14
  %115 = call i32 @usb_enable_endpoint(%struct.usb_device* %112, %struct.TYPE_13__* %114, i32 0)
  %116 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %117 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %119 = icmp ne %struct.usb_device* %118, null
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %53
  %125 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %126 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 48, i8* %128, align 1
  %129 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %130 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %129, i32 0, i32 13
  store i64 0, i64* %130, align 8
  %131 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %132 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %131, i32 0, i32 2
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %135 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %134, i32 0, i32 9
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  store %struct.TYPE_14__* %133, %struct.TYPE_14__** %136, align 8
  %137 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %138 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %137, i32 0, i32 9
  %139 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %140 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %139, i32 0, i32 1
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = call i32 @device_set_of_node_from_dev(%struct.TYPE_14__* %138, %struct.TYPE_15__* %141)
  %143 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %144 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %143, i32 0, i32 9
  %145 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %146 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @dev_set_name(%struct.TYPE_14__* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %147)
  store i32 1, i32* %10, align 4
  br label %236

149:                                              ; preds = %53
  %150 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %151 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 48
  br i1 %156, label %157, label %165

157:                                              ; preds = %149
  %158 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %159 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %160, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  %163 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %164 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %163, i32 0, i32 13
  store i64 0, i64* %164, align 8
  br label %206

165:                                              ; preds = %149
  %166 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %167 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %170 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %168, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %171, i32 %172)
  %174 = load i32, i32* %7, align 4
  %175 = icmp ult i32 %174, 15
  br i1 %175, label %176, label %191

176:                                              ; preds = %165
  %177 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %178 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %177, i32 0, i32 13
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %182 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %183, 1
  %185 = mul nsw i32 %184, 4
  %186 = shl i32 %180, %185
  %187 = zext i32 %186 to i64
  %188 = add nsw i64 %179, %187
  %189 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %190 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %189, i32 0, i32 13
  store i64 %188, i64* %190, align 8
  br label %205

191:                                              ; preds = %165
  %192 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %193 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %192, i32 0, i32 13
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %196 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %197, 1
  %199 = mul nsw i32 %198, 4
  %200 = shl i32 15, %199
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %194, %201
  %203 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %204 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %203, i32 0, i32 13
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %191, %176
  br label %206

206:                                              ; preds = %205, %157
  %207 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %208 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %207, i32 0, i32 9
  %209 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %210 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %209, i32 0, i32 9
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  store %struct.TYPE_14__* %208, %struct.TYPE_14__** %211, align 8
  %212 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %213 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %212, i32 0, i32 9
  %214 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %215 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %218 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %217, i32 0, i32 2
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @dev_set_name(%struct.TYPE_14__* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %216, i8* %219)
  %221 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %222 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %221, i32 0, i32 11
  %223 = load %struct.usb_device*, %struct.usb_device** %222, align 8
  %224 = icmp ne %struct.usb_device* %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %206
  %226 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @usb_hcd_find_raw_port_number(%struct.usb_hcd* %226, i32 %227)
  store i32 %228, i32* %11, align 4
  br label %229

229:                                              ; preds = %225, %206
  %230 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @usb_of_get_device_node(%struct.usb_device* %230, i32 %231)
  %233 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %234 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %233, i32 0, i32 9
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  store i32 %232, i32* %235, align 8
  br label %236

236:                                              ; preds = %229, %124
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %239 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %238, i32 0, i32 4
  store i32 %237, i32* %239, align 4
  %240 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %241 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %242 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %241, i32 0, i32 12
  store %struct.usb_bus* %240, %struct.usb_bus** %242, align 8
  %243 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %244 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %245 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %244, i32 0, i32 11
  store %struct.usb_device* %243, %struct.usb_device** %245, align 8
  %246 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %247 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %246, i32 0, i32 10
  %248 = call i32 @INIT_LIST_HEAD(i32* %247)
  %249 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %250 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %251 = call i32 @usb_dev_authorized(%struct.usb_device* %249, %struct.usb_hcd* %250)
  %252 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %253 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %236
  %257 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %258 = call i64 @usb_bus_is_wusb(%struct.usb_bus* %257)
  %259 = icmp ne i64 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 1, i32 0
  %262 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %263 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %256, %236
  %265 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %265, %struct.usb_device** %4, align 8
  br label %266

266:                                              ; preds = %264, %47, %24, %19
  %267 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  ret %struct.usb_device* %267
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus*) #1

declare dso_local %struct.usb_device* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @kfree(%struct.usb_device*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_14__*) #1

declare dso_local i32 @set_dev_node(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dev_to_node(%struct.TYPE_15__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_enable_endpoint(%struct.usb_device*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @device_set_of_node_from_dev(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_14__*, i8*, i32, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @usb_hcd_find_raw_port_number(%struct.usb_hcd*, i32) #1

declare dso_local i32 @usb_of_get_device_node(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_dev_authorized(%struct.usb_device*, %struct.usb_hcd*) #1

declare dso_local i64 @usb_bus_is_wusb(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
