; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_create_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_create_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccwgroup_driver = type { i64, i32 (%struct.ccwgroup_device*)*, i32 }
%struct.ccwgroup_device = type opaque
%struct.ccwgroup_device.0 = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_13__**, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32, i32, %struct.device*, i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.ccw_dev_id = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cdev = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ccwgroup_ungroup_workfn = common dso_local global i32 0, align 4
@ccwgroup_bus_type = common dso_local global i32 0, align 4
@ccwgroup_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ccwgroup_attr_groups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccwgroup_create_dev(%struct.device* %0, %struct.ccwgroup_driver* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ccwgroup_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ccwgroup_device.0*, align 8
  %11 = alloca %struct.ccw_dev_id, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.ccwgroup_driver* %1, %struct.ccwgroup_driver** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %391

19:                                               ; preds = %4
  %20 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %21 = load i32, i32* @cdev, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @struct_size(%struct.ccwgroup_device.0* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ccwgroup_device.0* @kzalloc(i32 %23, i32 %24)
  store %struct.ccwgroup_device.0* %25, %struct.ccwgroup_device.0** %10, align 8
  %26 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %27 = icmp ne %struct.ccwgroup_device.0* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %391

31:                                               ; preds = %19
  %32 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %33 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %32, i32 0, i32 5
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %36 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %35, i32 0, i32 2
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %39 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %38, i32 0, i32 2
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %42 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %41, i32 0, i32 4
  %43 = load i32, i32* @ccwgroup_ungroup_workfn, align 4
  %44 = call i32 @INIT_WORK(i32* %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %47 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %49 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 4
  store i32* @ccwgroup_bus_type, i32** %50, align 8
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %53 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  store %struct.device* %51, %struct.device** %54, align 8
  %55 = load i32, i32* @ccwgroup_release, align 4
  %56 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %57 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %60 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %59, i32 0, i32 1
  %61 = call i32 @device_initialize(%struct.TYPE_12__* %60)
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %199, %31
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i1 [ false, %62 ], [ %68, %66 ]
  br i1 %70, label %71, label %202

71:                                               ; preds = %69
  %72 = call i32 @__get_next_id(i8** %9, %struct.ccw_dev_id* %11)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %307

76:                                               ; preds = %71
  %77 = call %struct.TYPE_13__* @get_ccwdev_by_dev_id(%struct.ccw_dev_id* %11)
  %78 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %79 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %78, i32 0, i32 3
  %80 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %80, i64 %82
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %83, align 8
  %84 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %85 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %84, i32 0, i32 3
  %86 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %86, i64 %88
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %141

92:                                               ; preds = %76
  %93 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %94 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %93, i32 0, i32 3
  %95 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %95, i64 %97
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %141

103:                                              ; preds = %92
  %104 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %105 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %104, i32 0, i32 3
  %106 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %106, i64 %108
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %114 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %113, i32 0, i32 3
  %115 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %115, i64 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %112, %119
  br i1 %120, label %141, label %121

121:                                              ; preds = %103
  %122 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %123 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %122, i32 0, i32 3
  %124 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %124, i64 %126
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %133 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %132, i32 0, i32 3
  %134 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %134, i64 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %131, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %121, %103, %92, %76
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %12, align 4
  br label %307

144:                                              ; preds = %121
  %145 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %146 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %145, i32 0, i32 3
  %147 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %147, i64 %149
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @spin_lock_irq(i32 %153)
  %155 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %156 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %155, i32 0, i32 3
  %157 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %157, i64 %159
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = call %struct.ccwgroup_device.0* @dev_get_drvdata(%struct.TYPE_12__* %162)
  %164 = icmp ne %struct.ccwgroup_device.0* %163, null
  br i1 %164, label %165, label %178

165:                                              ; preds = %144
  %166 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %167 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %166, i32 0, i32 3
  %168 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %168, i64 %170
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @spin_unlock_irq(i32 %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %12, align 4
  br label %307

178:                                              ; preds = %144
  %179 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %180 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %179, i32 0, i32 3
  %181 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %181, i64 %183
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %188 = call i32 @dev_set_drvdata(%struct.TYPE_12__* %186, %struct.ccwgroup_device.0* %187)
  %189 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %190 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %189, i32 0, i32 3
  %191 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %191, i64 %193
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @spin_unlock_irq(i32 %197)
  br label %199

199:                                              ; preds = %178
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %13, align 4
  br label %62

202:                                              ; preds = %69
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %12, align 4
  br label %307

209:                                              ; preds = %202
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %209
  %214 = load i8*, i8** %9, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load i8*, i8** %9, align 8
  %218 = call i64 @strlen(i8* %217)
  %219 = icmp sgt i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %12, align 4
  br label %307

223:                                              ; preds = %216, %213, %209
  %224 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %7, align 8
  %225 = icmp ne %struct.ccwgroup_driver* %224, null
  br i1 %225, label %226, label %246

226:                                              ; preds = %223
  %227 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %7, align 8
  %228 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %226
  %232 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %233 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %232, i32 0, i32 3
  %234 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %234, i64 0
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %7, align 8
  %240 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %238, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %231
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %12, align 4
  br label %307

246:                                              ; preds = %231, %226, %223
  %247 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %248 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %247, i32 0, i32 1
  %249 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %250 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %249, i32 0, i32 3
  %251 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %251, i64 0
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = call i32 @dev_name(%struct.TYPE_12__* %254)
  %256 = call i32 @dev_set_name(%struct.TYPE_12__* %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* @ccwgroup_attr_groups, align 4
  %258 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %259 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 8
  %261 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %7, align 8
  %262 = icmp ne %struct.ccwgroup_driver* %261, null
  br i1 %262, label %263, label %287

263:                                              ; preds = %246
  %264 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %7, align 8
  %265 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %264, i32 0, i32 2
  %266 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %267 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  store i32* %265, i32** %268, align 8
  %269 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %7, align 8
  %270 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %269, i32 0, i32 1
  %271 = load i32 (%struct.ccwgroup_device*)*, i32 (%struct.ccwgroup_device*)** %270, align 8
  %272 = icmp ne i32 (%struct.ccwgroup_device*)* %271, null
  br i1 %272, label %273, label %280

273:                                              ; preds = %263
  %274 = load %struct.ccwgroup_driver*, %struct.ccwgroup_driver** %7, align 8
  %275 = getelementptr inbounds %struct.ccwgroup_driver, %struct.ccwgroup_driver* %274, i32 0, i32 1
  %276 = load i32 (%struct.ccwgroup_device*)*, i32 (%struct.ccwgroup_device*)** %275, align 8
  %277 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %278 = bitcast %struct.ccwgroup_device.0* %277 to %struct.ccwgroup_device*
  %279 = call i32 %276(%struct.ccwgroup_device* %278)
  br label %281

280:                                              ; preds = %263
  br label %281

281:                                              ; preds = %280, %273
  %282 = phi i32 [ %279, %273 ], [ 0, %280 ]
  store i32 %282, i32* %12, align 4
  %283 = load i32, i32* %12, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  br label %307

286:                                              ; preds = %281
  br label %287

287:                                              ; preds = %286, %246
  %288 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %289 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %288, i32 0, i32 1
  %290 = call i32 @device_add(%struct.TYPE_12__* %289)
  store i32 %290, i32* %12, align 4
  %291 = load i32, i32* %12, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  br label %307

294:                                              ; preds = %287
  %295 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %296 = call i32 @__ccwgroup_create_symlinks(%struct.ccwgroup_device.0* %295)
  store i32 %296, i32* %12, align 4
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %294
  %300 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %301 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %300, i32 0, i32 1
  %302 = call i32 @device_del(%struct.TYPE_12__* %301)
  br label %307

303:                                              ; preds = %294
  %304 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %305 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %304, i32 0, i32 2
  %306 = call i32 @mutex_unlock(i32* %305)
  store i32 0, i32* %5, align 4
  br label %391

307:                                              ; preds = %299, %293, %285, %243, %220, %206, %165, %141, %75
  store i32 0, i32* %13, align 4
  br label %308

308:                                              ; preds = %380, %307
  %309 = load i32, i32* %13, align 4
  %310 = load i32, i32* %8, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %383

312:                                              ; preds = %308
  %313 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %314 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %313, i32 0, i32 3
  %315 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %314, align 8
  %316 = load i32, i32* %13, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %315, i64 %317
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %318, align 8
  %320 = icmp ne %struct.TYPE_13__* %319, null
  br i1 %320, label %321, label %379

321:                                              ; preds = %312
  %322 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %323 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %322, i32 0, i32 3
  %324 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %323, align 8
  %325 = load i32, i32* %13, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %324, i64 %326
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @spin_lock_irq(i32 %330)
  %332 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %333 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %332, i32 0, i32 3
  %334 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %333, align 8
  %335 = load i32, i32* %13, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %334, i64 %336
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 1
  %340 = call %struct.ccwgroup_device.0* @dev_get_drvdata(%struct.TYPE_12__* %339)
  %341 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %342 = icmp eq %struct.ccwgroup_device.0* %340, %341
  br i1 %342, label %343, label %353

343:                                              ; preds = %321
  %344 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %345 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %344, i32 0, i32 3
  %346 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %345, align 8
  %347 = load i32, i32* %13, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %346, i64 %348
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 1
  %352 = call i32 @dev_set_drvdata(%struct.TYPE_12__* %351, %struct.ccwgroup_device.0* null)
  br label %353

353:                                              ; preds = %343, %321
  %354 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %355 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %354, i32 0, i32 3
  %356 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %355, align 8
  %357 = load i32, i32* %13, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %356, i64 %358
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @spin_unlock_irq(i32 %362)
  %364 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %365 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %364, i32 0, i32 3
  %366 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %365, align 8
  %367 = load i32, i32* %13, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %366, i64 %368
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 1
  %372 = call i32 @put_device(%struct.TYPE_12__* %371)
  %373 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %374 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %373, i32 0, i32 3
  %375 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %374, align 8
  %376 = load i32, i32* %13, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %375, i64 %377
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %378, align 8
  br label %379

379:                                              ; preds = %353, %312
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %13, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %13, align 4
  br label %308

383:                                              ; preds = %308
  %384 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %385 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %384, i32 0, i32 2
  %386 = call i32 @mutex_unlock(i32* %385)
  %387 = load %struct.ccwgroup_device.0*, %struct.ccwgroup_device.0** %10, align 8
  %388 = getelementptr inbounds %struct.ccwgroup_device.0, %struct.ccwgroup_device.0* %387, i32 0, i32 1
  %389 = call i32 @put_device(%struct.TYPE_12__* %388)
  %390 = load i32, i32* %12, align 4
  store i32 %390, i32* %5, align 4
  br label %391

391:                                              ; preds = %383, %303, %28, %16
  %392 = load i32, i32* %5, align 4
  ret i32 %392
}

declare dso_local %struct.ccwgroup_device.0* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ccwgroup_device.0*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_12__*) #1

declare dso_local i32 @__get_next_id(i8**, %struct.ccw_dev_id*) #1

declare dso_local %struct.TYPE_13__* @get_ccwdev_by_dev_id(%struct.ccw_dev_id*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local %struct.ccwgroup_device.0* @dev_get_drvdata(%struct.TYPE_12__*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_12__*, %struct.ccwgroup_device.0*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @device_add(%struct.TYPE_12__*) #1

declare dso_local i32 @__ccwgroup_create_symlinks(%struct.ccwgroup_device.0*) #1

declare dso_local i32 @device_del(%struct.TYPE_12__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
