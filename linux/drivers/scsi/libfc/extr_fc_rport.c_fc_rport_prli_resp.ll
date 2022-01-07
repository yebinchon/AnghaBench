; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_prli_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_prli_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc4_prov = type { i32 (%struct.fc_rport_priv*, i32, %struct.fc_els_spp*, %struct.fc_els_spp*)* }
%struct.fc_rport_priv = type { i64, i64, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fc_els_spp = type { i32, i64, i32 }
%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.anon = type { %struct.fc_els_prli, %struct.fc_els_spp }
%struct.fc_els_prli = type { i32 }
%struct.fc_els_ls_rjt = type { i32, i64 }

@FC_RPORT_ROLE_UNKNOWN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Received a PRLI %s\0A\00", align 1
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@RPORT_ST_PRLI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Received a PRLI response, but in state %s\0A\00", align 1
@ELS_LS_ACC = common dso_local global i64 0, align 8
@FC_EX_SEQ_ERR = common dso_local global i32 0, align 4
@FC_SPP_RESP_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"PRLI spp_flags = 0x%x spp_type 0x%x\0A\00", align 1
@FC_SPP_RESP_ACK = common dso_local global i32 0, align 4
@FC_SPP_RESP_CONF = common dso_local global i32 0, align 4
@FCP_SPPF_RETRY = common dso_local global i32 0, align 4
@FC_RP_FLAGS_RETRY = common dso_local global i32 0, align 4
@FCP_SPPF_CONF_COMPL = common dso_local global i32 0, align 4
@FC_RP_FLAGS_CONF_REQ = common dso_local global i32 0, align 4
@fc_passive_prov = common dso_local global %struct.fc4_prov** null, align 8
@FC_TYPE_FCP = common dso_local global i64 0, align 8
@FC_SPP_EST_IMG_PAIR = common dso_local global i32 0, align 4
@FCP_SPPF_TARG_FCN = common dso_local global i32 0, align 4
@FC_COS_CLASS3 = common dso_local global i32 0, align 4
@FCP_SPPF_INIT_FCN = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"PRLI bad response\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"PRLI ELS rejected, reason %x expl %x\0A\00", align 1
@FC_EX_ELS_RJT = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_rport_prli_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_prli_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.anon*, align 8
  %9 = alloca %struct.fc_els_spp, align 8
  %10 = alloca %struct.fc_els_ls_rjt*, align 8
  %11 = alloca %struct.fc4_prov*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %17, %struct.fc_rport_priv** %7, align 8
  %18 = load i8*, i8** @FC_RPORT_ROLE_UNKNOWN, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %21 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %22 = call i32 @fc_els_resp_type(%struct.fc_frame* %21)
  %23 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %25 = load i32, i32* @FC_EX_CLOSED, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.fc_frame* @ERR_PTR(i32 %26)
  %28 = icmp eq %struct.fc_frame* %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %259

30:                                               ; preds = %3
  %31 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %32 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %31, i32 0, i32 3
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %35 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RPORT_ST_PRLI, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %41 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %42 = call i32 @fc_rport_state(%struct.fc_rport_priv* %41)
  %43 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %45 = call i64 @IS_ERR(%struct.fc_frame* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %255

48:                                               ; preds = %39
  br label %252

49:                                               ; preds = %30
  %50 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %51 = call i64 @IS_ERR(%struct.fc_frame* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %55 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %56 = call i32 @PTR_ERR(%struct.fc_frame* %55)
  %57 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %54, i32 %56)
  br label %255

58:                                               ; preds = %49
  %59 = load i8*, i8** @FC_RPORT_ROLE_UNKNOWN, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %62 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %65 = call i64 @fc_frame_payload_op(%struct.fc_frame* %64)
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* @ELS_LS_ACC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %229

69:                                               ; preds = %58
  %70 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %71 = call i8* @fc_frame_payload_get(%struct.fc_frame* %70, i32 32)
  %72 = bitcast i8* %71 to %struct.anon*
  store %struct.anon* %72, %struct.anon** %8, align 8
  %73 = load %struct.anon*, %struct.anon** %8, align 8
  %74 = icmp ne %struct.anon* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %77 = load i32, i32* @FC_EX_SEQ_ERR, align 4
  %78 = sub nsw i32 0, %77
  %79 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %76, i32 %78)
  br label %252

80:                                               ; preds = %69
  %81 = load %struct.anon*, %struct.anon** %8, align 8
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FC_SPP_RESP_MASK, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %15, align 4
  %87 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %88 = load %struct.anon*, %struct.anon** %8, align 8
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.anon*, %struct.anon** %8, align 8
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %91, i64 %95)
  %97 = load %struct.anon*, %struct.anon** %8, align 8
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %102 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @FC_SPP_RESP_ACK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %80
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @FC_SPP_RESP_CONF, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %112 = load i32, i32* @FC_EX_SEQ_ERR, align 4
  %113 = sub nsw i32 0, %112
  %114 = call i32 @fc_rport_error(%struct.fc_rport_priv* %111, i32 %113)
  br label %120

115:                                              ; preds = %106
  %116 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %117 = load i32, i32* @FC_EX_SEQ_ERR, align 4
  %118 = sub nsw i32 0, %117
  %119 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %116, i32 %118)
  br label %120

120:                                              ; preds = %115, %110
  br label %252

