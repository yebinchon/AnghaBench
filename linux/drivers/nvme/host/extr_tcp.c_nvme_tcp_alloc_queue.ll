; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linger = type { i32, i32 }
%struct.nvme_ctrl = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }
%struct.nvme_tcp_ctrl = type { %struct.TYPE_10__, i32, %struct.nvme_tcp_queue* }
%struct.TYPE_10__ = type { i32 }
%struct.nvme_tcp_queue = type { i64, i32, i32, %struct.TYPE_12__*, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32*, i32, i32, i32, i32, %struct.nvme_tcp_ctrl* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.nvme_tcp_queue*, i32 }
%struct.sockaddr = type { i32 }

@__const.nvme_tcp_alloc_queue.sol = private unnamed_addr constant %struct.linger { i32 1, i32 0 }, align 4
@nvme_tcp_io_work = common dso_local global i32 0, align 4
@NVME_TCP_ADMIN_CCSZ = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create socket: %d\0A\00", align 1
@TCP_SYNCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to set TCP_SYNCNT sock opt %d\0A\00", align 1
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to set TCP_NODELAY sock opt %d\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to set SO_LINGER sock opt %d\0A\00", align 1
@SOL_IP = common dso_local global i32 0, align 4
@IP_TOS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to set IP_TOS sock opt %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@NVMF_OPT_HOST_TRADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to bind queue %d socket %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to allocate queue %d crypto\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"connecting queue %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to connect socket: %d\0A\00", align 1
@NVME_TCP_Q_ALLOCATED = common dso_local global i32 0, align 4
@nvme_tcp_data_ready = common dso_local global i32 0, align 4
@nvme_tcp_state_change = common dso_local global i32 0, align 4
@nvme_tcp_write_space = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32, i64)* @nvme_tcp_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_alloc_queue(%struct.nvme_ctrl* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvme_tcp_ctrl*, align 8
  %9 = alloca %struct.nvme_tcp_queue*, align 8
  %10 = alloca %struct.linger, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %16 = call %struct.nvme_tcp_ctrl* @to_tcp_ctrl(%struct.nvme_ctrl* %15)
  store %struct.nvme_tcp_ctrl* %16, %struct.nvme_tcp_ctrl** %8, align 8
  %17 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %8, align 8
  %18 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %17, i32 0, i32 2
  %19 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %19, i64 %21
  store %struct.nvme_tcp_queue* %22, %struct.nvme_tcp_queue** %9, align 8
  %23 = bitcast %struct.linger* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.linger* @__const.nvme_tcp_alloc_queue.sol to i8*), i64 8, i1 false)
  %24 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %8, align 8
  %25 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %25, i32 0, i32 20
  store %struct.nvme_tcp_ctrl* %24, %struct.nvme_tcp_ctrl** %26, align 8
  %27 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %28 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %27, i32 0, i32 19
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %31 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %30, i32 0, i32 18
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %34 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %33, i32 0, i32 17
  %35 = load i32, i32* @nvme_tcp_io_work, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %39 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %3
  %43 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %44 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 16
  %47 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %48 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %56

