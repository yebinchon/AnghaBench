; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.of_device_id = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"device tree info unavailable\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@kdev = common dso_local global %struct.TYPE_15__* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@keystone_qmss_of_match = common dso_local global i32 0, align 4
@QMSS_66AK2G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to enable QMSS\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"queue-range\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"queue-range not specified\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"qmgrs\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"queue manager info not specified\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"pdsps\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"queue-pools\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"queue-pools not specified\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"linkram0\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"could not setup linking ram\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"linkram1\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"descriptor-regions\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"descriptor-regions not specified\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"hwqueue initialization failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"qmss\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@knav_queue_debug_ops = common dso_local global i32 0, align 4
@device_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @knav_queue_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_queue_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca [2 x i8*], align 16
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %238

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %10, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.TYPE_15__* @devm_kzalloc(%struct.device* %27, i32 4, i32 %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** @kdev, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %238

37:                                               ; preds = %26
  %38 = load i32, i32* @keystone_qmss_of_match, align 4
  %39 = call i32 @of_match_ptr(i32 %38)
  %40 = load %struct.device*, %struct.device** %10, align 8
  %41 = call %struct.of_device_id* @of_match_device(i32 %39, %struct.device* %40)
  store %struct.of_device_id* %41, %struct.of_device_id** %9, align 8
  %42 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %43 = icmp ne %struct.of_device_id* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %46 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @QMSS_66AK2G, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %44, %37
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %54, %struct.TYPE_15__* %55)
  %57 = load %struct.device*, %struct.device** %10, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  store %struct.device* %57, %struct.device** %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 8
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 7
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 6
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 5
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 4
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @pm_runtime_enable(%struct.device* %76)
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @pm_runtime_get_sync(%struct.device* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %53
  %84 = load %struct.device*, %struct.device** %10, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %2, align 4
  br label %238

87:                                               ; preds = %53
  %88 = load %struct.device_node*, %struct.device_node** %4, align 8
  %89 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %90 = call i64 @of_property_read_u32_array(%struct.device_node* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %89, i32 2)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.device*, %struct.device** %10, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %224

97:                                               ; preds = %87
  %98 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %99 = load i8*, i8** %98, align 16
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.device_node*, %struct.device_node** %4, align 8
  %107 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store %struct.device_node* %107, %struct.device_node** %5, align 8
  %108 = load %struct.device_node*, %struct.device_node** %5, align 8
  %109 = icmp ne %struct.device_node* %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %97
  %111 = load %struct.device*, %struct.device** %10, align 8
  %112 = call i32 @dev_err(%struct.device* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %12, align 4
  br label %224

115:                                              ; preds = %97
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %117 = load %struct.device_node*, %struct.device_node** %5, align 8
  %118 = call i32 @knav_queue_init_qmgrs(%struct.TYPE_15__* %116, %struct.device_node* %117)
  store i32 %118, i32* %12, align 4
  %119 = load %struct.device_node*, %struct.device_node** %5, align 8
  %120 = call i32 @of_node_put(%struct.device_node* %119)
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %224

124:                                              ; preds = %115
  %125 = load %struct.device_node*, %struct.device_node** %4, align 8
  %126 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store %struct.device_node* %126, %struct.device_node** %8, align 8
  %127 = load %struct.device_node*, %struct.device_node** %8, align 8
  %128 = icmp ne %struct.device_node* %127, null
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %131 = load %struct.device_node*, %struct.device_node** %8, align 8
  %132 = call i32 @knav_queue_init_pdsps(%struct.TYPE_15__* %130, %struct.device_node* %131)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %224

136:                                              ; preds = %129
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %138 = call i32 @knav_queue_start_pdsps(%struct.TYPE_15__* %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %224

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142, %124
  %144 = load %struct.device_node*, %struct.device_node** %8, align 8
  %145 = call i32 @of_node_put(%struct.device_node* %144)
  %146 = load %struct.device_node*, %struct.device_node** %4, align 8
  %147 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store %struct.device_node* %147, %struct.device_node** %6, align 8
  %148 = load %struct.device_node*, %struct.device_node** %6, align 8
  %149 = icmp ne %struct.device_node* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %143
  %151 = load %struct.device*, %struct.device** %10, align 8
  %152 = call i32 @dev_err(%struct.device* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %12, align 4
  br label %224

155:                                              ; preds = %143
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %157 = load %struct.device_node*, %struct.device_node** %6, align 8
  %158 = call i32 @knav_setup_queue_pools(%struct.TYPE_15__* %156, %struct.device_node* %157)
  store i32 %158, i32* %12, align 4
  %159 = load %struct.device_node*, %struct.device_node** %6, align 8
  %160 = call i32 @of_node_put(%struct.device_node* %159)
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %224

164:                                              ; preds = %155
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = call i32 @knav_get_link_ram(%struct.TYPE_15__* %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* %169)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = load %struct.device*, %struct.device** %175, align 8
  %177 = call i32 @dev_err(%struct.device* %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %224

178:                                              ; preds = %164
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = call i32 @knav_get_link_ram(%struct.TYPE_15__* %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32* %183)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %188

188:                                              ; preds = %187, %178
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %190 = call i32 @knav_queue_setup_link_ram(%struct.TYPE_15__* %189)
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %224

194:                                              ; preds = %188
  %195 = load %struct.device_node*, %struct.device_node** %4, align 8
  %196 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %195, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  store %struct.device_node* %196, %struct.device_node** %7, align 8
  %197 = load %struct.device_node*, %struct.device_node** %7, align 8
  %198 = icmp ne %struct.device_node* %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %194
  %200 = load %struct.device*, %struct.device** %10, align 8
  %201 = call i32 @dev_err(%struct.device* %200, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %224

202:                                              ; preds = %194
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %204 = load %struct.device_node*, %struct.device_node** %7, align 8
  %205 = call i32 @knav_queue_setup_regions(%struct.TYPE_15__* %203, %struct.device_node* %204)
  store i32 %205, i32* %12, align 4
  %206 = load %struct.device_node*, %struct.device_node** %7, align 8
  %207 = call i32 @of_node_put(%struct.device_node* %206)
  %208 = load i32, i32* %12, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %224

211:                                              ; preds = %202
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %213 = call i32 @knav_queue_init_queues(%struct.TYPE_15__* %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load %struct.device*, %struct.device** %10, align 8
  %218 = call i32 @dev_err(%struct.device* %217, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  br label %224

219:                                              ; preds = %211
  %220 = load i32, i32* @S_IFREG, align 4
  %221 = load i32, i32* @S_IRUGO, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %222, i32* null, i32* null, i32* @knav_queue_debug_ops)
  store i32 1, i32* @device_ready, align 4
  store i32 0, i32* %2, align 4
  br label %238

224:                                              ; preds = %216, %210, %199, %193, %173, %163, %150, %141, %135, %123, %110, %92
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %226 = call i32 @knav_queue_stop_pdsps(%struct.TYPE_15__* %225)
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %228 = call i32 @knav_queue_free_regions(%struct.TYPE_15__* %227)
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kdev, align 8
  %230 = call i32 @knav_free_queue_ranges(%struct.TYPE_15__* %229)
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = call i32 @pm_runtime_put_sync(%struct.device* %232)
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = call i32 @pm_runtime_disable(%struct.device* %235)
  %237 = load i32, i32* %12, align 4
  store i32 %237, i32* %2, align 4
  br label %238

238:                                              ; preds = %224, %219, %83, %32, %21
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.TYPE_15__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_15__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i8**, i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @knav_queue_init_qmgrs(%struct.TYPE_15__*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @knav_queue_init_pdsps(%struct.TYPE_15__*, %struct.device_node*) #1

declare dso_local i32 @knav_queue_start_pdsps(%struct.TYPE_15__*) #1

declare dso_local i32 @knav_setup_queue_pools(%struct.TYPE_15__*, %struct.device_node*) #1

declare dso_local i32 @knav_get_link_ram(%struct.TYPE_15__*, i8*, i32*) #1

declare dso_local i32 @knav_queue_setup_link_ram(%struct.TYPE_15__*) #1

declare dso_local i32 @knav_queue_setup_regions(%struct.TYPE_15__*, %struct.device_node*) #1

declare dso_local i32 @knav_queue_init_queues(%struct.TYPE_15__*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @knav_queue_stop_pdsps(%struct.TYPE_15__*) #1

declare dso_local i32 @knav_queue_free_regions(%struct.TYPE_15__*) #1

declare dso_local i32 @knav_free_queue_ranges(%struct.TYPE_15__*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
