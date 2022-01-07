; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_done_recv_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_done_recv_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i64, i64, %struct.TYPE_21__*, i32, i32, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { %struct.nvmet_req }
%struct.nvmet_req = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.nvme_command, %struct.nvme_tcp_hdr }
%struct.nvme_command = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.nvme_tcp_hdr = type { i64 }

@NVMET_TCP_Q_CONNECTING = common dso_local global i64 0, align 8
@nvme_tcp_icreq = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"unexpected pdu type (%d) before icreq\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@nvme_tcp_h2c_data = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"queue %d: out of commands (%d) send_list_len: %d, opcode: %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@nvmet_tcp_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"failed cmd %p id %d opcode %d, data_len: %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"queue %d: failed to map data\0A\00", align 1
@NVMET_TCP_RECV_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*)* @nvmet_tcp_done_recv_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_done_recv_pdu(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  %4 = alloca %struct.nvme_tcp_hdr*, align 8
  %5 = alloca %struct.nvme_command*, align 8
  %6 = alloca %struct.nvmet_req*, align 8
  %7 = alloca i32, align 4
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %3, align 8
  %8 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %9 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store %struct.nvme_tcp_hdr* %11, %struct.nvme_tcp_hdr** %4, align 8
  %12 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %13 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store %struct.nvme_command* %15, %struct.nvme_command** %5, align 8
  %16 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %17 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NVMET_TCP_Q_CONNECTING, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %1
  %25 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @nvme_tcp_icreq, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %4, align 8
  %32 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %36 = call i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue* %35)
  %37 = load i32, i32* @EPROTO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %209

39:                                               ; preds = %24
  %40 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %41 = call i32 @nvmet_tcp_handle_icreq(%struct.nvmet_tcp_queue* %40)
  store i32 %41, i32* %2, align 4
  br label %209

42:                                               ; preds = %1
  %43 = load %struct.nvme_tcp_hdr*, %struct.nvme_tcp_hdr** %4, align 8
  %44 = getelementptr inbounds %struct.nvme_tcp_hdr, %struct.nvme_tcp_hdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @nvme_tcp_h2c_data, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %50 = call i32 @nvmet_tcp_handle_h2c_data_pdu(%struct.nvmet_tcp_queue* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %209

56:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %209

57:                                               ; preds = %42
  %58 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %59 = call %struct.TYPE_21__* @nvmet_tcp_get_cmd(%struct.nvmet_tcp_queue* %58)
  %60 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %61 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %60, i32 0, i32 2
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %61, align 8
  %62 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %63 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %62, i32 0, i32 2
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = icmp ne %struct.TYPE_21__* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %57
  %71 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %72 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %75 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %78 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nvme_command*, %struct.nvme_command** %5, align 8
  %81 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %73, i32 %76, i32 %79, i32 %83)
  %85 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %86 = call i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %209

89:                                               ; preds = %57
  %90 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %91 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %90, i32 0, i32 2
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  store %struct.nvmet_req* %93, %struct.nvmet_req** %6, align 8
  %94 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %95 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load %struct.nvme_command*, %struct.nvme_command** %5, align 8
  %98 = call i32 @memcpy(%struct.TYPE_14__* %96, %struct.nvme_command* %97, i32 4)
  %99 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %100 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %101 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %100, i32 0, i32 5
  %102 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %103 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %102, i32 0, i32 4
  %104 = call i32 @nvmet_req_init(%struct.nvmet_req* %99, i32* %101, i32* %103, i32* @nvmet_tcp_ops)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %145

110:                                              ; preds = %89
  %111 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %112 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %111, i32 0, i32 0
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = ptrtoint %struct.TYPE_14__* %113 to i64
  %115 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %116 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %122 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %121, i32 0, i32 0
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %128 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le32_to_cpu(i32 %134)
  %136 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %114, i32 %120, i32 %126, i32 %135)
  %137 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %138 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %139 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %138, i32 0, i32 2
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %142 = call i32 @nvmet_tcp_handle_req_failure(%struct.nvmet_tcp_queue* %137, %struct.TYPE_21__* %140, %struct.nvmet_req* %141)
  %143 = load i32, i32* @EAGAIN, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %209

145:                                              ; preds = %89
  %146 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %147 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %146, i32 0, i32 2
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %147, align 8
  %149 = call i32 @nvmet_tcp_map_data(%struct.TYPE_21__* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %173

153:                                              ; preds = %145
  %154 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %155 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %156)
  %158 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %159 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %158, i32 0, i32 2
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %159, align 8
  %161 = call i64 @nvmet_tcp_has_inline_data(%struct.TYPE_21__* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %153
  %164 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %165 = call i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue* %164)
  br label %170

166:                                              ; preds = %153
  %167 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @nvmet_req_complete(%struct.nvmet_req* %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %163
  %171 = load i32, i32* @EAGAIN, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %7, align 4
  br label %205

173:                                              ; preds = %145
  %174 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %175 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %174, i32 0, i32 2
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %175, align 8
  %177 = call i64 @nvmet_tcp_need_data_in(%struct.TYPE_21__* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %173
  %180 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %181 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %180, i32 0, i32 2
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  %183 = call i64 @nvmet_tcp_has_inline_data(%struct.TYPE_21__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %179
  %186 = load i32, i32* @NVMET_TCP_RECV_DATA, align 4
  %187 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %188 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 8
  %189 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %190 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %189, i32 0, i32 2
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %190, align 8
  %192 = call i32 @nvmet_tcp_map_pdu_iovec(%struct.TYPE_21__* %191)
  store i32 0, i32* %2, align 4
  br label %209

193:                                              ; preds = %179
  %194 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %195 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %194, i32 0, i32 2
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = call i32 @nvmet_tcp_queue_response(%struct.nvmet_req* %197)
  br label %205

199:                                              ; preds = %173
  %200 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %201 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %200, i32 0, i32 2
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = call i32 @nvmet_req_execute(%struct.nvmet_req* %203)
  br label %205

205:                                              ; preds = %199, %193, %170
  %206 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %207 = call i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue* %206)
  %208 = load i32, i32* %7, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %205, %185, %110, %70, %56, %54, %39, %30
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @nvmet_tcp_handle_icreq(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @nvmet_tcp_handle_h2c_data_pdu(%struct.nvmet_tcp_queue*) #1

declare dso_local %struct.TYPE_21__* @nvmet_tcp_get_cmd(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.nvme_command*, i32) #1

declare dso_local i32 @nvmet_req_init(%struct.nvmet_req*, i32*, i32*, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @nvmet_tcp_handle_req_failure(%struct.nvmet_tcp_queue*, %struct.TYPE_21__*, %struct.nvmet_req*) #1

declare dso_local i32 @nvmet_tcp_map_data(%struct.TYPE_21__*) #1

declare dso_local i64 @nvmet_tcp_has_inline_data(%struct.TYPE_21__*) #1

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i32) #1

declare dso_local i64 @nvmet_tcp_need_data_in(%struct.TYPE_21__*) #1

declare dso_local i32 @nvmet_tcp_map_pdu_iovec(%struct.TYPE_21__*) #1

declare dso_local i32 @nvmet_tcp_queue_response(%struct.nvmet_req*) #1

declare dso_local i32 @nvmet_req_execute(%struct.nvmet_req*) #1

declare dso_local i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
