; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backend_info = type { i32, %struct.TYPE_10__*, i32, %struct.xenbus_device* }
%struct.TYPE_10__ = type { i32, i32, %struct.xenvif_queue*, %struct.TYPE_11__*, i32 }
%struct.xenvif_queue = type { i32, i64, i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i8* }
%struct.xenbus_device = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"multi-queue-num-queues\00", align 1
@xenvif_max_queues = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"guest requested %u queues, exceeding the maximum of %u.\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"parsing %s/mac\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"connecting control ring\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"allocating queues\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s-q%u\00", align 1
@hotplug_status_changed = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"hotplug-status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.backend_info*)* @connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect(%struct.backend_info* %0) #0 {
  %2 = alloca %struct.backend_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xenvif_queue*, align 8
  store %struct.backend_info* %0, %struct.backend_info** %2, align 8
  %10 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %11 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %10, i32 0, i32 3
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  store %struct.xenbus_device* %12, %struct.xenbus_device** %4, align 8
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %14 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @xenbus_read_unsigned(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @xenvif_max_queues, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @xenvif_max_queues, align 4
  %26 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %21, i32 %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  br label %264

27:                                               ; preds = %1
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %29 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %30 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @xen_net_read_mac(%struct.xenbus_device* %28, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %41 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %38, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %264

44:                                               ; preds = %27
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %46 = call i32 @xen_net_read_rate(%struct.xenbus_device* %45, i64* %5, i64* %6)
  %47 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %48 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = call i32 @xen_unregister_watchers(%struct.TYPE_10__* %49)
  %51 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %52 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %53 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i32 @xen_register_watchers(%struct.xenbus_device* %51, %struct.TYPE_10__* %54)
  %56 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %57 = call i32 @read_xenbus_vif_flags(%struct.backend_info* %56)
  %58 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %59 = call i32 @connect_ctrl_ring(%struct.backend_info* %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %44
  %63 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %63, i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %264

66:                                               ; preds = %44
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @array_size(i32 %67, i32 48)
  %69 = call %struct.xenvif_queue* @vzalloc(i32 %68)
  %70 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %71 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store %struct.xenvif_queue* %69, %struct.xenvif_queue** %73, align 8
  %74 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %75 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load %struct.xenvif_queue*, %struct.xenvif_queue** %77, align 8
  %79 = icmp ne %struct.xenvif_queue* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %66
  %81 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %81, i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %264

85:                                               ; preds = %66
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %88 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %93 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %165, %85
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %168

100:                                              ; preds = %96
  %101 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %102 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load %struct.xenvif_queue*, %struct.xenvif_queue** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %105, i64 %107
  store %struct.xenvif_queue* %108, %struct.xenvif_queue** %9, align 8
  %109 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %110 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load %struct.xenvif_queue*, %struct.xenvif_queue** %9, align 8
  %113 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %112, i32 0, i32 5
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %113, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.xenvif_queue*, %struct.xenvif_queue** %9, align 8
  %116 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.xenvif_queue*, %struct.xenvif_queue** %9, align 8
  %118 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %121 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.xenvif_queue*, %struct.xenvif_queue** %9, align 8
  %128 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @snprintf(i32 %119, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %126, i32 %129)
  %131 = load %struct.xenvif_queue*, %struct.xenvif_queue** %9, align 8
  %132 = call i32 @xenvif_init_queue(%struct.xenvif_queue* %131)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %100
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %138 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  store i32 %136, i32* %140, align 8
  br label %211

141:                                              ; preds = %100
  %142 = load i64, i64* %5, align 8
  %143 = load %struct.xenvif_queue*, %struct.xenvif_queue** %9, align 8
  %144 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* %5, align 8
  %146 = load %struct.xenvif_queue*, %struct.xenvif_queue** %9, align 8
  %147 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load %struct.xenvif_queue*, %struct.xenvif_queue** %9, align 8
  %150 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %149, i32 0, i32 3
  store i64 %148, i64* %150, align 8
  %151 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %152 = load %struct.xenvif_queue*, %struct.xenvif_queue** %9, align 8
  %153 = call i32 @connect_data_rings(%struct.backend_info* %151, %struct.xenvif_queue* %152)
  store i32 %153, i32* %3, align 4
  %154 = load i32, i32* %3, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %141
  %157 = load %struct.xenvif_queue*, %struct.xenvif_queue** %9, align 8
  %158 = call i32 @xenvif_deinit_queue(%struct.xenvif_queue* %157)
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %161 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %160, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  store i32 %159, i32* %163, align 8
  br label %211

164:                                              ; preds = %141
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %96

168:                                              ; preds = %96
  %169 = call i32 (...) @rtnl_lock()
  %170 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %171 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %170, i32 0, i32 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @netif_set_real_num_tx_queues(%struct.TYPE_11__* %174, i32 %175)
  %177 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %178 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %177, i32 0, i32 1
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @netif_set_real_num_rx_queues(%struct.TYPE_11__* %181, i32 %182)
  %184 = call i32 (...) @rtnl_unlock()
  %185 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %186 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %185, i32 0, i32 1
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = call i32 @xenvif_carrier_on(%struct.TYPE_10__* %187)
  %189 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %190 = call i32 @unregister_hotplug_status_watch(%struct.backend_info* %189)
  %191 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %192 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %193 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %192, i32 0, i32 2
  %194 = load i32, i32* @hotplug_status_changed, align 4
  %195 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %196 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @xenbus_watch_pathfmt(%struct.xenbus_device* %191, i32* %193, i32 %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i32 %198, i32* %3, align 4
  %199 = load i32, i32* %3, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %168
  %202 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %203 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %202, i32 0, i32 0
  store i32 1, i32* %203, align 8
  br label %204

204:                                              ; preds = %201, %168
  %205 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %206 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %205, i32 0, i32 1
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = call i32 @netif_tx_wake_all_queues(%struct.TYPE_11__* %209)
  br label %264

211:                                              ; preds = %156, %135
  %212 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %213 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %212, i32 0, i32 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ugt i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %220 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %219, i32 0, i32 1
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = call i32 @xenvif_disconnect_data(%struct.TYPE_10__* %221)
  br label %223

223:                                              ; preds = %218, %211
  store i32 0, i32* %7, align 4
  br label %224

224:                                              ; preds = %242, %223
  %225 = load i32, i32* %7, align 4
  %226 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %227 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %226, i32 0, i32 1
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ult i32 %225, %230
  br i1 %231, label %232, label %245

232:                                              ; preds = %224
  %233 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %234 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %233, i32 0, i32 1
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 2
  %237 = load %struct.xenvif_queue*, %struct.xenvif_queue** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %237, i64 %239
  %241 = call i32 @xenvif_deinit_queue(%struct.xenvif_queue* %240)
  br label %242

242:                                              ; preds = %232
  %243 = load i32, i32* %7, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %7, align 4
  br label %224

245:                                              ; preds = %224
  %246 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %247 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %246, i32 0, i32 1
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 2
  %250 = load %struct.xenvif_queue*, %struct.xenvif_queue** %249, align 8
  %251 = call i32 @vfree(%struct.xenvif_queue* %250)
  %252 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %253 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %252, i32 0, i32 1
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 2
  store %struct.xenvif_queue* null, %struct.xenvif_queue** %255, align 8
  %256 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %257 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %256, i32 0, i32 1
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  store i32 0, i32* %259, align 8
  %260 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %261 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %260, i32 0, i32 1
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %261, align 8
  %263 = call i32 @xenvif_disconnect_ctrl(%struct.TYPE_10__* %262)
  br label %264

264:                                              ; preds = %245, %204, %80, %62, %37, %20
  ret void
}

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, ...) #1

declare dso_local i32 @xen_net_read_mac(%struct.xenbus_device*, i32) #1

declare dso_local i32 @xen_net_read_rate(%struct.xenbus_device*, i64*, i64*) #1

declare dso_local i32 @xen_unregister_watchers(%struct.TYPE_10__*) #1

declare dso_local i32 @xen_register_watchers(%struct.xenbus_device*, %struct.TYPE_10__*) #1

declare dso_local i32 @read_xenbus_vif_flags(%struct.backend_info*) #1

declare dso_local i32 @connect_ctrl_ring(%struct.backend_info*) #1

declare dso_local %struct.xenvif_queue* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xenvif_init_queue(%struct.xenvif_queue*) #1

declare dso_local i32 @connect_data_rings(%struct.backend_info*, %struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_deinit_queue(%struct.xenvif_queue*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @xenvif_carrier_on(%struct.TYPE_10__*) #1

declare dso_local i32 @unregister_hotplug_status_watch(%struct.backend_info*) #1

declare dso_local i32 @xenbus_watch_pathfmt(%struct.xenbus_device*, i32*, i32, i8*, i32, i8*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.TYPE_11__*) #1

declare dso_local i32 @xenvif_disconnect_data(%struct.TYPE_10__*) #1

declare dso_local i32 @vfree(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_disconnect_ctrl(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
