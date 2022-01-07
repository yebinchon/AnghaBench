; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_ep_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_ep_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i64*, i32*, i32*)*, i32 (i32, i64)* }
%struct.iscsi_endpoint = type { %struct.qedi_endpoint* }
%struct.qedi_endpoint = type { i64, i64, i64, i32, i32*, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i8*, %struct.qedi_ctx* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qedi_ctx = type { i32, i32, %struct.qedi_endpoint**, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.sockaddr_in6 = type { i32, i32* }
%struct.iscsi_path = type { i64, i64, i64, i32, i32*, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i8*, %struct.qedi_ctx* }

@ISCSI_KEVENT_IF_DOWN = common dso_local global i64 0, align 8
@QEDI_CID_RESERVED = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"shost is NULL\0A\00", align 1
@qedi_do_not_recover = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@QEDI_IN_OFFLINE = common dso_local global i32 0, align 4
@QEDI_IN_RECOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"endpoint create fail\0A\00", align 1
@EP_STATE_IDLE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@TCP_IPV4 = common dso_local global i64 0, align 8
@QEDI_LOG_CONN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"dst_addr=%pI4, dst_port=%u\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@TCP_IPV6 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"dst_addr=%pI6, dst_port=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Invalid endpoint\0A\00", align 1
@QEDI_LINK_UP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"qedi link down\0A\00", align 1
@qedi_ops = common dso_local global %struct.TYPE_6__* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Could not acquire connection\0A\00", align 1
@EP_STATE_OFLDCONN_START = common dso_local global i32 0, align 4
@ISCSI_KEVENT_PATH_REQ = common dso_local global i64 0, align 8
@qedi_iscsi_transport = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"iscsi_offload_mesg() failed for cid=0x%x ret=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"release_conn returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_endpoint* (%struct.Scsi_Host*, %struct.sockaddr*, i32)* @qedi_ep_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_endpoint* @qedi_ep_connect(%struct.Scsi_Host* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_endpoint*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qedi_ctx*, align 8
  %9 = alloca %struct.iscsi_endpoint*, align 8
  %10 = alloca %struct.qedi_endpoint*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  %13 = alloca %struct.iscsi_path, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i64, i64* @ISCSI_KEVENT_IF_DOWN, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* @QEDI_CID_RESERVED, align 8
  store i64 %21, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %23 = icmp ne %struct.Scsi_Host* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %18, align 4
  %27 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %18, align 4
  %29 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %28)
  store %struct.iscsi_endpoint* %29, %struct.iscsi_endpoint** %4, align 8
  br label %308

30:                                               ; preds = %3
  %31 = load i64, i64* @qedi_do_not_recover, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %36)
  store %struct.iscsi_endpoint* %37, %struct.iscsi_endpoint** %4, align 8
  br label %308

38:                                               ; preds = %30
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %40 = call %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host* %39)
  store %struct.qedi_ctx* %40, %struct.qedi_ctx** %8, align 8
  %41 = load i32, i32* @QEDI_IN_OFFLINE, align 4
  %42 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %42, i32 0, i32 6
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @QEDI_IN_RECOVERY, align 4
  %48 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %48, i32 0, i32 6
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46, %38
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %55)
  store %struct.iscsi_endpoint* %56, %struct.iscsi_endpoint** %4, align 8
  br label %308

57:                                               ; preds = %46
  %58 = call %struct.iscsi_endpoint* @iscsi_create_endpoint(i32 88)
  store %struct.iscsi_endpoint* %58, %struct.iscsi_endpoint** %9, align 8
  %59 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %9, align 8
  %60 = icmp ne %struct.iscsi_endpoint* %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %67)
  store %struct.iscsi_endpoint* %68, %struct.iscsi_endpoint** %4, align 8
  br label %308

