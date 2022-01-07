; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_create_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_create_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { %struct.nvmf_ctrl_options*, i32, i64, i32, i64, i32 }
%struct.device = type { i32 }
%struct.nvmf_ctrl_options = type { i32, i32, i32, i64, i64, i64, i64, i32, i32, i32*, i32 }
%struct.nvme_rdma_ctrl = type { %struct.nvme_rdma_ctrl*, %struct.nvme_ctrl, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVMF_OPT_TRSVCID = common dso_local global i32 0, align 4
@NVME_RDMA_IP_PORT = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"malformed address passed: %s:%s\0A\00", align 1
@NVMF_OPT_HOST_TRADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"malformed src address passed: %s\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@nvme_rdma_reconnect_ctrl_work = common dso_local global i32 0, align 4
@nvme_rdma_error_recovery_work = common dso_local global i32 0, align 4
@nvme_rdma_reset_ctrl_work = common dso_local global i32 0, align 4
@nvme_rdma_ctrl_ops = common dso_local global i32 0, align 4
@NVME_CTRL_CONNECTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"new ctrl: NQN \22%s\22, addr %pISpcs\0A\00", align 1
@nvme_rdma_ctrl_mutex = common dso_local global i32 0, align 4
@nvme_rdma_ctrl_list = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvme_ctrl* (%struct.device*, %struct.nvmf_ctrl_options*)* @nvme_rdma_create_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvme_ctrl* @nvme_rdma_create_ctrl(%struct.device* %0, %struct.nvmf_ctrl_options* %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nvmf_ctrl_options*, align 8
  %6 = alloca %struct.nvme_rdma_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nvmf_ctrl_options* %1, %struct.nvmf_ctrl_options** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nvme_rdma_ctrl* @kzalloc(i32 80, i32 %9)
  store %struct.nvme_rdma_ctrl* %10, %struct.nvme_rdma_ctrl** %6, align 8
  %11 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %12 = icmp ne %struct.nvme_rdma_ctrl* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.nvme_ctrl* @ERR_PTR(i32 %15)
  store %struct.nvme_ctrl* %16, %struct.nvme_ctrl** %3, align 8
  br label %236

17:                                               ; preds = %2
  %18 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %19 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %20 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %20, i32 0, i32 0
  store %struct.nvmf_ctrl_options* %18, %struct.nvmf_ctrl_options** %21, align 8
  %22 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %23 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %22, i32 0, i32 2
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %26 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NVMF_OPT_TRSVCID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %17
  %32 = load i32, i32* @NVME_RDMA_IP_PORT, align 4
  %33 = call i32 @__stringify(i32 %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kstrdup(i32 %33, i32 %34)
  %36 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %37 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %36, i32 0, i32 9
  store i32* %35, i32** %37, align 8
  %38 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %39 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %38, i32 0, i32 9
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %231

45:                                               ; preds = %31
  %46 = load i32, i32* @NVMF_OPT_TRSVCID, align 4
  %47 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %48 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %17
  %52 = load i32, i32* @AF_UNSPEC, align 4
  %53 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %54 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %57 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %56, i32 0, i32 9
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %60 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %59, i32 0, i32 3
  %61 = call i32 @inet_pton_with_scope(i32* @init_net, i32 %52, i32 %55, i32* %58, i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %51
  %65 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %66 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %69 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %68, i32 0, i32 9
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %67, i32* %70)
  br label %231

72:                                               ; preds = %51
  %73 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %74 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NVMF_OPT_HOST_TRADDR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %72
  %80 = load i32, i32* @AF_UNSPEC, align 4
  %81 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %82 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %85 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %84, i32 0, i32 6
  %86 = call i32 @inet_pton_with_scope(i32* @init_net, i32 %80, i32 %83, i32* null, i32* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %79
  %90 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %91 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %231

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %72
  %96 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %97 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %102 = call i64 @nvme_rdma_existing_controller(%struct.nvmf_ctrl_options* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @EALREADY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %231

107:                                              ; preds = %100, %95
  %108 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %109 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %108, i32 0, i32 5
  %110 = load i32, i32* @nvme_rdma_reconnect_ctrl_work, align 4
  %111 = call i32 @INIT_DELAYED_WORK(i32* %109, i32 %110)
  %112 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %113 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %112, i32 0, i32 4
  %114 = load i32, i32* @nvme_rdma_error_recovery_work, align 4
  %115 = call i32 @INIT_WORK(i32* %113, i32 %114)
  %116 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %117 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %117, i32 0, i32 5
  %119 = load i32, i32* @nvme_rdma_reset_ctrl_work, align 4
  %120 = call i32 @INIT_WORK(i32* %118, i32 %119)
  %121 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %122 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %125 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %129 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %127, %130
  %132 = add nsw i64 %131, 1
  %133 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %134 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %134, i32 0, i32 2
  store i64 %132, i64* %135, align 8
  %136 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %137 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %138, 1
  %140 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %141 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %141, i32 0, i32 4
  store i64 %139, i64* %142, align 8
  %143 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %144 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %147 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %147, i32 0, i32 3
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %7, align 4
  %151 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %152 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call %struct.nvme_rdma_ctrl* @kcalloc(i64 %154, i32 80, i32 %155)
  %157 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %158 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %157, i32 0, i32 0
  store %struct.nvme_rdma_ctrl* %156, %struct.nvme_rdma_ctrl** %158, align 8
  %159 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %160 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %159, i32 0, i32 0
  %161 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %160, align 8
  %162 = icmp ne %struct.nvme_rdma_ctrl* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %107
  br label %231

164:                                              ; preds = %107
  %165 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %166 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %165, i32 0, i32 1
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = call i32 @nvme_init_ctrl(%struct.nvme_ctrl* %166, %struct.device* %167, i32* @nvme_rdma_ctrl_ops, i32 0)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %226

172:                                              ; preds = %164
  %173 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %174 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %173, i32 0, i32 1
  %175 = load i32, i32* @NVME_CTRL_CONNECTING, align 4
  %176 = call i32 @nvme_change_ctrl_state(%struct.nvme_ctrl* %174, i32 %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i32 @WARN_ON_ONCE(i32 %180)
  %182 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %183 = call i32 @nvme_rdma_setup_ctrl(%struct.nvme_rdma_ctrl* %182, i32 1)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %172
  br label %211

187:                                              ; preds = %172
  %188 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %189 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %193 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %193, i32 0, i32 0
  %195 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %194, align 8
  %196 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %199 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %198, i32 0, i32 3
  %200 = call i32 @dev_info(i32 %191, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %197, i32* %199)
  %201 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %202 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %201, i32 0, i32 1
  %203 = call i32 @nvme_get_ctrl(%struct.nvme_ctrl* %202)
  %204 = call i32 @mutex_lock(i32* @nvme_rdma_ctrl_mutex)
  %205 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %206 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %205, i32 0, i32 2
  %207 = call i32 @list_add_tail(i32* %206, i32* @nvme_rdma_ctrl_list)
  %208 = call i32 @mutex_unlock(i32* @nvme_rdma_ctrl_mutex)
  %209 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %210 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %209, i32 0, i32 1
  store %struct.nvme_ctrl* %210, %struct.nvme_ctrl** %3, align 8
  br label %236

211:                                              ; preds = %186
  %212 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %213 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %212, i32 0, i32 1
  %214 = call i32 @nvme_uninit_ctrl(%struct.nvme_ctrl* %213)
  %215 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %216 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %215, i32 0, i32 1
  %217 = call i32 @nvme_put_ctrl(%struct.nvme_ctrl* %216)
  %218 = load i32, i32* %7, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %211
  %221 = load i32, i32* @EIO, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %220, %211
  %224 = load i32, i32* %7, align 4
  %225 = call %struct.nvme_ctrl* @ERR_PTR(i32 %224)
  store %struct.nvme_ctrl* %225, %struct.nvme_ctrl** %3, align 8
  br label %236

226:                                              ; preds = %171
  %227 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %228 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %227, i32 0, i32 0
  %229 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %228, align 8
  %230 = call i32 @kfree(%struct.nvme_rdma_ctrl* %229)
  br label %231

231:                                              ; preds = %226, %163, %104, %89, %64, %42
  %232 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %233 = call i32 @kfree(%struct.nvme_rdma_ctrl* %232)
  %234 = load i32, i32* %7, align 4
  %235 = call %struct.nvme_ctrl* @ERR_PTR(i32 %234)
  store %struct.nvme_ctrl* %235, %struct.nvme_ctrl** %3, align 8
  br label %236

236:                                              ; preds = %231, %223, %187, %13
  %237 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  ret %struct.nvme_ctrl* %237
}

declare dso_local %struct.nvme_rdma_ctrl* @kzalloc(i32, i32) #1

declare dso_local %struct.nvme_ctrl* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @kstrdup(i32, i32) #1

declare dso_local i32 @__stringify(i32) #1

declare dso_local i32 @inet_pton_with_scope(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @nvme_rdma_existing_controller(%struct.nvmf_ctrl_options*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.nvme_rdma_ctrl* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @nvme_init_ctrl(%struct.nvme_ctrl*, %struct.device*, i32*, i32) #1

declare dso_local i32 @nvme_change_ctrl_state(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nvme_rdma_setup_ctrl(%struct.nvme_rdma_ctrl*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32*) #1

declare dso_local i32 @nvme_get_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvme_uninit_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_put_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @kfree(%struct.nvme_rdma_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