49:                                               ; preds = %3
  %50 = load i32, i32* @NVME_TCP_ADMIN_CCSZ, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %55 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %8, align 8
  %58 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SOCK_STREAM, align 4
  %62 = load i32, i32* @IPPROTO_TCP, align 4
  %63 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %64 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %63, i32 0, i32 3
  %65 = call i32 @sock_create(i32 %60, i32 %61, i32 %62, %struct.TYPE_12__** %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %56
  %69 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %70 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %410

75:                                               ; preds = %56
  store i32 1, i32* %12, align 4
  %76 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %77 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %76, i32 0, i32 3
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i32, i32* @IPPROTO_TCP, align 4
  %80 = load i32, i32* @TCP_SYNCNT, align 4
  %81 = bitcast i32* %12 to i8*
  %82 = call i32 @kernel_setsockopt(%struct.TYPE_12__* %78, i32 %79, i32 %80, i8* %81, i32 4)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %87 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %402

91:                                               ; preds = %75
  store i32 1, i32* %12, align 4
  %92 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %93 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %92, i32 0, i32 3
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* @IPPROTO_TCP, align 4
  %96 = load i32, i32* @TCP_NODELAY, align 4
  %97 = bitcast i32* %12 to i8*
  %98 = call i32 @kernel_setsockopt(%struct.TYPE_12__* %94, i32 %95, i32 %96, i8* %97, i32 4)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %91
  %102 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %103 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %402

107:                                              ; preds = %91
  %108 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %109 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %108, i32 0, i32 3
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* @SOL_SOCKET, align 4
  %112 = load i32, i32* @SO_LINGER, align 4
  %113 = bitcast %struct.linger* %10 to i8*
  %114 = call i32 @kernel_setsockopt(%struct.TYPE_12__* %110, i32 %111, i32 %112, i8* %113, i32 8)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %107
  %118 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %119 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %402

123:                                              ; preds = %107
  %124 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %125 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %124, i32 0, i32 2
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %123
  %131 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %132 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %131, i32 0, i32 2
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %12, align 4
  %136 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %137 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %136, i32 0, i32 3
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = load i32, i32* @SOL_IP, align 4
  %140 = load i32, i32* @IP_TOS, align 4
  %141 = bitcast i32* %12 to i8*
  %142 = call i32 @kernel_setsockopt(%struct.TYPE_12__* %138, i32 %139, i32 %140, i8* %141, i32 4)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %130
  %146 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %147 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  br label %402

151:                                              ; preds = %130
  br label %152

152:                                              ; preds = %151, %123
  %153 = load i32, i32* @GFP_ATOMIC, align 4
  %154 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %155 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %154, i32 0, i32 3
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 6
  store i32 %153, i32* %159, align 8
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %152
  store i32 0, i32* %14, align 4
  br label %168

163:                                              ; preds = %152
  %164 = load i32, i32* %6, align 4
  %165 = sub nsw i32 %164, 1
  %166 = call i32 (...) @num_online_cpus()
  %167 = srem i32 %165, %166
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %163, %162
  %169 = load i32, i32* %14, align 4
  %170 = sub nsw i32 %169, 1
  %171 = load i32, i32* @cpu_online_mask, align 4
  %172 = call i32 @cpumask_next_wrap(i32 %170, i32 %171, i32 -1, i32 0)
  %173 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %174 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %173, i32 0, i32 16
  store i32 %172, i32* %174, align 8
  %175 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %176 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %175, i32 0, i32 15
  store i32* null, i32** %176, align 8
  %177 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %178 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %177, i32 0, i32 14
  store i64 0, i64* %178, align 8
  %179 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %180 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %179, i32 0, i32 13
  store i64 0, i64* %180, align 8
  %181 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %182 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %181, i32 0, i32 12
  store i64 0, i64* %182, align 8
  %183 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %184 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %183, i32 0, i32 11
  store i64 0, i64* %184, align 8
  %185 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %186 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %185, i32 0, i32 3
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = call i32 @sk_set_memalloc(%struct.TYPE_13__* %189)
  %191 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %192 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %191, i32 0, i32 2
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @NVMF_OPT_HOST_TRADDR, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %168
  %200 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %201 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %200, i32 0, i32 3
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %8, align 8
  %204 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %203, i32 0, i32 1
  %205 = bitcast i32* %204 to %struct.sockaddr*
  %206 = call i32 @kernel_bind(%struct.TYPE_12__* %202, %struct.sockaddr* %205, i32 4)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %199
  %210 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %211 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %212, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %213, i32 %214)
  br label %402

216:                                              ; preds = %199
  br label %217

217:                                              ; preds = %216, %168
  %218 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %219 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %218, i32 0, i32 2
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %224 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %223, i32 0, i32 5
  store i64 %222, i64* %224, align 8
  %225 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %226 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %225, i32 0, i32 2
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %231 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %230, i32 0, i32 4
  store i64 %229, i64* %231, align 8
  %232 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %233 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %217
  %237 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %238 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %236, %217
  %242 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %243 = call i32 @nvme_tcp_alloc_crypto(%struct.nvme_tcp_queue* %242)
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %241
  %247 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %248 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %249, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %250)
  br label %402

252:                                              ; preds = %241
  br label %253

253:                                              ; preds = %252, %236
  %254 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %255 = call i32 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue* %254)
  %256 = sext i32 %255 to i64
  %257 = add i64 4, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %13, align 4
  %259 = load i32, i32* %13, align 4
  %260 = load i32, i32* @GFP_KERNEL, align 4
  %261 = call i32 @kmalloc(i32 %259, i32 %260)
  %262 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %263 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %262, i32 0, i32 6
  store i32 %261, i32* %263, align 8
  %264 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %265 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %253
  %269 = load i32, i32* @ENOMEM, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %11, align 4
  br label %388

271:                                              ; preds = %253
  %272 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %273 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %276 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %275)
  %277 = call i32 @dev_dbg(i32 %274, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %276)
  %278 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %279 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %278, i32 0, i32 3
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %279, align 8
  %281 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %8, align 8
  %282 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %281, i32 0, i32 0
  %283 = bitcast %struct.TYPE_10__* %282 to %struct.sockaddr*
  %284 = call i32 @kernel_connect(%struct.TYPE_12__* %280, %struct.sockaddr* %283, i32 4, i32 0)
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %271
  %288 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %289 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %11, align 4
  %292 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %290, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %291)
  br label %383

