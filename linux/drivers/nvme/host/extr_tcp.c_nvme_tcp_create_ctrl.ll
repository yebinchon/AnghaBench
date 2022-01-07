; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_create_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_create_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { %struct.nvmf_ctrl_options*, i32, i64, i32, i32, i64 }
%struct.device = type { i32 }
%struct.nvmf_ctrl_options = type { i32, i32, i32, i32, i32*, i32, i32, i64, i64, i64, i64 }
%struct.nvme_tcp_ctrl = type { %struct.nvme_tcp_ctrl*, %struct.nvme_ctrl, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvme_tcp_reconnect_ctrl_work = common dso_local global i32 0, align 4
@nvme_tcp_error_recovery_work = common dso_local global i32 0, align 4
@nvme_reset_ctrl_work = common dso_local global i32 0, align 4
@NVMF_OPT_TRSVCID = common dso_local global i32 0, align 4
@NVME_TCP_DISC_PORT = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"malformed address passed: %s:%s\0A\00", align 1
@NVMF_OPT_HOST_TRADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"malformed src address passed: %s\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@nvme_tcp_ctrl_ops = common dso_local global i32 0, align 4
@NVME_CTRL_CONNECTING = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"new ctrl: NQN \22%s\22, addr %pISp\0A\00", align 1
@nvme_tcp_ctrl_mutex = common dso_local global i32 0, align 4
@nvme_tcp_ctrl_list = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvme_ctrl* (%struct.device*, %struct.nvmf_ctrl_options*)* @nvme_tcp_create_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvme_ctrl* @nvme_tcp_create_ctrl(%struct.device* %0, %struct.nvmf_ctrl_options* %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nvmf_ctrl_options*, align 8
  %6 = alloca %struct.nvme_tcp_ctrl*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nvmf_ctrl_options* %1, %struct.nvmf_ctrl_options** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nvme_tcp_ctrl* @kzalloc(i32 72, i32 %8)
  store %struct.nvme_tcp_ctrl* %9, %struct.nvme_tcp_ctrl** %6, align 8
  %10 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %11 = icmp ne %struct.nvme_tcp_ctrl* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.nvme_ctrl* @ERR_PTR(i32 %14)
  store %struct.nvme_ctrl* %15, %struct.nvme_ctrl** %3, align 8
  br label %237

16:                                               ; preds = %2
  %17 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %18 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %17, i32 0, i32 2
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %21 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %22 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %22, i32 0, i32 0
  store %struct.nvmf_ctrl_options* %20, %struct.nvmf_ctrl_options** %23, align 8
  %24 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %25 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %24, i32 0, i32 10
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %28 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %32 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = add nsw i64 %34, 1
  %36 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %37 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %37, i32 0, i32 2
  store i64 %35, i64* %38, align 8
  %39 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %40 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %44 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %44, i32 0, i32 5
  store i64 %42, i64* %45, align 8
  %46 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %47 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %50 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 4
  %52 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %53 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %52, i32 0, i32 6
  %54 = load i32, i32* @nvme_tcp_reconnect_ctrl_work, align 4
  %55 = call i32 @INIT_DELAYED_WORK(i32* %53, i32 %54)
  %56 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %57 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %56, i32 0, i32 5
  %58 = load i32, i32* @nvme_tcp_error_recovery_work, align 4
  %59 = call i32 @INIT_WORK(i32* %57, i32 %58)
  %60 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %61 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %61, i32 0, i32 3
  %63 = load i32, i32* @nvme_reset_ctrl_work, align 4
  %64 = call i32 @INIT_WORK(i32* %62, i32 %63)
  %65 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %66 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NVMF_OPT_TRSVCID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %16
  %72 = load i32, i32* @NVME_TCP_DISC_PORT, align 4
  %73 = call i32 @__stringify(i32 %72)
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32* @kstrdup(i32 %73, i32 %74)
  %76 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %77 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  %78 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %79 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %71
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %232

85:                                               ; preds = %71
  %86 = load i32, i32* @NVMF_OPT_TRSVCID, align 4
  %87 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %88 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %16
  %92 = load i32, i32* @AF_UNSPEC, align 4
  %93 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %94 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %97 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %100 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %99, i32 0, i32 3
  %101 = call i32 @inet_pton_with_scope(i32* @init_net, i32 %92, i32 %95, i32* %98, i32* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %91
  %105 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %106 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %109 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %107, i32* %110)
  br label %232

112:                                              ; preds = %91
  %113 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %114 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @NVMF_OPT_HOST_TRADDR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %112
  %120 = load i32, i32* @AF_UNSPEC, align 4
  %121 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %122 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %125 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %124, i32 0, i32 4
  %126 = call i32 @inet_pton_with_scope(i32* @init_net, i32 %120, i32 %123, i32* null, i32* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %119
  %130 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %131 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  br label %232

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134, %112
  %136 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %137 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %135
  %141 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %5, align 8
  %142 = call i64 @nvme_tcp_existing_controller(%struct.nvmf_ctrl_options* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* @EALREADY, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  br label %232

147:                                              ; preds = %140, %135
  %148 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %149 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call %struct.nvme_tcp_ctrl* @kcalloc(i64 %151, i32 72, i32 %152)
  %154 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %155 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %154, i32 0, i32 0
  store %struct.nvme_tcp_ctrl* %153, %struct.nvme_tcp_ctrl** %155, align 8
  %156 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %157 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %156, i32 0, i32 0
  %158 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %157, align 8
  %159 = icmp ne %struct.nvme_tcp_ctrl* %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %147
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %7, align 4
  br label %232

163:                                              ; preds = %147
  %164 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %165 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %164, i32 0, i32 1
  %166 = load %struct.device*, %struct.device** %4, align 8
  %167 = call i32 @nvme_init_ctrl(%struct.nvme_ctrl* %165, %struct.device* %166, i32* @nvme_tcp_ctrl_ops, i32 0)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %227

171:                                              ; preds = %163
  %172 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %173 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %172, i32 0, i32 1
  %174 = load i32, i32* @NVME_CTRL_CONNECTING, align 4
  %175 = call i32 @nvme_change_ctrl_state(%struct.nvme_ctrl* %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %171
  %178 = call i32 @WARN_ON_ONCE(i32 1)
  %179 = load i32, i32* @EINTR, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %7, align 4
  br label %212

181:                                              ; preds = %171
  %182 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %183 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %182, i32 0, i32 1
  %184 = call i32 @nvme_tcp_setup_ctrl(%struct.nvme_ctrl* %183, i32 1)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %212

188:                                              ; preds = %181
  %189 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %190 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %194 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %194, i32 0, i32 0
  %196 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %195, align 8
  %197 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %200 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %199, i32 0, i32 3
  %201 = call i32 @dev_info(i32 %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %198, i32* %200)
  %202 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %203 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %202, i32 0, i32 1
  %204 = call i32 @nvme_get_ctrl(%struct.nvme_ctrl* %203)
  %205 = call i32 @mutex_lock(i32* @nvme_tcp_ctrl_mutex)
  %206 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %207 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %206, i32 0, i32 2
  %208 = call i32 @list_add_tail(i32* %207, i32* @nvme_tcp_ctrl_list)
  %209 = call i32 @mutex_unlock(i32* @nvme_tcp_ctrl_mutex)
  %210 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %211 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %210, i32 0, i32 1
  store %struct.nvme_ctrl* %211, %struct.nvme_ctrl** %3, align 8
  br label %237

212:                                              ; preds = %187, %177
  %213 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %214 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %213, i32 0, i32 1
  %215 = call i32 @nvme_uninit_ctrl(%struct.nvme_ctrl* %214)
  %216 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %217 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %216, i32 0, i32 1
  %218 = call i32 @nvme_put_ctrl(%struct.nvme_ctrl* %217)
  %219 = load i32, i32* %7, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %212
  %222 = load i32, i32* @EIO, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %7, align 4
  br label %224

224:                                              ; preds = %221, %212
  %225 = load i32, i32* %7, align 4
  %226 = call %struct.nvme_ctrl* @ERR_PTR(i32 %225)
  store %struct.nvme_ctrl* %226, %struct.nvme_ctrl** %3, align 8
  br label %237

227:                                              ; preds = %170
  %228 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %229 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %228, i32 0, i32 0
  %230 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %229, align 8
  %231 = call i32 @kfree(%struct.nvme_tcp_ctrl* %230)
  br label %232

232:                                              ; preds = %227, %160, %144, %129, %104, %82
  %233 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  %234 = call i32 @kfree(%struct.nvme_tcp_ctrl* %233)
  %235 = load i32, i32* %7, align 4
  %236 = call %struct.nvme_ctrl* @ERR_PTR(i32 %235)
  store %struct.nvme_ctrl* %236, %struct.nvme_ctrl** %3, align 8
  br label %237

237:                                              ; preds = %232, %224, %188, %12
  %238 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  ret %struct.nvme_ctrl* %238
}

declare dso_local %struct.nvme_tcp_ctrl* @kzalloc(i32, i32) #1

declare dso_local %struct.nvme_ctrl* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32* @kstrdup(i32, i32) #1

declare dso_local i32 @__stringify(i32) #1

declare dso_local i32 @inet_pton_with_scope(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @nvme_tcp_existing_controller(%struct.nvmf_ctrl_options*) #1

declare dso_local %struct.nvme_tcp_ctrl* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @nvme_init_ctrl(%struct.nvme_ctrl*, %struct.device*, i32*, i32) #1

declare dso_local i32 @nvme_change_ctrl_state(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nvme_tcp_setup_ctrl(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32*) #1

declare dso_local i32 @nvme_get_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvme_uninit_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_put_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @kfree(%struct.nvme_tcp_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
