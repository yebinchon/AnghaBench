; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_initiate_els.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_els.c_qedf_initiate_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_rport = type { i32, %struct.fcoe_wqe*, i32, %struct.TYPE_4__*, i32, i32, %struct.qedf_ctx* }
%struct.fcoe_wqe = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qedf_ctx = type { i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i64, i32 }
%struct.qedf_els_cb_arg = type { i32, %struct.qedf_ioreq* }
%struct.qedf_ioreq = type { void (%struct.qedf_els_cb_arg.0*)*, i32, i32, i32, %struct.qedf_els_cb_arg*, i32, i32, i32, %struct.qedf_rport*, i32, i32* }
%struct.qedf_els_cb_arg.0 = type opaque
%struct.qedf_mp_req = type { %struct.fc_frame_header, i32 }
%struct.fc_frame_header = type { i32 }
%struct.e4_fcoe_task_context = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"fcport is NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QEDF_LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Sending ELS\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"els 0x%x: rport not ready\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@LPORT_ST_READY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"els 0x%x: link is not ready\0A\00", align 1
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"els 0x%x: fcport not ready\0A\00", align 1
@QEDF_ELS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to alloc ELS request 0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"initiate_els els_req = 0x%p cb_arg = %p xid = %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"ELS MP request init failed\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@ELS_AUTH_ELS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Invalid ELS op 0x%x\0A\00", align 1
@FC_RCTL_ELS_REQ = common dso_local global i32 0, align 4
@FC_TYPE_ELS = common dso_local global i32 0, align 4
@FC_FC_FIRST_SEQ = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@FC_FC_SEQ_INIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Ringing doorbell for ELS req\0A\00", align 1
@QEDF_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_rport*, i32, i8*, i32, void (%struct.qedf_els_cb_arg*)*, %struct.qedf_els_cb_arg*, i32)* @qedf_initiate_els to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_initiate_els(%struct.qedf_rport* %0, i32 %1, i8* %2, i32 %3, void (%struct.qedf_els_cb_arg*)* %4, %struct.qedf_els_cb_arg* %5, i32 %6) #0 {
  %8 = alloca %struct.qedf_rport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.qedf_els_cb_arg*)*, align 8
  %13 = alloca %struct.qedf_els_cb_arg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.qedf_ctx*, align 8
  %16 = alloca %struct.fc_lport*, align 8
  %17 = alloca %struct.qedf_ioreq*, align 8
  %18 = alloca %struct.qedf_mp_req*, align 8
  %19 = alloca %struct.fc_frame_header*, align 8
  %20 = alloca %struct.e4_fcoe_task_context*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.fcoe_wqe*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.qedf_rport* %0, %struct.qedf_rport** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store void (%struct.qedf_els_cb_arg*)* %4, void (%struct.qedf_els_cb_arg*)** %12, align 8
  store %struct.qedf_els_cb_arg* %5, %struct.qedf_els_cb_arg** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %21, align 4
  %28 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %29 = icmp ne %struct.qedf_rport* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %7
  %31 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %21, align 4
  br label %259

34:                                               ; preds = %7
  %35 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %36 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %35, i32 0, i32 6
  %37 = load %struct.qedf_ctx*, %struct.qedf_ctx** %36, align 8
  store %struct.qedf_ctx* %37, %struct.qedf_ctx** %15, align 8
  %38 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %39 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %38, i32 0, i32 2
  %40 = load %struct.fc_lport*, %struct.fc_lport** %39, align 8
  store %struct.fc_lport* %40, %struct.fc_lport** %16, align 8
  %41 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %42 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* @QEDF_LOG_ELS, align 4
  %44 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %42, i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %46 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fc_remote_port_chkready(i32 %47)
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %21, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %34
  %52 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %53 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %21, align 4
  br label %259

58:                                               ; preds = %34
  %59 = load %struct.fc_lport*, %struct.fc_lport** %16, align 8
  %60 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @LPORT_ST_READY, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load %struct.fc_lport*, %struct.fc_lport** %16, align 8
  %66 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64, %58
  %70 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %71 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %21, align 4
  br label %259

