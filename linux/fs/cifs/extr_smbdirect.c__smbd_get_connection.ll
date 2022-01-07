; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c__smbd_get_connection.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c__smbd_get_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i64, i32, i32, %struct.TYPE_15__*, i32, i32*, i32*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, i32, %struct.ib_port_immutable*)* }
%struct.ib_port_immutable = type { i32 }
%struct.TYPE_13__ = type { i8*, i8*, i64, i32, i32 }
%struct.TCP_Server_Info = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rdma_conn_param = type { i32, i32*, i32, i64, i32, i32, i64, i32, i32*, i32*, i32, i32, %struct.TYPE_11__, %struct.smbd_connection*, i32 }
%struct.TYPE_11__ = type { i64, i8*, i8*, i32, i32 }
%struct.ib_qp_init_attr = type { i32, i32*, i32, i64, i32, i32, i64, i32, i32*, i32*, i32, i32, %struct.TYPE_11__, %struct.smbd_connection*, i32 }
%struct.sockaddr_in = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SMBD_CONNECTING = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"smbd_ia_open rc=%d\0A\00", align 1
@smbd_send_credit_target = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [107 x i8] c"consider lowering send_credit_target = %d. Possible CQE overrun, device reporting max_cpe %d max_qp_wr %d\0A\00", align 1
@smbd_receive_credit_max = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [107 x i8] c"consider lowering receive_credit_max = %d. Possible CQE overrun, device reporting max_cpe %d max_qp_wr %d\0A\00", align 1
@smbd_max_send_size = common dso_local global i32 0, align 4
@smbd_max_fragmented_recv_size = common dso_local global i32 0, align 4
@smbd_max_receive_size = common dso_local global i32 0, align 4
@smbd_keep_alive_interval = common dso_local global i32 0, align 4
@SMBDIRECT_MAX_SGE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"warning: device max_send_sge = %d too small\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Queue Pair creation may fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"warning: device max_recv_sge = %d too small\0A\00", align 1
@IB_POLL_SOFTIRQ = common dso_local global i32 0, align 4
@smbd_qp_async_error_upcall = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"rdma_create_qp failed %i\0A\00", align 1
@SMBD_CM_RESPONDER_RESOURCES = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"responder_resources=%d\0A\00", align 1
@RDMA_CORE_PORT_IWARP = common dso_local global i32 0, align 4
@SMBD_CM_RETRY = common dso_local global i32 0, align 4
@SMBD_CM_RNR_RETRY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"connecting to IP %pI4 port %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"rdma_connect() failed with %i\0A\00", align 1
@SMBD_CONNECTED = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"rdma_connect failed port=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"rdma_connect connected\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"cache allocation failed\0A\00", align 1
@idle_connection_timer = common dso_local global i32 0, align 4
@send_immediate_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@smbd_disconnect_rdma_work = common dso_local global i32 0, align 4
@smbd_recv_done_work = common dso_local global i32 0, align 4
@smbd_post_send_credits = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"smbd_negotiate rc=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"memory registration allocation failed\0A\00", align 1
@SMBD_NEGOTIATE_FAILED = common dso_local global i64 0, align 8
@SMBD_DISCONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smbd_connection* (%struct.TCP_Server_Info*, %struct.sockaddr*, i32)* @_smbd_get_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smbd_connection* @_smbd_get_connection(%struct.TCP_Server_Info* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.smbd_connection*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smbd_connection*, align 8
  %10 = alloca %struct.rdma_conn_param, align 8
  %11 = alloca %struct.ib_qp_init_attr, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.ib_port_immutable, align 4
  %14 = alloca [2 x i32], align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %12, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.smbd_connection* @kzalloc(i32 144, i32 %17)
  store %struct.smbd_connection* %18, %struct.smbd_connection** %9, align 8
  %19 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %20 = icmp ne %struct.smbd_connection* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.smbd_connection* null, %struct.smbd_connection** %4, align 8
  br label %560

22:                                               ; preds = %3
  %23 = load i64, i64* @SMBD_CONNECTING, align 8
  %24 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %25 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @smbd_ia_open(%struct.smbd_connection* %26, %struct.sockaddr* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @INFO, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %557

36:                                               ; preds = %22
  %37 = load i32, i32* @smbd_send_credit_target, align 4
  %38 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %39 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %38, i32 0, i32 3
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %37, %45
  br i1 %46, label %58, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @smbd_send_credit_target, align 4
  %49 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %50 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %49, i32 0, i32 3
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %48, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %47, %36
  %59 = load i32, i32* @ERR, align 4
  %60 = load i32, i32* @smbd_send_credit_target, align 4
  %61 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %62 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %61, i32 0, i32 3
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %70 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %69, i32 0, i32 3
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %59, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %68, i32 %76)
  br label %548

78:                                               ; preds = %47
  %79 = load i32, i32* @smbd_receive_credit_max, align 4
  %80 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %81 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %80, i32 0, i32 3
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %79, %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %78
  %90 = load i32, i32* @smbd_receive_credit_max, align 4
  %91 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %92 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %91, i32 0, i32 3
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %90, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %89, %78
  %101 = load i32, i32* @ERR, align 4
  %102 = load i32, i32* @smbd_receive_credit_max, align 4
  %103 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %104 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %103, i32 0, i32 3
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %112 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %111, i32 0, i32 3
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %101, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %110, i32 %118)
  br label %548

