; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_alloc_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_alloc_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.nvme_ns = type { i32, i64, i32*, %struct.TYPE_16__*, i32, i32, %struct.gendisk*, i32, i32, i32, %struct.nvme_ctrl* }
%struct.TYPE_16__ = type { %struct.nvme_ns*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.gendisk = type { i32, i32, %struct.TYPE_16__*, %struct.nvme_ns*, i32* }
%struct.nvme_id_ns = type { i32, i64, i32*, %struct.TYPE_16__*, i32, i32, %struct.gendisk*, i32, i32, i32, %struct.nvme_ctrl* }

@DISK_NAME_LEN = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BDI_CAP_STABLE_WRITES = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@NVME_F_PCI_P2PDMA = common dso_local global i32 0, align 4
@QUEUE_FLAG_PCI_P2PDMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nvme_fops = common dso_local global i32 0, align 4
@NVME_QUIRK_LIGHTNVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"LightNVM init failure\0A\00", align 1
@nvme_ns_id_attr_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32)* @nvme_alloc_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_alloc_ns(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.nvme_id_ns*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @DISK_NAME_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.nvme_ns* @kzalloc_node(i32 72, i32 %23, i32 %24)
  store %struct.nvme_ns* %25, %struct.nvme_ns** %6, align 8
  %26 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %27 = icmp ne %struct.nvme_ns* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %286

31:                                               ; preds = %2
  %32 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_16__* @blk_mq_init_queue(i32 %34)
  %36 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %37 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %36, i32 0, i32 3
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %37, align 8
  %38 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %39 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %38, i32 0, i32 3
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = call i64 @IS_ERR(%struct.TYPE_16__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %45 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %44, i32 0, i32 3
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = call i32 @PTR_ERR(%struct.TYPE_16__* %46)
  store i32 %47, i32* %13, align 4
  br label %275

48:                                               ; preds = %31
  %49 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %49, i32 0, i32 7
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %55 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %54, i32 0, i32 7
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i32, i32* @BDI_CAP_STABLE_WRITES, align 4
  %62 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %63 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %62, i32 0, i32 3
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %61
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %60, %53, %48
  %71 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %72 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %73 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %72, i32 0, i32 3
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = call i32 @blk_queue_flag_set(i32 %71, %struct.TYPE_16__* %74)
  %76 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %77 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %76, i32 0, i32 6
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NVME_F_PCI_P2PDMA, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %70
  %85 = load i32, i32* @QUEUE_FLAG_PCI_P2PDMA, align 4
  %86 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %87 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %86, i32 0, i32 3
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = call i32 @blk_queue_flag_set(i32 %85, %struct.TYPE_16__* %88)
  br label %90

90:                                               ; preds = %84, %70
  %91 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %92 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %93 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %92, i32 0, i32 3
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store %struct.nvme_ns* %91, %struct.nvme_ns** %95, align 8
  %96 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %97 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %98 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %97, i32 0, i32 10
  store %struct.nvme_ctrl* %96, %struct.nvme_ctrl** %98, align 8
  %99 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %100 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %99, i32 0, i32 9
  %101 = call i32 @kref_init(i32* %100)
  %102 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %103 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %102, i32 0, i32 0
  store i32 9, i32* %103, align 8
  %104 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %105 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %104, i32 0, i32 3
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %108 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 1, %109
  %111 = call i32 @blk_queue_logical_block_size(%struct.TYPE_16__* %106, i32 %110)
  %112 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %113 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %114 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %113, i32 0, i32 3
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = call i32 @nvme_set_queue_limits(%struct.nvme_ctrl* %112, %struct.TYPE_16__* %115)
  %117 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = bitcast %struct.nvme_id_ns** %8 to %struct.nvme_ns**
  %120 = call i32 @nvme_identify_ns(%struct.nvme_ctrl* %117, i32 %118, %struct.nvme_ns** %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %90
  br label %270

124:                                              ; preds = %90
  %125 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %8, align 8
  %126 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %13, align 4
  br label %266

132:                                              ; preds = %124
  %133 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %8, align 8
  %136 = bitcast %struct.nvme_id_ns* %135 to %struct.nvme_ns*
  %137 = call i32 @nvme_init_ns_head(%struct.nvme_ns* %133, i32 %134, %struct.nvme_ns* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %266

141:                                              ; preds = %132
  %142 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %143 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %144 = call i32 @nvme_setup_streams_ns(%struct.nvme_ctrl* %142, %struct.nvme_ns* %143)
  %145 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %146 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %147 = call i32 @nvme_set_disk_name(i8* %18, %struct.nvme_ns* %145, %struct.nvme_ctrl* %146, i32* %12)
  %148 = load i32, i32* %11, align 4
  %149 = call %struct.gendisk* @alloc_disk_node(i32 0, i32 %148)
  store %struct.gendisk* %149, %struct.gendisk** %7, align 8
  %150 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %151 = icmp ne %struct.gendisk* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %141
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %13, align 4
  br label %248

155:                                              ; preds = %141
  %156 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %157 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %156, i32 0, i32 4
  store i32* @nvme_fops, i32** %157, align 8
  %158 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %159 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %160 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %159, i32 0, i32 3
  store %struct.nvme_ns* %158, %struct.nvme_ns** %160, align 8
  %161 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %162 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %161, i32 0, i32 3
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %165 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %164, i32 0, i32 2
  store %struct.TYPE_16__* %163, %struct.TYPE_16__** %165, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %168 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %170 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @DISK_NAME_LEN, align 4
  %173 = call i32 @memcpy(i32 %171, i8* %18, i32 %172)
  %174 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %175 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %176 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %175, i32 0, i32 6
  store %struct.gendisk* %174, %struct.gendisk** %176, align 8
  %177 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %178 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %8, align 8
  %179 = bitcast %struct.nvme_id_ns* %178 to %struct.nvme_ns*
  %180 = call i32 @__nvme_revalidate_disk(%struct.gendisk* %177, %struct.nvme_ns* %179)
  %181 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %182 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @NVME_QUIRK_LIGHTNVM, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %155
  %188 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %8, align 8
  %189 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %206

194:                                              ; preds = %187
  %195 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @nvme_nvm_register(%struct.nvme_ns* %195, i8* %18, i32 %196)
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %194
  %201 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %202 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @dev_warn(i32 %203, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %243

205:                                              ; preds = %194
  br label %206

206:                                              ; preds = %205, %187, %155
  %207 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %208 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %207, i32 0, i32 4
  %209 = call i32 @down_write(i32* %208)
  %210 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %211 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %210, i32 0, i32 8
  %212 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %213 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %212, i32 0, i32 5
  %214 = call i32 @list_add_tail(i32* %211, i32* %213)
  %215 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %216 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %215, i32 0, i32 4
  %217 = call i32 @up_write(i32* %216)
  %218 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %219 = call i32 @nvme_get_ctrl(%struct.nvme_ctrl* %218)
  %220 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %221 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %224 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %223, i32 0, i32 6
  %225 = load %struct.gendisk*, %struct.gendisk** %224, align 8
  %226 = load i32, i32* @nvme_ns_id_attr_groups, align 4
  %227 = call i32 @device_add_disk(i32 %222, %struct.gendisk* %225, i32 %226)
  %228 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %229 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %8, align 8
  %230 = bitcast %struct.nvme_id_ns* %229 to %struct.nvme_ns*
  %231 = call i32 @nvme_mpath_add_disk(%struct.nvme_ns* %228, %struct.nvme_ns* %230)
  %232 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %233 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %232, i32 0, i32 7
  %234 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %235 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %234, i32 0, i32 6
  %236 = load %struct.gendisk*, %struct.gendisk** %235, align 8
  %237 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @nvme_fault_inject_init(i32* %233, i32 %238)
  %240 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %8, align 8
  %241 = bitcast %struct.nvme_id_ns* %240 to %struct.nvme_ns*
  %242 = call i32 @kfree(%struct.nvme_ns* %241)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %286

243:                                              ; preds = %200
  %244 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %245 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %244, i32 0, i32 6
  %246 = load %struct.gendisk*, %struct.gendisk** %245, align 8
  %247 = call i32 @put_disk(%struct.gendisk* %246)
  br label %248

248:                                              ; preds = %243, %152
  %249 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %250 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %249, i32 0, i32 2
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = call i32 @mutex_lock(i32* %252)
  %254 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %255 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %254, i32 0, i32 5
  %256 = call i32 @list_del_rcu(i32* %255)
  %257 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %258 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %257, i32 0, i32 2
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  %261 = call i32 @mutex_unlock(i32* %260)
  %262 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %263 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @nvme_put_ns_head(i32 %264)
  br label %266

266:                                              ; preds = %248, %140, %129
  %267 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %8, align 8
  %268 = bitcast %struct.nvme_id_ns* %267 to %struct.nvme_ns*
  %269 = call i32 @kfree(%struct.nvme_ns* %268)
  br label %270

270:                                              ; preds = %266, %123
  %271 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %272 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %271, i32 0, i32 3
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %272, align 8
  %274 = call i32 @blk_cleanup_queue(%struct.TYPE_16__* %273)
  br label %275

275:                                              ; preds = %270, %43
  %276 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %277 = call i32 @kfree(%struct.nvme_ns* %276)
  %278 = load i32, i32* %13, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = load i32, i32* %13, align 4
  %282 = call i32 @nvme_error_status(i32 %281)
  %283 = call i32 @blk_status_to_errno(i32 %282)
  store i32 %283, i32* %13, align 4
  br label %284

284:                                              ; preds = %280, %275
  %285 = load i32, i32* %13, align 4
  store i32 %285, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %286

286:                                              ; preds = %284, %206, %28
  %287 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %287)
  %288 = load i32, i32* %3, align 4
  ret i32 %288
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nvme_ns* @kzalloc_node(i32, i32, i32) #2

declare dso_local %struct.TYPE_16__* @blk_mq_init_queue(i32) #2

declare dso_local i64 @IS_ERR(%struct.TYPE_16__*) #2

declare dso_local i32 @PTR_ERR(%struct.TYPE_16__*) #2

declare dso_local i32 @blk_queue_flag_set(i32, %struct.TYPE_16__*) #2

declare dso_local i32 @kref_init(i32*) #2

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @nvme_set_queue_limits(%struct.nvme_ctrl*, %struct.TYPE_16__*) #2

declare dso_local i32 @nvme_identify_ns(%struct.nvme_ctrl*, i32, %struct.nvme_ns**) #2

declare dso_local i32 @nvme_init_ns_head(%struct.nvme_ns*, i32, %struct.nvme_ns*) #2

declare dso_local i32 @nvme_setup_streams_ns(%struct.nvme_ctrl*, %struct.nvme_ns*) #2

declare dso_local i32 @nvme_set_disk_name(i8*, %struct.nvme_ns*, %struct.nvme_ctrl*, i32*) #2

declare dso_local %struct.gendisk* @alloc_disk_node(i32, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @__nvme_revalidate_disk(%struct.gendisk*, %struct.nvme_ns*) #2

declare dso_local i32 @nvme_nvm_register(%struct.nvme_ns*, i8*, i32) #2

declare dso_local i32 @dev_warn(i32, i8*) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @up_write(i32*) #2

declare dso_local i32 @nvme_get_ctrl(%struct.nvme_ctrl*) #2

declare dso_local i32 @device_add_disk(i32, %struct.gendisk*, i32) #2

declare dso_local i32 @nvme_mpath_add_disk(%struct.nvme_ns*, %struct.nvme_ns*) #2

declare dso_local i32 @nvme_fault_inject_init(i32*, i32) #2

declare dso_local i32 @kfree(%struct.nvme_ns*) #2

declare dso_local i32 @put_disk(%struct.gendisk*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @list_del_rcu(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @nvme_put_ns_head(i32) #2

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_16__*) #2

declare dso_local i32 @blk_status_to_errno(i32) #2

declare dso_local i32 @nvme_error_status(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
