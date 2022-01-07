; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_hdr_dissect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_hdr_dissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_9__*, i32, i64, %struct.iscsi_tcp_conn* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.iscsi_tcp_conn = type { %struct.TYPE_10__, %struct.ahash_request* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.ahash_request = type { i32 }
%struct.iscsi_hdr = type { i32, i32, i32, i32 }
%struct.iscsi_task = type { i8*, %struct.TYPE_8__*, %struct.iscsi_tcp_task* }
%struct.TYPE_8__ = type { i32, %struct.scsi_data_buffer }
%struct.scsi_data_buffer = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.iscsi_tcp_task = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"iscsi_tcp: datalen %d > %d\0A\00", align 1
@ISCSI_ERR_DATALEN = common dso_local global i32 0, align 4
@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"opcode 0x%x ahslen %d datalen %d\0A\00", align 1
@ISCSI_ERR_BAD_ITT = common dso_local global i32 0, align 4
@CAP_DIGEST_OFFLOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"iscsi_tcp_begin_data_in( offset=%d, datalen=%d)\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@iscsi_tcp_process_data_in = common dso_local global i32 0, align 4
@ISCSI_ERR_AHSLEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISCSI_ERR_PROTO = common dso_local global i32 0, align 4
@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [78 x i8] c"iscsi_tcp: received buffer of len %u but conn buffer is only %u (opcode %0x)\0A\00", align 1
@ISCSI_ERR_BAD_OPCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_hdr*)* @iscsi_tcp_hdr_dissect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_tcp_hdr_dissect(%struct.iscsi_conn* %0, %struct.iscsi_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_tcp_conn*, align 8
  %10 = alloca %struct.iscsi_task*, align 8
  %11 = alloca %struct.iscsi_tcp_task*, align 8
  %12 = alloca %struct.ahash_request*, align 8
  %13 = alloca %struct.scsi_data_buffer*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 3
  %16 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %15, align 8
  store %struct.iscsi_tcp_conn* %16, %struct.iscsi_tcp_conn** %9, align 8
  %17 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ntoh24(i32 %19)
  %21 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %22 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %25 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %35 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %36 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, %struct.iscsi_conn*, i8*, i64, i64, ...) @iscsi_conn_printk(i32 %33, %struct.iscsi_conn* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %41)
  %43 = load i32, i32* @ISCSI_ERR_DATALEN, align 4
  store i32 %43, i32* %3, align 4
  br label %302

44:                                               ; preds = %2
  %45 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 2
  store i32 %48, i32* %8, align 4
  %49 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %55 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %56 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @iscsi_verify_itt(%struct.iscsi_conn* %54, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %44
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %302

63:                                               ; preds = %44
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %68 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (%struct.iscsi_conn*, i8*, i32, i32, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66, i64 %70)
  %72 = load i32, i32* %7, align 4
  switch i32 %72, label %284 [
    i32 130, label %73
    i32 131, label %184
    i32 133, label %197
    i32 136, label %252
    i32 128, label %252
    i32 132, label %252
    i32 137, label %252
    i32 135, label %280
    i32 134, label %280
    i32 129, label %280
  ]

73:                                               ; preds = %63
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %75 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = call i32 @spin_lock(i32* %77)
  %79 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %80 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %81 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.iscsi_task* @iscsi_itt_to_ctask(%struct.iscsi_conn* %79, i32 %82)
  store %struct.iscsi_task* %83, %struct.iscsi_task** %10, align 8
  %84 = load %struct.iscsi_task*, %struct.iscsi_task** %10, align 8
  %85 = icmp ne %struct.iscsi_task* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %73
  %87 = load i32, i32* @ISCSI_ERR_BAD_ITT, align 4
  store i32 %87, i32* %6, align 4
  br label %92

88:                                               ; preds = %73
  %89 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %90 = load %struct.iscsi_task*, %struct.iscsi_task** %10, align 8
  %91 = call i32 @iscsi_tcp_data_in(%struct.iscsi_conn* %89, %struct.iscsi_task* %90)
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %86
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %97 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = call i32 @spin_unlock(i32* %99)
  br label %286

101:                                              ; preds = %92
  %102 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %103 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %175

107:                                              ; preds = %101
  %108 = load %struct.iscsi_task*, %struct.iscsi_task** %10, align 8
  %109 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %108, i32 0, i32 2
  %110 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %109, align 8
  store %struct.iscsi_tcp_task* %110, %struct.iscsi_tcp_task** %11, align 8
  store %struct.ahash_request* null, %struct.ahash_request** %12, align 8
  %111 = load %struct.iscsi_task*, %struct.iscsi_task** %10, align 8
  %112 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store %struct.scsi_data_buffer* %114, %struct.scsi_data_buffer** %13, align 8
  %115 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %116 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %107
  %120 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %121 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CAP_DIGEST_OFFLOAD, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %119
  %131 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %132 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %131, i32 0, i32 1
  %133 = load %struct.ahash_request*, %struct.ahash_request** %132, align 8
  store %struct.ahash_request* %133, %struct.ahash_request** %12, align 8
  br label %134

134:                                              ; preds = %130, %119, %107
  %135 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %136 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %11, align 8
  %137 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %140 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 (%struct.iscsi_conn*, i8*, i32, i32, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %135, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %143)
  %145 = load i8*, i8** @jiffies, align 8
  %146 = load %struct.iscsi_task*, %struct.iscsi_task** %10, align 8
  %147 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %149 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %13, align 8
  %152 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %13, align 8
  %156 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %11, align 8
  %160 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %163 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @iscsi_tcp_process_data_in, align 4
  %167 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  %168 = call i32 @iscsi_segment_seek_sg(i32* %150, i32 %154, i32 %158, i32 %161, i64 %165, i32 %166, %struct.ahash_request* %167)
  store i32 %168, i32* %6, align 4
  %169 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %170 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = call i32 @spin_unlock(i32* %172)
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %302

175:                                              ; preds = %101
  %176 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %177 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %178 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %176, %struct.iscsi_hdr* %177, i32* null, i32 0)
  store i32 %178, i32* %6, align 4
  %179 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %180 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %179, i32 0, i32 0
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = call i32 @spin_unlock(i32* %182)
  br label %286