120:                                              ; preds = %89
  %121 = load i32, i32* @smbd_receive_credit_max, align 4
  %122 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %123 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %122, i32 0, i32 23
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @smbd_send_credit_target, align 4
  %125 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %126 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %125, i32 0, i32 24
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @smbd_max_send_size, align 4
  %128 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %129 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %128, i32 0, i32 27
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @smbd_max_fragmented_recv_size, align 4
  %131 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %132 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %131, i32 0, i32 26
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @smbd_max_receive_size, align 4
  %134 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %135 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %134, i32 0, i32 25
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* @smbd_keep_alive_interval, align 4
  %137 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %138 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %140 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %139, i32 0, i32 3
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** @SMBDIRECT_MAX_SGE, align 8
  %148 = icmp ult i8* %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %120
  %150 = load i32, i32* @ERR, align 4
  %151 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %152 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %151, i32 0, i32 3
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %150, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %158)
  %160 = load i32, i32* @ERR, align 4
  %161 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %162

162:                                              ; preds = %149, %120
  %163 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %164 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %163, i32 0, i32 3
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load i8*, i8** @SMBDIRECT_MAX_SGE, align 8
  %172 = icmp ult i8* %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %162
  %174 = load i32, i32* @ERR, align 4
  %175 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %176 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %175, i32 0, i32 3
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %174, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %182)
  %184 = load i32, i32* @ERR, align 4
  %185 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %186