121:                                              ; preds = %80
  %122 = load %struct.anon*, %struct.anon** %8, align 8
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.fc_els_prli, %struct.fc_els_prli* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = icmp ult i64 %126, 24
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %130 = load i32, i32* @FC_EX_SEQ_ERR, align 4
  %131 = sub nsw i32 0, %130
  %132 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %129, i32 %131)
  br label %252

133:                                              ; preds = %121
  %134 = load %struct.anon*, %struct.anon** %8, align 8
  %135 = getelementptr inbounds %struct.anon, %struct.anon* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ntohl(i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @FCP_SPPF_RETRY, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %133
  %144 = load i32, i32* @FC_RP_FLAGS_RETRY, align 4
  %145 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %146 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %133
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @FCP_SPPF_CONF_COMPL, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load i32, i32* @FC_RP_FLAGS_CONF_REQ, align 4
  %156 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %157 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %154, %149
  %161 = load %struct.fc4_prov**, %struct.fc4_prov*** @fc_passive_prov, align 8
  %162 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %163 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.fc4_prov*, %struct.fc4_prov** %161, i64 %164
  %166 = load %struct.fc4_prov*, %struct.fc4_prov** %165, align 8
  store %struct.fc4_prov* %166, %struct.fc4_prov** %11, align 8
  %167 = load %struct.fc4_prov*, %struct.fc4_prov** %11, align 8
  %168 = icmp ne %struct.fc4_prov* %167, null
  br i1 %168, label %169, label %182

169:                                              ; preds = %160
  %170 = call i32 @memset(%struct.fc_els_spp* %9, i32 0, i32 24)
  %171 = load %struct.fc4_prov*, %struct.fc4_prov** %11, align 8
  %172 = getelementptr inbounds %struct.fc4_prov, %struct.fc4_prov* %171, i32 0, i32 0
  %173 = load i32 (%struct.fc_rport_priv*, i32, %struct.fc_els_spp*, %struct.fc_els_spp*)*, i32 (%struct.fc_rport_priv*, i32, %struct.fc_els_spp*, %struct.fc_els_spp*)** %172, align 8
  %174 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %175 = load %struct.anon*, %struct.anon** %8, align 8
  %176 = getelementptr inbounds %struct.anon, %struct.anon* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.fc_els_prli, %struct.fc_els_prli* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.anon*, %struct.anon** %8, align 8
  %180 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 1
  %181 = call i32 %173(%struct.fc_rport_priv* %174, i32 %178, %struct.fc_els_spp* %180, %struct.fc_els_spp* %9)
  br label %182

182:                                              ; preds = %169, %160
  %183 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %184 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @FC_TYPE_FCP, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %196, label %188

188:                                              ; preds = %182
  %189 = load %struct.anon*, %struct.anon** %8, align 8
  %190 = getelementptr inbounds %struct.anon, %struct.anon* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.fc_els_spp, %struct.fc_els_spp* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @FC_SPP_EST_IMG_PAIR, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %188, %182
  %197 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %13, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %13, align 4
  br label %201

201:                                              ; preds = %196, %188
  %202 = load i32, i32* @FC_COS_CLASS3, align 4
  %203 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %204 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %203, i32 0, i32 5
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* @FCP_SPPF_INIT_FCN, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %201
  %210 = load i32, i32* @FC_RPORT_ROLE_FCP_INITIATOR, align 4
  %211 = load i32, i32* %12, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %12, align 4
  br label %213

213:                                              ; preds = %209, %201
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %220 = load i32, i32* %12, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %12, align 4
  br label %222

222:                                              ; preds = %218, %213
  %223 = load i32, i32* %12, align 4
  %224 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %225 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  store i32 %223, i32* %226, align 8
  %227 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %228 = call i32 @fc_rport_enter_rtv(%struct.fc_rport_priv* %227)
  br label %251

229:                                              ; preds = %58
  %230 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %231 = call i8* @fc_frame_payload_get(%struct.fc_frame* %230, i32 16)
  %232 = bitcast i8* %231 to %struct.fc_els_ls_rjt*
  store %struct.fc_els_ls_rjt* %232, %struct.fc_els_ls_rjt** %10, align 8
  %233 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %10, align 8
  %234 = icmp ne %struct.fc_els_ls_rjt* %233, null
  br i1 %234, label %238, label %235

235:                                              ; preds = %229
  %236 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %237 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %236, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %247

238:                                              ; preds = %229
  %239 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %240 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %10, align 8
  %241 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %10, align 8
  %244 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %239, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %242, i64 %245)
  br label %247

247:                                              ; preds = %238, %235
  %248 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %249 = load i32, i32* @FC_EX_ELS_RJT, align 4
  %250 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %248, i32 %249)
  br label %251

251:                                              ; preds = %247, %222
  br label %252

252:                                              ; preds = %251, %128, %120, %75, %48
  %253 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %254 = call i32 @fc_frame_free(%struct.fc_frame* %253)
  br label %255

255:                                              ; preds = %252, %53, %47
  %256 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %257 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %256, i32 0, i32 3
  %258 = call i32 @mutex_unlock(i32* %257)
  br label %259

259:                                              ; preds = %255, %29
  %260 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %261 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %260, i32 0, i32 2
  %262 = load i32, i32* @fc_rport_destroy, align 4
  %263 = call i32 @kref_put(i32* %261, i32 %262)
  ret void
}

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, ...) #1

declare dso_local i32 @fc_els_resp_type(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_error_retry(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @fc_rport_error(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memset(%struct.fc_els_spp*, i32, i32) #1

declare dso_local i32 @fc_rport_enter_rtv(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
