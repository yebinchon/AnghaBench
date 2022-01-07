; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_init_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_init_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i64, i32, i64, %struct.TYPE_18__*, i32, %struct.TYPE_13__, %struct.device*, %struct.TYPE_18__, %struct.TYPE_17__, i32, i32, i32, i32, i32, i32, %struct.nvme_ctrl_ops*, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_15__, i32, i32, %struct.device*, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.device = type { i32 }
%struct.nvme_ctrl_ops = type { i32 }

@NVME_CTRL_NEW = common dso_local global i32 0, align 4
@nvme_scan_work = common dso_local global i32 0, align 4
@nvme_async_event_work = common dso_local global i32 0, align 4
@nvme_fw_act_work = common dso_local global i32 0, align 4
@nvme_delete_ctrl_work = common dso_local global i32 0, align 4
@nvme_keep_alive_work = common dso_local global i32 0, align 4
@nvme_admin_keep_alive = common dso_local global i32 0, align 4
@NVME_DSM_MAX_RANGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvme_instance_ida = common dso_local global i32 0, align 4
@nvme_chr_devt = common dso_local global i32 0, align 4
@nvme_class = common dso_local global i32 0, align 4
@nvme_dev_attr_groups = common dso_local global i32 0, align 4
@nvme_free_ctrl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nvme%d\00", align 1
@nvme_dev_fops = common dso_local global i32 0, align 4
@nvme_set_latency_tolerance = common dso_local global i32 0, align 4
@default_ps_max_latency_us = common dso_local global i32 0, align 4
@S32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_init_ctrl(%struct.nvme_ctrl* %0, %struct.device* %1, %struct.nvme_ctrl_ops* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_ctrl*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.nvme_ctrl_ops*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store %struct.nvme_ctrl_ops* %2, %struct.nvme_ctrl_ops** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* @NVME_CTRL_NEW, align 4
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %13 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %12, i32 0, i32 20
  store i32 %11, i32* %13, align 8
  %14 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %15 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %14, i32 0, i32 19
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %18 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %17, i32 0, i32 18
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %21 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %20, i32 0, i32 17
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %24 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %23, i32 0, i32 16
  %25 = call i32 @init_rwsem(i32* %24)
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %28 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %27, i32 0, i32 6
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.nvme_ctrl_ops*, %struct.nvme_ctrl_ops** %8, align 8
  %30 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %31 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %30, i32 0, i32 15
  store %struct.nvme_ctrl_ops* %29, %struct.nvme_ctrl_ops** %31, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %34 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %36 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %35, i32 0, i32 14
  %37 = load i32, i32* @nvme_scan_work, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %40 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %39, i32 0, i32 13
  %41 = load i32, i32* @nvme_async_event_work, align 4
  %42 = call i32 @INIT_WORK(i32* %40, i32 %41)
  %43 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %44 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %43, i32 0, i32 12
  %45 = load i32, i32* @nvme_fw_act_work, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %48 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %47, i32 0, i32 11
  %49 = load i32, i32* @nvme_delete_ctrl_work, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  %51 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %52 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %51, i32 0, i32 10
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %55 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %54, i32 0, i32 9
  %56 = load i32, i32* @nvme_keep_alive_work, align 4
  %57 = call i32 @INIT_DELAYED_WORK(i32* %55, i32 %56)
  %58 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %59 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %58, i32 0, i32 8
  %60 = call i32 @memset(%struct.TYPE_17__* %59, i32 0, i32 4)
  %61 = load i32, i32* @nvme_admin_keep_alive, align 4
  %62 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %63 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load i32, i32* @NVME_DSM_MAX_RANGES, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ugt i64 %68, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUILD_BUG_ON(i32 %72)
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i64 @alloc_page(i32 %74)
  %76 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %77 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %79 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %4
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %202

85:                                               ; preds = %4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32 @ida_simple_get(i32* @nvme_instance_ida, i32 0, i32 0, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %202

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %94 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %96 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %95, i32 0, i32 7
  %97 = call i32 @device_initialize(%struct.TYPE_18__* %96)
  %98 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %99 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %98, i32 0, i32 7
  %100 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %101 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %100, i32 0, i32 3
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %101, align 8
  %102 = load i32, i32* @nvme_chr_devt, align 4
  %103 = call i32 @MAJOR(i32 %102)
  %104 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %105 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @MKDEV(i32 %103, i32 %106)
  %108 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %109 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %108, i32 0, i32 3
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 6
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* @nvme_class, align 4
  %113 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %114 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %113, i32 0, i32 3
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 5
  store i32 %112, i32* %116, align 8
  %117 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %118 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %117, i32 0, i32 6
  %119 = load %struct.device*, %struct.device** %118, align 8
  %120 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %121 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %120, i32 0, i32 3
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 4
  store %struct.device* %119, %struct.device** %123, align 8
  %124 = load i32, i32* @nvme_dev_attr_groups, align 4
  %125 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %126 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %125, i32 0, i32 3
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 3
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* @nvme_free_ctrl, align 4
  %130 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %131 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %130, i32 0, i32 3
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  store i32 %129, i32* %133, align 8
  %134 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %135 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %134, i32 0, i32 3
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %138 = call i32 @dev_set_drvdata(%struct.TYPE_18__* %136, %struct.nvme_ctrl* %137)
  %139 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %140 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %139, i32 0, i32 3
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %143 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dev_set_name(%struct.TYPE_18__* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %91
  br label %197

149:                                              ; preds = %91
  %150 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %151 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %150, i32 0, i32 5
  %152 = call i32 @cdev_init(%struct.TYPE_13__* %151, i32* @nvme_dev_fops)
  %153 = load %struct.nvme_ctrl_ops*, %struct.nvme_ctrl_ops** %8, align 8
  %154 = getelementptr inbounds %struct.nvme_ctrl_ops, %struct.nvme_ctrl_ops* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %157 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 4
  %159 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %160 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %159, i32 0, i32 5
  %161 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %162 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %161, i32 0, i32 3
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %162, align 8
  %164 = call i32 @cdev_device_add(%struct.TYPE_13__* %160, %struct.TYPE_18__* %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %149
  br label %189

168:                                              ; preds = %149
  %169 = load i32, i32* @nvme_set_latency_tolerance, align 4
  %170 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %171 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %170, i32 0, i32 3
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  store i32 %169, i32* %174, align 4
  %175 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %176 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %175, i32 0, i32 3
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = load i32, i32* @default_ps_max_latency_us, align 4
  %179 = load i64, i64* @S32_MAX, align 8
  %180 = call i32 @min(i32 %178, i64 %179)
  %181 = call i32 @dev_pm_qos_update_user_latency_tolerance(%struct.TYPE_18__* %177, i32 %180)
  %182 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %183 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %182, i32 0, i32 4
  %184 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %185 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %184, i32 0, i32 3
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  %187 = call i32 @dev_name(%struct.TYPE_18__* %186)
  %188 = call i32 @nvme_fault_inject_init(i32* %183, i32 %187)
  store i32 0, i32* %5, align 4
  br label %214

189:                                              ; preds = %167
  %190 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %191 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %190, i32 0, i32 3
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @kfree_const(i32 %195)
  br label %197

197:                                              ; preds = %189, %148
  %198 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %199 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @ida_simple_remove(i32* @nvme_instance_ida, i32 %200)
  br label %202

202:                                              ; preds = %197, %90, %82
  %203 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %204 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %6, align 8
  %209 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @__free_page(i64 %210)
  br label %212

212:                                              ; preds = %207, %202
  %213 = load i32, i32* %10, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %212, %168
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @alloc_page(i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_18__*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_18__*, %struct.nvme_ctrl*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @cdev_device_add(%struct.TYPE_13__*, %struct.TYPE_18__*) #1

declare dso_local i32 @dev_pm_qos_update_user_latency_tolerance(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @nvme_fault_inject_init(i32*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_18__*) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @__free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