186:                                              ; preds = %173, %162
  %187 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %188 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %187, i32 0, i32 6
  store i32* null, i32** %188, align 8
  %189 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %190 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %189, i32 0, i32 5
  store i32* null, i32** %190, align 8
  %191 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %192 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %191, i32 0, i32 3
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %197 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %198 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %197, i32 0, i32 24
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @IB_POLL_SOFTIRQ, align 4
  %201 = call i8* @ib_alloc_cq_any(%struct.TYPE_14__* %195, %struct.smbd_connection* %196, i32 %199, i32 %200)
  %202 = bitcast i8* %201 to i32*
  %203 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %204 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %203, i32 0, i32 6
  store i32* %202, i32** %204, align 8
  %205 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %206 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %205, i32 0, i32 6
  %207 = load i32*, i32** %206, align 8
  %208 = call i64 @IS_ERR(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %186
  %211 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %212 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %211, i32 0, i32 6
  store i32* null, i32** %212, align 8
  br label %527

213:                                              ; preds = %186
  %214 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %215 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %214, i32 0, i32 3
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %220 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %221 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %220, i32 0, i32 23
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @IB_POLL_SOFTIRQ, align 4
  %224 = call i8* @ib_alloc_cq_any(%struct.TYPE_14__* %218, %struct.smbd_connection* %219, i32 %222, i32 %223)
  %225 = bitcast i8* %224 to i32*
  %226 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %227 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %226, i32 0, i32 5
  store i32* %225, i32** %227, align 8
  %228 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %229 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %228, i32 0, i32 5
  %230 = load i32*, i32** %229, align 8
  %231 = call i64 @IS_ERR(i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %213
  %234 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %235 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %234, i32 0, i32 5
  store i32* null, i32** %235, align 8
  br label %527

236:                                              ; preds = %213
  %237 = bitcast %struct.ib_qp_init_attr* %11 to %struct.rdma_conn_param*
  %238 = call i32 @memset(%struct.rdma_conn_param* %237, i32 0, i32 128)
  %239 = load i32, i32* @smbd_qp_async_error_upcall, align 4
  %240 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 14
  store i32 %239, i32* %240, align 8
  %241 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %242 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 13
  store %struct.smbd_connection* %241, %struct.smbd_connection** %242, align 8
  %243 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %244 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %243, i32 0, i32 24
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 12
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 4
  store i32 %245, i32* %247, align 4
  %248 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %249 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %248, i32 0, i32 23
  %250 = load i32, i32* %249, align 8
  %251 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 12
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 8
  %253 = load i8*, i8** @SMBDIRECT_MAX_SGE, align 8
  %254 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 12
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 2
  store i8* %253, i8** %255, align 8
  %256 = load i8*, i8** @SMBDIRECT_MAX_SGE, align 8
  %257 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 12
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  store i8* %256, i8** %258, align 8
  %259 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 12
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  store i64 0, i64* %260, align 8
  %261 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %262 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 11
  store i32 %261, i32* %262, align 4
  %263 = load i32, i32* @IB_QPT_RC, align 4
  %264 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 10
  store i32 %263, i32* %264, align 8
  %265 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %266 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %265, i32 0, i32 6
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 9
  store i32* %267, i32** %268, align 8
  %269 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %270 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %269, i32 0, i32 5
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 8
  store i32* %271, i32** %272, align 8
  %273 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 7
  store i32 -1, i32* %273, align 8
  %274 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %275 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %274, i32 0, i32 3
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %275, align 8
  %277 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %278 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = bitcast %struct.ib_qp_init_attr* %11 to %struct.rdma_conn_param*
  %281 = call i32 @rdma_create_qp(%struct.TYPE_15__* %276, i32 %279, %struct.rdma_conn_param* %280)
  store i32 %281, i32* %8, align 4
  %282 = load i32, i32* %8, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %236
  %285 = load i32, i32* @ERR, align 4
  %286 = load i32, i32* %8, align 4
  %287 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %285, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %286)
  br label %526

288:                                              ; preds = %236
  %289 = call i32 @memset(%struct.rdma_conn_param* %10, i32 0, i32 128)
  %290 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 6
  store i64 0, i64* %290, align 8
  %291 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %292 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %291, i32 0, i32 3
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @SMBD_CM_RESPONDER_RESOURCES, align 8
  %300 = icmp slt i64 %298, %299
  br i1 %300, label %301, label %310

301:                                              ; preds = %288
  %302 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %303 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %302, i32 0, i32 3
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  br label %312

310:                                              ; preds = %288
  %311 = load i64, i64* @SMBD_CM_RESPONDER_RESOURCES, align 8
  br label %312

312:                                              ; preds = %310, %301
  %313 = phi i64 [ %309, %301 ], [ %311, %310 ]
  %314 = trunc i64 %313 to i32
  %315 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 0
  store i32 %314, i32* %315, align 8
  %316 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %319 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %318, i32 0, i32 2
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* @INFO, align 4
  %321 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %322 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = call i32 (i32, i8*, ...) @log_rdma_mr(i32 %320, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %323)
  %325 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %326 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %325, i32 0, i32 3
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  %332 = load i32 (%struct.TYPE_14__*, i32, %struct.ib_port_immutable*)*, i32 (%struct.TYPE_14__*, i32, %struct.ib_port_immutable*)** %331, align 8
  %333 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %334 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %333, i32 0, i32 3
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %336, align 8
  %338 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %339 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %338, i32 0, i32 3
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = call i32 %332(%struct.TYPE_14__* %337, i32 %342, %struct.ib_port_immutable* %13)
  %344 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %13, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @RDMA_CORE_PORT_IWARP, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %358

349:                                              ; preds = %312
  %350 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %351 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %352, i32* %353, align 4
  %354 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 1, i32* %354, align 4
  %355 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %356 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 1
  store i32* %355, i32** %356, align 8
  %357 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 2
  store i32 8, i32* %357, align 8
  br label %361

358:                                              ; preds = %312
  %359 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 1
  store i32* null, i32** %359, align 8
  %360 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 2
  store i32 0, i32* %360, align 8
  br label %361

361:                                              ; preds = %358, %349
  %362 = load i32, i32* @SMBD_CM_RETRY, align 4
  %363 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 5
  store i32 %362, i32* %363, align 4
  %364 = load i32, i32* @SMBD_CM_RNR_RETRY, align 4
  %365 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 4
  store i32 %364, i32* %365, align 8
  %366 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 3
  store i64 0, i64* %366, align 8
  %367 = load i32, i32* @INFO, align 4
  %368 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %369 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %368, i32 0, i32 0
  %370 = load i32, i32* %7, align 4
  %371 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %367, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32* %369, i32 %370)
  %372 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %373 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %372, i32 0, i32 7
  %374 = call i32 @init_waitqueue_head(i32* %373)
  %375 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %376 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %375, i32 0, i32 22
  %377 = call i32 @init_waitqueue_head(i32* %376)
  %378 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %379 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %378, i32 0, i32 21
  %380 = call i32 @init_waitqueue_head(i32* %379)
  %381 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %382 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %381, i32 0, i32 3
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %382, align 8
  %384 = call i32 @rdma_connect(%struct.TYPE_15__* %383, %struct.rdma_conn_param* %10)
  store i32 %384, i32* %8, align 4
  %385 = load i32, i32* %8, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %361
  %388 = load i32, i32* @ERR, align 4
  %389 = load i32, i32* %8, align 4
  %390 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %388, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %389)
  br label %521