69:                                               ; preds = %57
  %70 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %9, align 8
  %71 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %70, i32 0, i32 0
  %72 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %71, align 8
  store %struct.qedi_endpoint* %72, %struct.qedi_endpoint** %10, align 8
  %73 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %74 = call i32 @memset(%struct.qedi_endpoint* %73, i32 0, i32 88)
  %75 = load i32, i32* @EP_STATE_IDLE, align 4
  %76 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %77 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %79 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %78, i32 0, i32 0
  store i64 -1, i64* %79, align 8
  %80 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %81 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %82 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %81, i32 0, i32 13
  store %struct.qedi_ctx* %80, %struct.qedi_ctx** %82, align 8
  %83 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %84 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AF_INET, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %69
  %89 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %90 = bitcast %struct.sockaddr* %89 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %90, %struct.sockaddr_in** %11, align 8
  %91 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %92 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @memcpy(i32* %93, i32** %96, i32 4)
  %98 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @ntohs(i32 %100)
  %102 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %103 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %102, i32 0, i32 12
  store i8* %101, i8** %103, align 8
  %104 = load i64, i64* @TCP_IPV4, align 8
  %105 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %106 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %108 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %107, i32 0, i32 0
  %109 = load i32, i32* @QEDI_LOG_CONN, align 4
  %110 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %111 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %114 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %113, i32 0, i32 12
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @QEDI_INFO(i32* %108, i32 %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %112, i8* %115)
  br label %156

117:                                              ; preds = %69
  %118 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %119 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @AF_INET6, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %117
  %124 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %125 = bitcast %struct.sockaddr* %124 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %125, %struct.sockaddr_in6** %12, align 8
  %126 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %127 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %130 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %129, i32 0, i32 1
  %131 = call i32 @memcpy(i32* %128, i32** %130, i32 4)
  %132 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @ntohs(i32 %134)
  %136 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %137 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %136, i32 0, i32 12
  store i8* %135, i8** %137, align 8
  %138 = load i64, i64* @TCP_IPV6, align 8
  %139 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %140 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %142 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %141, i32 0, i32 0
  %143 = load i32, i32* @QEDI_LOG_CONN, align 4
  %144 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %145 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %148 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %147, i32 0, i32 12
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @QEDI_INFO(i32* %142, i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* %146, i8* %149)
  br label %155

151:                                              ; preds = %117
  %152 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %153 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %152, i32 0, i32 0
  %154 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %155

155:                                              ; preds = %151, %123
  br label %156

156:                                              ; preds = %155, %88
  %157 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %158 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %157, i32 0, i32 5
  %159 = call i64 @atomic_read(i32* %158)
  %160 = load i64, i64* @QEDI_LINK_UP, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %164 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %163, i32 0, i32 0
  %165 = call i32 (i32*, i8*, ...) @QEDI_WARN(i32* %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %166 = load i32, i32* @ENXIO, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %18, align 4
  br label %303

168:                                              ; preds = %156
  %169 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %170 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %171 = call i32 @qedi_alloc_sq(%struct.qedi_ctx* %169, %struct.qedi_endpoint* %170)
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %18, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %303

175:                                              ; preds = %168
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32 (i32, i64*, i32*, i32*)*, i32 (i32, i64*, i32*, i32*)** %177, align 8
  %179 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %180 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %183 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %182, i32 0, i32 2
  %184 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %185 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %184, i32 0, i32 11
  %186 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %187 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %186, i32 0, i32 10
  %188 = call i32 %178(i32 %181, i64* %183, i32* %185, i32* %187)
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %175
  %192 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %193 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %192, i32 0, i32 0
  %194 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %193, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %195 = load i32, i32* @ENXIO, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %18, align 4
  br label %299

197:                                              ; preds = %175
  %198 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %199 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %15, align 8
  %201 = load i64, i64* %15, align 8
  %202 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %203 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %205 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %204, i32 0, i32 9
  %206 = call i32 @init_waitqueue_head(i32* %205)
  %207 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %208 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %207, i32 0, i32 8
  %209 = call i32 @init_waitqueue_head(i32* %208)
  %210 = load i32, i32* @EP_STATE_OFLDCONN_START, align 4
  %211 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %212 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %211, i32 0, i32 7
  store i32 %210, i32* %212, align 4
  %213 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %214 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %215 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %214, i32 0, i32 2
  %216 = load %struct.qedi_endpoint**, %struct.qedi_endpoint*** %215, align 8
  %217 = load i64, i64* %15, align 8
  %218 = getelementptr inbounds %struct.qedi_endpoint*, %struct.qedi_endpoint** %216, i64 %217
  store %struct.qedi_endpoint* %213, %struct.qedi_endpoint** %218, align 8
  %219 = bitcast %struct.iscsi_path* %13 to i8*
  store i8* %219, i8** %17, align 8
  store i32 88, i32* %16, align 4
  %220 = bitcast %struct.iscsi_path* %13 to %struct.qedi_endpoint*
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @memset(%struct.qedi_endpoint* %220, i32 0, i32 %221)
  %223 = load i64, i64* @ISCSI_KEVENT_PATH_REQ, align 8
  store i64 %223, i64* %14, align 8
  %224 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %225 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %13, i32 0, i32 2
  store i64 %226, i64* %227, align 8
  %228 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %229 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %13, i32 0, i32 6
  store i32 %230, i32* %231, align 8
  %232 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %233 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %236 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %235, i32 0, i32 6
  store i32 %234, i32* %236, align 8
  %237 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %238 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @TCP_IPV4, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %197
  %243 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %13, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  %245 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %246 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %245, i32 0, i32 4
  %247 = call i32 @memcpy(i32* %244, i32** %246, i32 4)
  %248 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %13, i32 0, i32 3
  store i32 4, i32* %248, align 8
  br label %256

249:                                              ; preds = %197
  %250 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %13, i32 0, i32 5
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %253 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %252, i32 0, i32 4
  %254 = call i32 @memcpy(i32* %251, i32** %253, i32 4)
  %255 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %13, i32 0, i32 3
  store i32 16, i32* %255, align 8
  br label %256

256:                                              ; preds = %249, %242
  %257 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %258 = load i64, i64* %14, align 8
  %259 = load i8*, i8** %17, align 8
  %260 = load i32, i32* %16, align 4
  %261 = call i32 @iscsi_offload_mesg(%struct.Scsi_Host* %257, i32* @qedi_iscsi_transport, i64 %258, i8* %259, i32 %260)
  store i32 %261, i32* %18, align 4
  %262 = load i32, i32* %18, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %256
  %265 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %266 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %265, i32 0, i32 0
  %267 = load i64, i64* %15, align 8
  %268 = load i32, i32* %18, align 4
  %269 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %266, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i64 %267, i32 %268)
  br label %275