184:                                              ; preds = %63
  %185 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %186 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %192 = call i32 @iscsi_tcp_data_recv_prep(%struct.iscsi_tcp_conn* %191)
  store i32 0, i32* %3, align 4
  br label %302

193:                                              ; preds = %184
  %194 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %195 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %196 = call i32 @iscsi_complete_pdu(%struct.iscsi_conn* %194, %struct.iscsi_hdr* %195, i32* null, i32 0)
  store i32 %196, i32* %6, align 4
  br label %286

197:                                              ; preds = %63
  %198 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %199 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %198, i32 0, i32 0
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = call i32 @spin_lock(i32* %201)
  %203 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %204 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %205 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call %struct.iscsi_task* @iscsi_itt_to_ctask(%struct.iscsi_conn* %203, i32 %206)
  store %struct.iscsi_task* %207, %struct.iscsi_task** %10, align 8
  %208 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %209 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %208, i32 0, i32 0
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = call i32 @spin_unlock(i32* %211)
  %213 = load %struct.iscsi_task*, %struct.iscsi_task** %10, align 8
  %214 = icmp ne %struct.iscsi_task* %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %197
  %216 = load i32, i32* @ISCSI_ERR_BAD_ITT, align 4
  store i32 %216, i32* %6, align 4
  br label %251

217:                                              ; preds = %197
  %218 = load i32, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = load i32, i32* @ISCSI_ERR_AHSLEN, align 4
  store i32 %221, i32* %6, align 4
  br label %250

222:                                              ; preds = %217
  %223 = load %struct.iscsi_task*, %struct.iscsi_task** %10, align 8
  %224 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %223, i32 0, i32 1
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @DMA_TO_DEVICE, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %247

230:                                              ; preds = %222
  %231 = load i8*, i8** @jiffies, align 8
  %232 = load %struct.iscsi_task*, %struct.iscsi_task** %10, align 8
  %233 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  %234 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %235 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %234, i32 0, i32 0
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = call i32 @spin_lock(i32* %237)
  %239 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %240 = load %struct.iscsi_task*, %struct.iscsi_task** %10, align 8
  %241 = call i32 @iscsi_tcp_r2t_rsp(%struct.iscsi_conn* %239, %struct.iscsi_task* %240)
  store i32 %241, i32* %6, align 4
  %242 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %243 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %242, i32 0, i32 0
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = call i32 @spin_unlock(i32* %245)
  br label %249

247:                                              ; preds = %222
  %248 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %248, i32* %6, align 4
  br label %249

249:                                              ; preds = %247, %230
  br label %250

250:                                              ; preds = %249, %220
  br label %251

251:                                              ; preds = %250, %215
  br label %286

252:                                              ; preds = %63, %63, %63, %63
  %253 = load i64, i64* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 8
  %254 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %255 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp slt i64 %253, %257
  br i1 %258, label %259, label %270

259:                                              ; preds = %252
  %260 = load i32, i32* @KERN_ERR, align 4
  %261 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %262 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %263 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 8
  %267 = load i32, i32* %7, align 4
  %268 = call i32 (i32, %struct.iscsi_conn*, i8*, i64, i64, ...) @iscsi_conn_printk(i32 %260, %struct.iscsi_conn* %261, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i64 %265, i64 %266, i32 %267)
  %269 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %269, i32* %6, align 4
  br label %286

270:                                              ; preds = %252
  %271 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %272 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %278 = call i32 @iscsi_tcp_data_recv_prep(%struct.iscsi_tcp_conn* %277)
  store i32 0, i32* %3, align 4
  br label %302

279:                                              ; preds = %270
  br label %280

280:                                              ; preds = %63, %63, %63, %279
  %281 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %282 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %283 = call i32 @iscsi_complete_pdu(%struct.iscsi_conn* %281, %struct.iscsi_hdr* %282, i32* null, i32 0)
  store i32 %283, i32* %6, align 4
  br label %286

284:                                              ; preds = %63
  %285 = load i32, i32* @ISCSI_ERR_BAD_OPCODE, align 4
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %284, %280, %259, %251, %193, %175, %95
  %287 = load i32, i32* %6, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %300

289:                                              ; preds = %286
  %290 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %291 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %289
  %296 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %296, i32* %3, align 4
  br label %302

297:                                              ; preds = %289
  %298 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %299 = call i32 @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn* %298)
  br label %300

300:                                              ; preds = %297, %286
  %301 = load i32, i32* %6, align 4
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %300, %295, %276, %190, %134, %61, %32
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i64, i64, ...) #1

declare dso_local i32 @iscsi_verify_itt(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @ISCSI_DBG_TCP(%struct.iscsi_conn*, i8*, i32, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_ctask(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsi_tcp_data_in(%struct.iscsi_conn*, %struct.iscsi_task*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iscsi_segment_seek_sg(i32*, i32, i32, i32, i64, i32, %struct.ahash_request*) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @iscsi_tcp_data_recv_prep(%struct.iscsi_tcp_conn*) #1

declare dso_local i32 @iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @iscsi_tcp_r2t_rsp(%struct.iscsi_conn*, %struct.iscsi_task*) #1

declare dso_local i32 @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