391:                                              ; preds = %361
  %392 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %393 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %392, i32 0, i32 7
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %396 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @SMBD_CONNECTING, align 8
  %399 = icmp ne i64 %397, %398
  %400 = zext i1 %399 to i32
  %401 = call i32 @wait_event_interruptible(i32 %394, i32 %400)
  %402 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %403 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @SMBD_CONNECTED, align 8
  %406 = icmp ne i64 %404, %405
  br i1 %406, label %407, label %411

407:                                              ; preds = %391
  %408 = load i32, i32* @ERR, align 4
  %409 = load i32, i32* %7, align 4
  %410 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %408, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %409)
  br label %521

411:                                              ; preds = %391
  %412 = load i32, i32* @INFO, align 4
  %413 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %412, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %414 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %415 = call i32 @allocate_caches_and_workqueue(%struct.smbd_connection* %414)
  store i32 %415, i32* %8, align 4
  %416 = load i32, i32* %8, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %411
  %419 = load i32, i32* @ERR, align 4
  %420 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %419, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %520

421:                                              ; preds = %411
  %422 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %423 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %422, i32 0, i32 20
  %424 = call i32 @init_waitqueue_head(i32* %423)
  %425 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %426 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %425, i32 0, i32 8
  %427 = load i32, i32* @idle_connection_timer, align 4
  %428 = call i32 @INIT_DELAYED_WORK(i32* %426, i32 %427)
  %429 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %430 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %429, i32 0, i32 19
  %431 = load i32, i32* @send_immediate_work, align 4
  %432 = call i32 @INIT_DELAYED_WORK(i32* %430, i32 %431)
  %433 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %434 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %433, i32 0, i32 18
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %437 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %436, i32 0, i32 8
  %438 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %439 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @HZ, align 4
  %442 = mul nsw i32 %440, %441
  %443 = call i32 @queue_delayed_work(i32 %435, i32* %437, i32 %442)
  %444 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %445 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %444, i32 0, i32 17
  %446 = call i32 @init_waitqueue_head(i32* %445)
  %447 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %448 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %447, i32 0, i32 16
  %449 = call i32 @atomic_set(i32* %448, i32 0)
  %450 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %451 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %450, i32 0, i32 15
  %452 = call i32 @init_waitqueue_head(i32* %451)
  %453 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %454 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %453, i32 0, i32 14
  %455 = call i32 @atomic_set(i32* %454, i32 0)
  %456 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %457 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %456, i32 0, i32 13
  %458 = load i32, i32* @smbd_disconnect_rdma_work, align 4
  %459 = call i32 @INIT_WORK(i32* %457, i32 %458)
  %460 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %461 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %460, i32 0, i32 12
  %462 = load i32, i32* @smbd_recv_done_work, align 4
  %463 = call i32 @INIT_WORK(i32* %461, i32 %462)
  %464 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %465 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %464, i32 0, i32 11
  %466 = load i32, i32* @smbd_post_send_credits, align 4
  %467 = call i32 @INIT_WORK(i32* %465, i32 %466)
  %468 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %469 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %468, i32 0, i32 10
  store i64 0, i64* %469, align 8
  %470 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %471 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %470, i32 0, i32 9
  %472 = call i32 @spin_lock_init(i32* %471)
  %473 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %474 = call i32 @smbd_negotiate(%struct.smbd_connection* %473)
  store i32 %474, i32* %8, align 4
  %475 = load i32, i32* %8, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %481