293:                                              ; preds = %271
  %294 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %295 = call i32 @nvme_tcp_init_connection(%struct.nvme_tcp_queue* %294)
  store i32 %295, i32* %11, align 4
  %296 = load i32, i32* %11, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  br label %377

299:                                              ; preds = %293
  %300 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %301 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %300, i32 0, i32 2
  store i32 1, i32* %301, align 4
  %302 = load i32, i32* @NVME_TCP_Q_ALLOCATED, align 4
  %303 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %304 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %303, i32 0, i32 10
  %305 = call i32 @set_bit(i32 %302, i32* %304)
  %306 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %307 = call i32 @nvme_tcp_init_recv_ctx(%struct.nvme_tcp_queue* %306)
  %308 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %309 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %308, i32 0, i32 3
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 1
  %314 = call i32 @write_lock_bh(i32* %313)
  %315 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %316 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %317 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %316, i32 0, i32 3
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 5
  store %struct.nvme_tcp_queue* %315, %struct.nvme_tcp_queue** %321, align 8
  %322 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %323 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %322, i32 0, i32 3
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %330 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %329, i32 0, i32 9
  store i32 %328, i32* %330, align 4
  %331 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %332 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %331, i32 0, i32 3
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %339 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %338, i32 0, i32 8
  store i32 %337, i32* %339, align 8
  %340 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %341 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %340, i32 0, i32 3
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %348 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %347, i32 0, i32 7
  store i32 %346, i32* %348, align 4
  %349 = load i32, i32* @nvme_tcp_data_ready, align 4
  %350 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %351 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %350, i32 0, i32 3
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 4
  store i32 %349, i32* %355, align 8
  %356 = load i32, i32* @nvme_tcp_state_change, align 4
  %357 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %358 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %357, i32 0, i32 3
  %359 = load %struct.TYPE_12__*, %struct.TYPE_12__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 3
  store i32 %356, i32* %362, align 4
  %363 = load i32, i32* @nvme_tcp_write_space, align 4
  %364 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %365 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %364, i32 0, i32 3
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 0
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 2
  store i32 %363, i32* %369, align 8
  %370 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %371 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %370, i32 0, i32 3
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 1
  %376 = call i32 @write_unlock_bh(i32* %375)
  store i32 0, i32* %4, align 4
  br label %410

377:                                              ; preds = %298
  %378 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %379 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %378, i32 0, i32 3
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %379, align 8
  %381 = load i32, i32* @SHUT_RDWR, align 4
  %382 = call i32 @kernel_sock_shutdown(%struct.TYPE_12__* %380, i32 %381)
  br label %383

383:                                              ; preds = %377, %287
  %384 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %385 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @kfree(i32 %386)
  br label %388

388:                                              ; preds = %383, %268
  %389 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %390 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %389, i32 0, i32 5
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %398, label %393

393:                                              ; preds = %388
  %394 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %395 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %394, i32 0, i32 4
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %393, %388
  %399 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %400 = call i32 @nvme_tcp_free_crypto(%struct.nvme_tcp_queue* %399)
  br label %401

401:                                              ; preds = %398, %393
  br label %402

402:                                              ; preds = %401, %246, %209, %145, %117, %101, %85
  %403 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %404 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %403, i32 0, i32 3
  %405 = load %struct.TYPE_12__*, %struct.TYPE_12__** %404, align 8
  %406 = call i32 @sock_release(%struct.TYPE_12__* %405)
  %407 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  %408 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %407, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %408, align 8
  %409 = load i32, i32* %11, align 4
  store i32 %409, i32* %4, align 4
  br label %410

410:                                              ; preds = %402, %299, %68
  %411 = load i32, i32* %4, align 4
  ret i32 %411
}

declare dso_local %struct.nvme_tcp_ctrl* @to_tcp_ctrl(%struct.nvme_ctrl*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @sock_create(i32, i32, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @kernel_setsockopt(%struct.TYPE_12__*, i32, i32, i8*, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @cpumask_next_wrap(i32, i32, i32, i32) #1

declare dso_local i32 @sk_set_memalloc(%struct.TYPE_13__*) #1

declare dso_local i32 @kernel_bind(%struct.TYPE_12__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @nvme_tcp_alloc_crypto(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @kernel_connect(%struct.TYPE_12__*, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @nvme_tcp_init_connection(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nvme_tcp_init_recv_ctx(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kernel_sock_shutdown(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @nvme_tcp_free_crypto(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @sock_release(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
