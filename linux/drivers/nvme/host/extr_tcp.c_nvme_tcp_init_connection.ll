; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_init_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_queue = type { i64, i64, i32 }
%struct.nvme_tcp_icreq_pdu = type { i64, i32, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i32, i64, i64 }
%struct.nvme_tcp_icresp_pdu = type { i64, i32, i64, %struct.TYPE_2__, i64, i64 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i32, %struct.nvme_tcp_icresp_pdu* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvme_tcp_icreq = common dso_local global i64 0, align 8
@NVME_TCP_PFV_1_0 = common dso_local global i64 0, align 8
@NVME_TCP_HDR_DIGEST_ENABLE = common dso_local global i32 0, align 4
@NVME_TCP_DATA_DIGEST_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nvme_tcp_icresp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"queue %d: bad type returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"queue %d: bad pdu length returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"queue %d: bad pfv returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"queue %d: data digest mismatch host: %s ctrl: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"queue %d: header digest mismatch host: %s ctrl: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"queue %d: unsupported cpda returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_queue*)* @nvme_tcp_init_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_init_connection(%struct.nvme_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_tcp_queue*, align 8
  %4 = alloca %struct.nvme_tcp_icreq_pdu*, align 8
  %5 = alloca %struct.nvme_tcp_icresp_pdu*, align 8
  %6 = alloca %struct.msghdr, align 4
  %7 = alloca %struct.kvec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %3, align 8
  %11 = bitcast %struct.msghdr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nvme_tcp_icresp_pdu* @kzalloc(i32 72, i32 %12)
  %14 = bitcast %struct.nvme_tcp_icresp_pdu* %13 to %struct.nvme_tcp_icreq_pdu*
  store %struct.nvme_tcp_icreq_pdu* %14, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %15 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %16 = icmp ne %struct.nvme_tcp_icreq_pdu* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %253

20:                                               ; preds = %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.nvme_tcp_icresp_pdu* @kzalloc(i32 72, i32 %21)
  store %struct.nvme_tcp_icresp_pdu* %22, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %23 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %24 = icmp ne %struct.nvme_tcp_icresp_pdu* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %248

28:                                               ; preds = %20
  %29 = load i64, i64* @nvme_tcp_icreq, align 8
  %30 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %31 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %34 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 72, i32* %35, align 8
  %36 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %37 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %40 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @cpu_to_le32(i32 %42)
  %44 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %45 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* @NVME_TCP_PFV_1_0, align 8
  %48 = call i64 @cpu_to_le16(i64 %47)
  %49 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %52 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %54 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %28
  %60 = load i32, i32* @NVME_TCP_HDR_DIGEST_ENABLE, align 4
  %61 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %62 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %28
  %66 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %67 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @NVME_TCP_DATA_DIGEST_ENABLE, align 4
  %72 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %73 = getelementptr inbounds %struct.nvme_tcp_icreq_pdu, %struct.nvme_tcp_icreq_pdu* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %78 = bitcast %struct.nvme_tcp_icreq_pdu* %77 to %struct.nvme_tcp_icresp_pdu*
  %79 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 1
  store %struct.nvme_tcp_icresp_pdu* %78, %struct.nvme_tcp_icresp_pdu** %79, align 8
  %80 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  store i32 72, i32* %80, align 8
  %81 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %82 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @kernel_sendmsg(i32 %83, %struct.msghdr* %6, %struct.kvec* %7, i32 1, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %245

90:                                               ; preds = %76
  %91 = call i32 @memset(%struct.msghdr* %6, i32 0, i32 4)
  %92 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %93 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 1
  store %struct.nvme_tcp_icresp_pdu* %92, %struct.nvme_tcp_icresp_pdu** %93, align 8
  %94 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  store i32 72, i32* %94, align 8
  %95 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %96 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @kernel_recvmsg(i32 %97, %struct.msghdr* %6, %struct.kvec* %7, i32 1, i32 %99, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  br label %245

106:                                              ; preds = %90
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %10, align 4
  %109 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %110 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @nvme_tcp_icresp, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %106
  %116 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %117 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %116)
  %118 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %119 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i8*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %117, i64 %121)
  br label %245

123:                                              ; preds = %106
  %124 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %125 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @le32_to_cpu(i64 %127)
  %129 = sext i32 %128 to i64
  %130 = icmp ne i64 %129, 72
  br i1 %130, label %131, label %139

131:                                              ; preds = %123
  %132 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %133 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %132)
  %134 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %135 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i32 (i8*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %133, i64 %137)
  br label %245

139:                                              ; preds = %123
  %140 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %141 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @NVME_TCP_PFV_1_0, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %147 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %146)
  %148 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %149 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i8*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %147, i64 %150)
  br label %245

152:                                              ; preds = %139
  %153 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %154 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @NVME_TCP_DATA_DIGEST_ENABLE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %9, align 4
  %162 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %163 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %152
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166, %152
  %170 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %171 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %192, label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %174, %166
  %178 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %179 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %178)
  %180 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %181 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %186 = ptrtoint i8* %185 to i64
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %191 = call i32 (i8*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %179, i64 %186, i8* %190)
  br label %245

192:                                              ; preds = %174, %169
  %193 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %194 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @NVME_TCP_HDR_DIGEST_ENABLE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  store i32 %201, i32* %8, align 4
  %202 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %203 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %192
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %206, %192
  %210 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %211 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %232, label %214

214:                                              ; preds = %209
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %214, %206
  %218 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %219 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %218)
  %220 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %221 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %226 = ptrtoint i8* %225 to i64
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %231 = call i32 (i8*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %219, i64 %226, i8* %230)
  br label %245

232:                                              ; preds = %214, %209
  %233 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %234 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %232
  %238 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %239 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %238)
  %240 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %241 = getelementptr inbounds %struct.nvme_tcp_icresp_pdu, %struct.nvme_tcp_icresp_pdu* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = call i32 (i8*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %239, i64 %242)
  br label %245

244:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %245

245:                                              ; preds = %244, %237, %217, %177, %145, %131, %115, %105, %89
  %246 = load %struct.nvme_tcp_icresp_pdu*, %struct.nvme_tcp_icresp_pdu** %5, align 8
  %247 = call i32 @kfree(%struct.nvme_tcp_icresp_pdu* %246)
  br label %248

248:                                              ; preds = %245, %25
  %249 = load %struct.nvme_tcp_icreq_pdu*, %struct.nvme_tcp_icreq_pdu** %4, align 8
  %250 = bitcast %struct.nvme_tcp_icreq_pdu* %249 to %struct.nvme_tcp_icresp_pdu*
  %251 = call i32 @kfree(%struct.nvme_tcp_icresp_pdu* %250)
  %252 = load i32, i32* %10, align 4
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %248, %17
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nvme_tcp_icresp_pdu* @kzalloc(i32, i32) #2

declare dso_local i64 @cpu_to_le32(i32) #2

declare dso_local i64 @cpu_to_le16(i64) #2

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i32) #2

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #2

declare dso_local i32 @kernel_recvmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i32, i32) #2

declare dso_local i32 @pr_err(i8*, i32, i64, ...) #2

declare dso_local i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue*) #2

declare dso_local i32 @le32_to_cpu(i64) #2

declare dso_local i32 @kfree(%struct.nvme_tcp_icresp_pdu*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