477:                                              ; preds = %421
  %478 = load i32, i32* @ERR, align 4
  %479 = load i32, i32* %8, align 4
  %480 = call i32 (i32, i8*, ...) @log_rdma_event(i32 %478, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %479)
  br label %494

481:                                              ; preds = %421
  %482 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %483 = call i32 @allocate_mr_list(%struct.smbd_connection* %482)
  store i32 %483, i32* %8, align 4
  %484 = load i32, i32* %8, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %481
  %487 = load i32, i32* @ERR, align 4
  %488 = call i32 (i32, i8*, ...) @log_rdma_mr(i32 %487, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  br label %491

489:                                              ; preds = %481
  %490 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  store %struct.smbd_connection* %490, %struct.smbd_connection** %4, align 8
  br label %560

491:                                              ; preds = %486
  %492 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %493 = call i32 @smbd_destroy(%struct.TCP_Server_Info* %492)
  store %struct.smbd_connection* null, %struct.smbd_connection** %4, align 8
  br label %560

494:                                              ; preds = %477
  %495 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %496 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %495, i32 0, i32 8
  %497 = call i32 @cancel_delayed_work_sync(i32* %496)
  %498 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %499 = call i32 @destroy_caches_and_workqueue(%struct.smbd_connection* %498)
  %500 = load i64, i64* @SMBD_NEGOTIATE_FAILED, align 8
  %501 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %502 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %501, i32 0, i32 0
  store i64 %500, i64* %502, align 8
  %503 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %504 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %503, i32 0, i32 7
  %505 = call i32 @init_waitqueue_head(i32* %504)
  %506 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %507 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %506, i32 0, i32 3
  %508 = load %struct.TYPE_15__*, %struct.TYPE_15__** %507, align 8
  %509 = call i32 @rdma_disconnect(%struct.TYPE_15__* %508)
  %510 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %511 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %510, i32 0, i32 7
  %512 = load i32, i32* %511, align 8
  %513 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %514 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = load i64, i64* @SMBD_DISCONNECTED, align 8
  %517 = icmp eq i64 %515, %516
  %518 = zext i1 %517 to i32
  %519 = call i32 @wait_event(i32 %512, i32 %518)
  br label %520

520:                                              ; preds = %494, %418
  br label %521

521:                                              ; preds = %520, %407, %387
  %522 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %523 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %522, i32 0, i32 3
  %524 = load %struct.TYPE_15__*, %struct.TYPE_15__** %523, align 8
  %525 = call i32 @rdma_destroy_qp(%struct.TYPE_15__* %524)
  br label %526

526:                                              ; preds = %521, %284
  br label %527

527:                                              ; preds = %526, %233, %210
  %528 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %529 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %528, i32 0, i32 6
  %530 = load i32*, i32** %529, align 8
  %531 = icmp ne i32* %530, null
  br i1 %531, label %532, label %537

532:                                              ; preds = %527
  %533 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %534 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %533, i32 0, i32 6
  %535 = load i32*, i32** %534, align 8
  %536 = call i32 @ib_free_cq(i32* %535)
  br label %537

537:                                              ; preds = %532, %527
  %538 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %539 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %538, i32 0, i32 5
  %540 = load i32*, i32** %539, align 8
  %541 = icmp ne i32* %540, null
  br i1 %541, label %542, label %547

542:                                              ; preds = %537
  %543 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %544 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %543, i32 0, i32 5
  %545 = load i32*, i32** %544, align 8
  %546 = call i32 @ib_free_cq(i32* %545)
  br label %547

547:                                              ; preds = %542, %537
  br label %548

548:                                              ; preds = %547, %100, %58
  %549 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %550 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %549, i32 0, i32 4
  %551 = load i32, i32* %550, align 8
  %552 = call i32 @ib_dealloc_pd(i32 %551)
  %553 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %554 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %553, i32 0, i32 3
  %555 = load %struct.TYPE_15__*, %struct.TYPE_15__** %554, align 8
  %556 = call i32 @rdma_destroy_id(%struct.TYPE_15__* %555)
  br label %557

557:                                              ; preds = %548, %32
  %558 = load %struct.smbd_connection*, %struct.smbd_connection** %9, align 8
  %559 = call i32 @kfree(%struct.smbd_connection* %558)
  store %struct.smbd_connection* null, %struct.smbd_connection** %4, align 8
  br label %560

560:                                              ; preds = %557, %491, %489, %21
  %561 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  ret %struct.smbd_connection* %561
}