76:                                               ; preds = %64
  %77 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %78 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %79 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %78, i32 0, i32 4
  %80 = call i32 @test_bit(i32 %77, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %76
  %83 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %84 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %83, i32 0, i32 0
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %21, align 4
  br label %259

89:                                               ; preds = %76
  %90 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %91 = load i32, i32* @QEDF_ELS, align 4
  %92 = call %struct.qedf_ioreq* @qedf_alloc_cmd(%struct.qedf_rport* %90, i32 %91)
  store %struct.qedf_ioreq* %92, %struct.qedf_ioreq** %17, align 8
  %93 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %94 = icmp ne %struct.qedf_ioreq* %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %89
  %96 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %97 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* @QEDF_LOG_ELS, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %97, i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %21, align 4
  br label %259

103:                                              ; preds = %89
  %104 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %105 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %104, i32 0, i32 0
  %106 = load i32, i32* @QEDF_LOG_ELS, align 4
  %107 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %108 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %13, align 8
  %109 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %110 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %105, i32 %106, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), %struct.qedf_ioreq* %107, %struct.qedf_els_cb_arg* %108, i32 %111)
  %113 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %114 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %113, i32 0, i32 10
  store i32* null, i32** %114, align 8
  %115 = load i32, i32* @QEDF_ELS, align 4
  %116 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %117 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %116, i32 0, i32 9
  store i32 %115, i32* %117, align 8
  %118 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %119 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %120 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %119, i32 0, i32 8
  store %struct.qedf_rport* %118, %struct.qedf_rport** %120, align 8
  %121 = load void (%struct.qedf_els_cb_arg*)*, void (%struct.qedf_els_cb_arg*)** %12, align 8
  %122 = bitcast void (%struct.qedf_els_cb_arg*)* %121 to void (%struct.qedf_els_cb_arg.0*)*
  %123 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %124 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %123, i32 0, i32 0
  store void (%struct.qedf_els_cb_arg.0*)* %122, void (%struct.qedf_els_cb_arg.0*)** %124, align 8
  %125 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %126 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %13, align 8
  %127 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %126, i32 0, i32 1
  store %struct.qedf_ioreq* %125, %struct.qedf_ioreq** %127, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %13, align 8
  %130 = getelementptr inbounds %struct.qedf_els_cb_arg, %struct.qedf_els_cb_arg* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.qedf_els_cb_arg*, %struct.qedf_els_cb_arg** %13, align 8
  %132 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %133 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %132, i32 0, i32 4
  store %struct.qedf_els_cb_arg* %131, %struct.qedf_els_cb_arg** %133, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %136 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 8
  %137 = call i32 (...) @smp_processor_id()
  %138 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %139 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 4
  %140 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %141 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %140, i32 0, i32 5
  %142 = bitcast i32* %141 to %struct.qedf_mp_req*
  store %struct.qedf_mp_req* %142, %struct.qedf_mp_req** %18, align 8
  %143 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %144 = call i32 @qedf_init_mp_req(%struct.qedf_ioreq* %143)
  store i32 %144, i32* %21, align 4
  %145 = load i32, i32* %21, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %103
  %148 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %149 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %148, i32 0, i32 0
  %150 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %151 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %152 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %151, i32 0, i32 3
  %153 = load i32, i32* @qedf_release_cmd, align 4
  %154 = call i32 @kref_put(i32* %152, i32 %153)
  br label %259

155:                                              ; preds = %103
  store i32 0, i32* %21, align 4
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @ELS_LS_RJT, align 4
  %159 = icmp uge i32 %157, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @ELS_AUTH_ELS, align 4
  %163 = icmp ule i32 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %18, align 8
  %166 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i8*, i8** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @memcpy(i32 %167, i8* %168, i32 %169)
  br label %186

171:                                              ; preds = %160, %156
  %172 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %173 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %172, i32 0, i32 0
  %174 = load i32, i32* %9, align 4
  %175 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %173, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %174)
  %176 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %177 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %176, i32 0, i32 0
  store void (%struct.qedf_els_cb_arg.0*)* null, void (%struct.qedf_els_cb_arg.0*)** %177, align 8
  %178 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %179 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %178, i32 0, i32 4
  store %struct.qedf_els_cb_arg* null, %struct.qedf_els_cb_arg** %179, align 8
  %180 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %181 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %180, i32 0, i32 3
  %182 = load i32, i32* @qedf_release_cmd, align 4
  %183 = call i32 @kref_put(i32* %181, i32 %182)
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %21, align 4
  br label %186

186:                                              ; preds = %171, %164
  %187 = load i32, i32* %21, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  br label %259