270:                                              ; preds = %256
  %271 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %272 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %271, i32 0, i32 3
  %273 = call i32 @atomic_inc(i32* %272)
  %274 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %9, align 8
  store %struct.iscsi_endpoint* %274, %struct.iscsi_endpoint** %4, align 8
  br label %308

275:                                              ; preds = %264
  %276 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %277 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %276, i32 0, i32 2
  %278 = load %struct.qedi_endpoint**, %struct.qedi_endpoint*** %277, align 8
  %279 = load i64, i64* %15, align 8
  %280 = getelementptr inbounds %struct.qedi_endpoint*, %struct.qedi_endpoint** %278, i64 %279
  store %struct.qedi_endpoint* null, %struct.qedi_endpoint** %280, align 8
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 1
  %283 = load i32 (i32, i64)*, i32 (i32, i64)** %282, align 8
  %284 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %285 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %288 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = call i32 %283(i32 %286, i64 %289)
  store i32 %290, i32* %19, align 4
  %291 = load i32, i32* %19, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %275
  %294 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %295 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %294, i32 0, i32 0
  %296 = load i32, i32* %19, align 4
  %297 = call i32 (i32*, i8*, ...) @QEDI_WARN(i32* %295, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %296)
  br label %298

298:                                              ; preds = %293, %275
  br label %299

299:                                              ; preds = %298, %191
  %300 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %301 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %10, align 8
  %302 = call i32 @qedi_free_sq(%struct.qedi_ctx* %300, %struct.qedi_endpoint* %301)
  br label %303

303:                                              ; preds = %299, %174, %162
  %304 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %9, align 8
  %305 = call i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint* %304)
  %306 = load i32, i32* %18, align 4
  %307 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %306)
  store %struct.iscsi_endpoint* %307, %struct.iscsi_endpoint** %4, align 8
  br label %308

308:                                              ; preds = %303, %270, %61, %52, %33, %24
  %309 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %4, align 8
  ret %struct.iscsi_endpoint* %309
}

declare dso_local i32 @QEDI_ERR(i32*, i8*, ...) #1

declare dso_local %struct.iscsi_endpoint* @ERR_PTR(i32) #1

declare dso_local %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.iscsi_endpoint* @iscsi_create_endpoint(i32) #1

declare dso_local i32 @memset(%struct.qedi_endpoint*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32**, i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32*, i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QEDI_WARN(i32*, i8*, ...) #1

declare dso_local i32 @qedi_alloc_sq(%struct.qedi_ctx*, %struct.qedi_endpoint*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @iscsi_offload_mesg(%struct.Scsi_Host*, i32*, i64, i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @qedi_free_sq(%struct.qedi_ctx*, %struct.qedi_endpoint*) #1

declare dso_local i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