declare dso_local %struct.smbd_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @smbd_ia_open(%struct.smbd_connection*, %struct.sockaddr*, i32) #1

declare dso_local i32 @log_rdma_event(i32, i8*, ...) #1

declare dso_local i8* @ib_alloc_cq_any(%struct.TYPE_14__*, %struct.smbd_connection*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @memset(%struct.rdma_conn_param*, i32, i32) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_15__*, i32, %struct.rdma_conn_param*) #1

declare dso_local i32 @log_rdma_mr(i32, i8*, ...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @rdma_connect(%struct.TYPE_15__*, %struct.rdma_conn_param*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @allocate_caches_and_workqueue(%struct.smbd_connection*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @smbd_negotiate(%struct.smbd_connection*) #1

declare dso_local i32 @allocate_mr_list(%struct.smbd_connection*) #1

declare dso_local i32 @smbd_destroy(%struct.TCP_Server_Info*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_caches_and_workqueue(%struct.smbd_connection*) #1

declare dso_local i32 @rdma_disconnect(%struct.TYPE_15__*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @rdma_destroy_qp(%struct.TYPE_15__*) #1

declare dso_local i32 @ib_free_cq(i32*) #1

declare dso_local i32 @ib_dealloc_pd(i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_15__*) #1

declare dso_local i32 @kfree(%struct.smbd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