190:                                              ; preds = %186
  %191 = load %struct.qedf_mp_req*, %struct.qedf_mp_req** %18, align 8
  %192 = getelementptr inbounds %struct.qedf_mp_req, %struct.qedf_mp_req* %191, i32 0, i32 0
  store %struct.fc_frame_header* %192, %struct.fc_frame_header** %19, align 8
  %193 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %194 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %193, i32 0, i32 3
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %22, align 4
  %199 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %200 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %23, align 4
  %202 = load %struct.fc_frame_header*, %struct.fc_frame_header** %19, align 8
  %203 = load i32, i32* @FC_RCTL_ELS_REQ, align 4
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* %23, align 4
  %206 = load i32, i32* @FC_TYPE_ELS, align 4
  %207 = load i32, i32* @FC_FC_FIRST_SEQ, align 4
  %208 = load i32, i32* @FC_FC_END_SEQ, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @FC_FC_SEQ_INIT, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @__fc_fill_fc_hdr(%struct.fc_frame_header* %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %211, i32 0)
  %213 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %214 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %24, align 4
  %216 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %217 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %216, i32 0, i32 0
  %218 = load i64, i64* %26, align 8
  %219 = call i32 @spin_lock_irqsave(i32* %217, i64 %218)
  %220 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %221 = call i64 @qedf_get_sqe_idx(%struct.qedf_rport* %220)
  store i64 %221, i64* %27, align 8
  %222 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %223 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %222, i32 0, i32 1
  %224 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %223, align 8
  %225 = load i64, i64* %27, align 8
  %226 = getelementptr inbounds %struct.fcoe_wqe, %struct.fcoe_wqe* %224, i64 %225
  store %struct.fcoe_wqe* %226, %struct.fcoe_wqe** %25, align 8
  %227 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %25, align 8
  %228 = call i32 @memset(%struct.fcoe_wqe* %227, i32 0, i32 4)
  %229 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %230 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %229, i32 0, i32 1
  %231 = load i32, i32* %24, align 4
  %232 = call %struct.e4_fcoe_task_context* @qedf_get_task_mem(i32* %230, i32 %231)
  store %struct.e4_fcoe_task_context* %232, %struct.e4_fcoe_task_context** %20, align 8
  %233 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %234 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %20, align 8
  %235 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %25, align 8
  %236 = call i32 @qedf_init_mp_task(%struct.qedf_ioreq* %233, %struct.e4_fcoe_task_context* %234, %struct.fcoe_wqe* %235)
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %190
  %240 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %241 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @qedf_cmd_timer_set(%struct.qedf_ctx* %240, %struct.qedf_ioreq* %241, i32 %242)
  br label %244

244:                                              ; preds = %239, %190
  %245 = load %struct.qedf_ctx*, %struct.qedf_ctx** %15, align 8
  %246 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %245, i32 0, i32 0
  %247 = load i32, i32* @QEDF_LOG_ELS, align 4
  %248 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %246, i32 %247, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %249 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %250 = call i32 @qedf_ring_doorbell(%struct.qedf_rport* %249)
  %251 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %252 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %17, align 8
  %253 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %252, i32 0, i32 1
  %254 = call i32 @set_bit(i32 %251, i32* %253)
  %255 = load %struct.qedf_rport*, %struct.qedf_rport** %8, align 8
  %256 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %255, i32 0, i32 0
  %257 = load i64, i64* %26, align 8
  %258 = call i32 @spin_unlock_irqrestore(i32* %256, i64 %257)
  br label %259

259:                                              ; preds = %244, %189, %147, %95, %82, %69, %51, %30
  %260 = load i32, i32* %21, align 4
  ret i32 %260
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, ...) #1

declare dso_local i32 @fc_remote_port_chkready(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.qedf_ioreq* @qedf_alloc_cmd(%struct.qedf_rport*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @qedf_init_mp_req(%struct.qedf_ioreq*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @__fc_fill_fc_hdr(%struct.fc_frame_header*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qedf_get_sqe_idx(%struct.qedf_rport*) #1

declare dso_local i32 @memset(%struct.fcoe_wqe*, i32, i32) #1

declare dso_local %struct.e4_fcoe_task_context* @qedf_get_task_mem(i32*, i32) #1

declare dso_local i32 @qedf_init_mp_task(%struct.qedf_ioreq*, %struct.e4_fcoe_task_context*, %struct.fcoe_wqe*) #1

declare dso_local i32 @qedf_cmd_timer_set(%struct.qedf_ctx*, %struct.qedf_ioreq*, i32) #1

declare dso_local i32 @qedf_ring_doorbell(%struct.qedf_rport*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
