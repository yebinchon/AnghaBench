; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_core.c_nvmem_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_device = type { i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, i32*, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.nvmem_config = type { i32, i64, i32, i32, i64, i64, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvmem_ida = common dso_local global i32 0, align 4
@nvmem_provider_type = common dso_local global i32 0, align 4
@nvmem_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"nvmem\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Registering nvmem device %s\0A\00", align 1
@nvmem_notifier = common dso_local global i32 0, align 4
@NVMEM_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvmem_device* @nvmem_register(%struct.nvmem_config* %0) #0 {
  %2 = alloca %struct.nvmem_device*, align 8
  %3 = alloca %struct.nvmem_config*, align 8
  %4 = alloca %struct.nvmem_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nvmem_config* %0, %struct.nvmem_config** %3, align 8
  %6 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %7 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 6
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.nvmem_device* @ERR_PTR(i32 %12)
  store %struct.nvmem_device* %13, %struct.nvmem_device** %2, align 8
  br label %301

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nvmem_device* @kzalloc(i32 88, i32 %15)
  store %struct.nvmem_device* %16, %struct.nvmem_device** %4, align 8
  %17 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %18 = icmp ne %struct.nvmem_device* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.nvmem_device* @ERR_PTR(i32 %21)
  store %struct.nvmem_device* %22, %struct.nvmem_device** %2, align 8
  br label %301

23:                                               ; preds = %14
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @ida_simple_get(i32* @nvmem_ida, i32 0, i32 0, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %30 = call i32 @kfree(%struct.nvmem_device* %29)
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.nvmem_device* @ERR_PTR(i32 %31)
  store %struct.nvmem_device* %32, %struct.nvmem_device** %2, align 8
  br label %301

33:                                               ; preds = %23
  %34 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %35 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %34, i32 0, i32 12
  %36 = call i32 @kref_init(i32* %35)
  %37 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %38 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %37, i32 0, i32 11
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %42 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %44 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %43, i32 0, i32 15
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %47 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %46, i32 0, i32 10
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %49 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %48, i32 0, i32 10
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %33
  %53 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %54 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %53, i32 0, i32 6
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %61 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %60, i32 0, i32 6
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %68 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %67, i32 0, i32 10
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %59, %52, %33
  %70 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %71 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %70, i32 0, i32 14
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %76

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %74
  %77 = phi i64 [ %72, %74 ], [ 1, %75 ]
  %78 = trunc i64 %77 to i32
  %79 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %80 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %82 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %81, i32 0, i32 13
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %85
  %88 = phi i64 [ %83, %85 ], [ 1, %86 ]
  %89 = trunc i64 %88 to i32
  %90 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %91 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %93 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %96 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 8
  %97 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %98 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 4
  store i32* @nvmem_provider_type, i32** %99, align 8
  %100 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %101 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  store i32* @nvmem_bus_type, i32** %102, align 8
  %103 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %104 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %103, i32 0, i32 6
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %107 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %108, align 8
  %109 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %110 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %113 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 4
  %114 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %115 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %118 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 8
  %119 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %120 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %123 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 4
  %124 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %125 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %128 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 8
  %129 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %130 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %87
  %134 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %135 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %134, i32 0, i32 6
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %140 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %133, %87
  %143 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %144 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %160

147:                                              ; preds = %142
  %148 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %149 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %154 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %153, i32 0, i32 4
  %155 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %156 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i8*
  %159 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @dev_set_name(%struct.TYPE_10__* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %158)
  br label %187

160:                                              ; preds = %147, %142
  %161 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %162 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %161, i32 0, i32 4
  %163 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %164 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = inttoptr i64 %165 to i8*
  br label %170

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %167
  %171 = phi i8* [ %168, %167 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %169 ]
  %172 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %173 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %178 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  br label %184

180:                                              ; preds = %170
  %181 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %182 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  br label %184

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %179, %176 ], [ %183, %180 ]
  %186 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @dev_set_name(%struct.TYPE_10__* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %171, i32 %185)
  br label %187

187:                                              ; preds = %184, %152
  %188 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %189 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %188, i32 0, i32 6
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = call i64 @device_property_present(%struct.TYPE_11__* %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %204, label %193

193:                                              ; preds = %187
  %194 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %195 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %193
  %199 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %200 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  br label %204

204:                                              ; preds = %198, %193, %187
  %205 = phi i1 [ true, %193 ], [ true, %187 ], [ %203, %198 ]
  %206 = zext i1 %205 to i32
  %207 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %208 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %210 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %211 = call i32 @nvmem_sysfs_get_groups(%struct.nvmem_device* %209, %struct.nvmem_config* %210)
  %212 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %213 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  store i32 %211, i32* %214, align 8
  %215 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %216 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %215, i32 0, i32 4
  %217 = call i32 @device_initialize(%struct.TYPE_10__* %216)
  %218 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %219 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %218, i32 0, i32 4
  %220 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %221 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @dev_dbg(%struct.TYPE_10__* %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %222)
  %224 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %225 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %224, i32 0, i32 4
  %226 = call i32 @device_add(%struct.TYPE_10__* %225)
  store i32 %226, i32* %5, align 4
  %227 = load i32, i32* %5, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %204
  br label %295

230:                                              ; preds = %204
  %231 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %232 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %230
  %236 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %237 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %238 = call i32 @nvmem_sysfs_setup_compat(%struct.nvmem_device* %236, %struct.nvmem_config* %237)
  store i32 %238, i32* %5, align 4
  %239 = load i32, i32* %5, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  br label %291

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242, %230
  %244 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %245 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %261

248:                                              ; preds = %243
  %249 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %250 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %251 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %254 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @nvmem_add_cells(%struct.nvmem_device* %249, i32 %252, i32 %255)
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %5, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %248
  br label %281

260:                                              ; preds = %248
  br label %261

261:                                              ; preds = %260, %243
  %262 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %263 = call i32 @nvmem_add_cells_from_table(%struct.nvmem_device* %262)
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* %5, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  br label %278

267:                                              ; preds = %261
  %268 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %269 = call i32 @nvmem_add_cells_from_of(%struct.nvmem_device* %268)
  store i32 %269, i32* %5, align 4
  %270 = load i32, i32* %5, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  br label %278

273:                                              ; preds = %267
  %274 = load i32, i32* @NVMEM_ADD, align 4
  %275 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %276 = call i32 @blocking_notifier_call_chain(i32* @nvmem_notifier, i32 %274, %struct.nvmem_device* %275)
  %277 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  store %struct.nvmem_device* %277, %struct.nvmem_device** %2, align 8
  br label %301

278:                                              ; preds = %272, %266
  %279 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %280 = call i32 @nvmem_device_remove_all_cells(%struct.nvmem_device* %279)
  br label %281

281:                                              ; preds = %278, %259
  %282 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %283 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %288 = load %struct.nvmem_config*, %struct.nvmem_config** %3, align 8
  %289 = call i32 @nvmem_sysfs_remove_compat(%struct.nvmem_device* %287, %struct.nvmem_config* %288)
  br label %290

290:                                              ; preds = %286, %281
  br label %291

291:                                              ; preds = %290, %241
  %292 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %293 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %292, i32 0, i32 4
  %294 = call i32 @device_del(%struct.TYPE_10__* %293)
  br label %295

295:                                              ; preds = %291, %229
  %296 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %297 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %296, i32 0, i32 4
  %298 = call i32 @put_device(%struct.TYPE_10__* %297)
  %299 = load i32, i32* %5, align 4
  %300 = call %struct.nvmem_device* @ERR_PTR(i32 %299)
  store %struct.nvmem_device* %300, %struct.nvmem_device** %2, align 8
  br label %301

301:                                              ; preds = %295, %273, %28, %19, %10
  %302 = load %struct.nvmem_device*, %struct.nvmem_device** %2, align 8
  ret %struct.nvmem_device* %302
}

declare dso_local %struct.nvmem_device* @ERR_PTR(i32) #1

declare dso_local %struct.nvmem_device* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nvmem_device*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_10__*, i8*, i8*, ...) #1

declare dso_local i64 @device_property_present(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @nvmem_sysfs_get_groups(%struct.nvmem_device*, %struct.nvmem_config*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @device_add(%struct.TYPE_10__*) #1

declare dso_local i32 @nvmem_sysfs_setup_compat(%struct.nvmem_device*, %struct.nvmem_config*) #1

declare dso_local i32 @nvmem_add_cells(%struct.nvmem_device*, i32, i32) #1

declare dso_local i32 @nvmem_add_cells_from_table(%struct.nvmem_device*) #1

declare dso_local i32 @nvmem_add_cells_from_of(%struct.nvmem_device*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.nvmem_device*) #1

declare dso_local i32 @nvmem_device_remove_all_cells(%struct.nvmem_device*) #1

declare dso_local i32 @nvmem_sysfs_remove_compat(%struct.nvmem_device*, %struct.nvmem_config*) #1

declare dso_local i32 @device_del(%struct.TYPE_10__*) #1

declare dso_local i32 @put_device(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
