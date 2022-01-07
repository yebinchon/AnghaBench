; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_alloc_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_alloc_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.nvmet_ctrl = type { i32, %struct.nvmet_ctrl*, %struct.nvmet_ctrl*, %struct.nvmet_ctrl*, i32, i32, i64, i32, %struct.nvmet_subsys*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvmet_subsys = type { i64, i32, i32, i64 }

@NVME_SC_CONNECT_INVALID_PARAM = common dso_local global i32 0, align 4
@NVME_SC_DNR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"connect request for invalid subsystem %s!\0A\00", align 1
@nvmet_config_sem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"connect by host %s for subsystem %s not allowed\0A\00", align 1
@NVME_SC_CONNECT_INVALID_HOST = common dso_local global i32 0, align 4
@NVME_SC_INTERNAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nvmet_async_event_work = common dso_local global i32 0, align 4
@nvmet_fatal_error_handler = common dso_local global i32 0, align 4
@NVMF_NQN_SIZE = common dso_local global i32 0, align 4
@NVMET_AEN_CFG_OPTIONAL = common dso_local global i32 0, align 4
@NVME_MAX_CHANGED_NAMESPACES = common dso_local global i32 0, align 4
@cntlid_ida = common dso_local global i32 0, align 4
@NVME_CNTLID_MIN = common dso_local global i32 0, align 4
@NVME_CNTLID_MAX = common dso_local global i32 0, align 4
@NVME_SC_CONNECT_CTRL_BUSY = common dso_local global i32 0, align 4
@NVME_NQN_DISC = common dso_local global i64 0, align 8
@NVMET_DISC_KATO_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_alloc_ctrl(i8* %0, i8* %1, %struct.nvmet_req* %2, i32 %3, %struct.nvmet_ctrl** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nvmet_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvmet_ctrl**, align 8
  %12 = alloca %struct.nvmet_subsys*, align 8
  %13 = alloca %struct.nvmet_ctrl*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.nvmet_req* %2, %struct.nvmet_req** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvmet_ctrl** %4, %struct.nvmet_ctrl*** %11, align 8
  %16 = load i32, i32* @NVME_SC_CONNECT_INVALID_PARAM, align 4
  %17 = load i32, i32* @NVME_SC_DNR, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %15, align 4
  %19 = load %struct.nvmet_req*, %struct.nvmet_req** %9, align 8
  %20 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.nvmet_subsys* @nvmet_find_get_subsys(i32 %21, i8* %22)
  store %struct.nvmet_subsys* %23, %struct.nvmet_subsys** %12, align 8
  %24 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %12, align 8
  %25 = icmp ne %struct.nvmet_subsys* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @IPO_IATTR_CONNECT_DATA(i8* %29)
  %31 = load %struct.nvmet_req*, %struct.nvmet_req** %9, align 8
  %32 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %30, i8** %35, align 8
  br label %238

36:                                               ; preds = %5
  %37 = load i32, i32* @NVME_SC_CONNECT_INVALID_PARAM, align 4
  %38 = load i32, i32* @NVME_SC_DNR, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %15, align 4
  %40 = call i32 @down_read(i32* @nvmet_config_sem)
  %41 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %12, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @nvmet_host_allowed(%struct.nvmet_subsys* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %36
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %46, i8* %47)
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @IPO_IATTR_CONNECT_DATA(i8* %49)
  %51 = load %struct.nvmet_req*, %struct.nvmet_req** %9, align 8
  %52 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i8* %50, i8** %55, align 8
  %56 = call i32 @up_read(i32* @nvmet_config_sem)
  %57 = load i32, i32* @NVME_SC_CONNECT_INVALID_HOST, align 4
  %58 = load i32, i32* @NVME_SC_DNR, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %15, align 4
  br label %235

60:                                               ; preds = %36
  %61 = call i32 @up_read(i32* @nvmet_config_sem)
  %62 = load i32, i32* @NVME_SC_INTERNAL, align 4
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.nvmet_ctrl* @kzalloc(i32 112, i32 %63)
  store %struct.nvmet_ctrl* %64, %struct.nvmet_ctrl** %13, align 8
  %65 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %66 = icmp ne %struct.nvmet_ctrl* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %235

68:                                               ; preds = %60
  %69 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %70 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %69, i32 0, i32 19
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %73 = call i32 @nvmet_init_cap(%struct.nvmet_ctrl* %72)
  %74 = load %struct.nvmet_req*, %struct.nvmet_req** %9, align 8
  %75 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %78 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %77, i32 0, i32 18
  store i32 %76, i32* %78, align 4
  %79 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %80 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %79, i32 0, i32 17
  %81 = load i32, i32* @nvmet_async_event_work, align 4
  %82 = call i32 @INIT_WORK(i32* %80, i32 %81)
  %83 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %84 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %83, i32 0, i32 16
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %87 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %86, i32 0, i32 15
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i32 @INIT_RADIX_TREE(i32* %87, i32 %88)
  %90 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %91 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %90, i32 0, i32 14
  %92 = load i32, i32* @nvmet_fatal_error_handler, align 4
  %93 = call i32 @INIT_WORK(i32* %91, i32 %92)
  %94 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %95 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %99 = call i32 @memcpy(i32 %96, i8* %97, i32 %98)
  %100 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %101 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %105 = call i32 @memcpy(i32 %102, i8* %103, i32 %104)
  %106 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %107 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %106, i32 0, i32 11
  %108 = call i32 @kref_init(i32* %107)
  %109 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %12, align 8
  %110 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %111 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %110, i32 0, i32 8
  store %struct.nvmet_subsys* %109, %struct.nvmet_subsys** %111, align 8
  %112 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %113 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @NVMET_AEN_CFG_OPTIONAL, align 4
  %116 = call i32 @WRITE_ONCE(i32 %114, i32 %115)
  %117 = load i32, i32* @NVME_MAX_CHANGED_NAMESPACES, align 4
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call %struct.nvmet_ctrl* @kmalloc_array(i32 %117, i32 4, i32 %118)
  %120 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %121 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %120, i32 0, i32 1
  store %struct.nvmet_ctrl* %119, %struct.nvmet_ctrl** %121, align 8
  %122 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %123 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %122, i32 0, i32 1
  %124 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %123, align 8
  %125 = icmp ne %struct.nvmet_ctrl* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %68
  br label %232

127:                                              ; preds = %68
  %128 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %12, align 8
  %129 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i8* @kcalloc(i64 %131, i32 8, i32 %132)
  %134 = bitcast i8* %133 to %struct.nvmet_ctrl*
  %135 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %136 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %135, i32 0, i32 2
  store %struct.nvmet_ctrl* %134, %struct.nvmet_ctrl** %136, align 8
  %137 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %138 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %137, i32 0, i32 2
  %139 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %138, align 8
  %140 = icmp ne %struct.nvmet_ctrl* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %127
  br label %227

142:                                              ; preds = %127
  %143 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %12, align 8
  %144 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 1
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i8* @kcalloc(i64 %146, i32 8, i32 %147)
  %149 = bitcast i8* %148 to %struct.nvmet_ctrl*
  %150 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %151 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %150, i32 0, i32 3
  store %struct.nvmet_ctrl* %149, %struct.nvmet_ctrl** %151, align 8
  %152 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %153 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %152, i32 0, i32 3
  %154 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %153, align 8
  %155 = icmp ne %struct.nvmet_ctrl* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %142
  br label %222

157:                                              ; preds = %142
  %158 = load i32, i32* @NVME_CNTLID_MIN, align 4
  %159 = load i32, i32* @NVME_CNTLID_MAX, align 4
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i32 @ida_simple_get(i32* @cntlid_ida, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i32, i32* @NVME_SC_CONNECT_CTRL_BUSY, align 4
  %166 = load i32, i32* @NVME_SC_DNR, align 4
  %167 = or i32 %165, %166
  store i32 %167, i32* %15, align 4
  br label %217

168:                                              ; preds = %157
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %171 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.nvmet_req*, %struct.nvmet_req** %9, align 8
  %173 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %176 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %175, i32 0, i32 9
  store i32 %174, i32* %176, align 8
  %177 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %178 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %177, i32 0, i32 8
  %179 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %178, align 8
  %180 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @NVME_NQN_DISC, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %168
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* @NVMET_DISC_KATO_MS, align 4
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %187, %184, %168
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @DIV_ROUND_UP(i32 %190, i32 1000)
  %192 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %193 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %192, i32 0, i32 7
  store i32 %191, i32* %193, align 8
  %194 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %195 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %194, i32 0, i32 6
  store i64 0, i64* %195, align 8
  %196 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %197 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %196, i32 0, i32 5
  %198 = call i32 @spin_lock_init(i32* %197)
  %199 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %200 = call i32 @nvmet_start_keep_alive_timer(%struct.nvmet_ctrl* %199)
  %201 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %12, align 8
  %202 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %201, i32 0, i32 1
  %203 = call i32 @mutex_lock(i32* %202)
  %204 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %205 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %204, i32 0, i32 4
  %206 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %12, align 8
  %207 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %206, i32 0, i32 2
  %208 = call i32 @list_add_tail(i32* %205, i32* %207)
  %209 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %210 = load %struct.nvmet_req*, %struct.nvmet_req** %9, align 8
  %211 = call i32 @nvmet_setup_p2p_ns_map(%struct.nvmet_ctrl* %209, %struct.nvmet_req* %210)
  %212 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %12, align 8
  %213 = getelementptr inbounds %struct.nvmet_subsys, %struct.nvmet_subsys* %212, i32 0, i32 1
  %214 = call i32 @mutex_unlock(i32* %213)
  %215 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %216 = load %struct.nvmet_ctrl**, %struct.nvmet_ctrl*** %11, align 8
  store %struct.nvmet_ctrl* %215, %struct.nvmet_ctrl** %216, align 8
  store i32 0, i32* %6, align 4
  br label %240

217:                                              ; preds = %164
  %218 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %219 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %218, i32 0, i32 3
  %220 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %219, align 8
  %221 = call i32 @kfree(%struct.nvmet_ctrl* %220)
  br label %222

222:                                              ; preds = %217, %156
  %223 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %224 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %223, i32 0, i32 2
  %225 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %224, align 8
  %226 = call i32 @kfree(%struct.nvmet_ctrl* %225)
  br label %227

227:                                              ; preds = %222, %141
  %228 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %229 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %228, i32 0, i32 1
  %230 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %229, align 8
  %231 = call i32 @kfree(%struct.nvmet_ctrl* %230)
  br label %232

232:                                              ; preds = %227, %126
  %233 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %13, align 8
  %234 = call i32 @kfree(%struct.nvmet_ctrl* %233)
  br label %235

235:                                              ; preds = %232, %67, %45
  %236 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %12, align 8
  %237 = call i32 @nvmet_subsys_put(%struct.nvmet_subsys* %236)
  br label %238

238:                                              ; preds = %235, %26
  %239 = load i32, i32* %15, align 4
  store i32 %239, i32* %6, align 4
  br label %240

240:                                              ; preds = %238, %189
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local %struct.nvmet_subsys* @nvmet_find_get_subsys(i32, i8*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i8* @IPO_IATTR_CONNECT_DATA(i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nvmet_host_allowed(%struct.nvmet_subsys*, i8*) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.nvmet_ctrl* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nvmet_init_cap(%struct.nvmet_ctrl*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local %struct.nvmet_ctrl* @kmalloc_array(i32, i32, i32) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nvmet_start_keep_alive_timer(%struct.nvmet_ctrl*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @nvmet_setup_p2p_ns_map(%struct.nvmet_ctrl*, %struct.nvmet_req*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.nvmet_ctrl*) #1

declare dso_local i32 @nvmet_subsys_put(%struct.nvmet_subsys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
